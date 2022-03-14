/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.Validate;
import dal.DaoAccount;
import dal.DaoCustomer;
import java.sql.Date;
import util.Hashing;
import model.Account;
import model.Customer;

/**
 *
 * @author Bun
 */
public class RegisterController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding(" UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String action = request.getParameter("action");
        DaoAccount daoAcc = new DaoAccount();
        DaoCustomer daoCus = new DaoCustomer();
        if (action == null) {
            request.getRequestDispatcher("common/register.jsp").forward(request, response);
        }
        if (action.equals("checkregister")) {
            String username = request.getParameter("username");
            String fullname = request.getParameter("fullname");
            String email = request.getParameter("email");
            String address = request.getParameter("address");
            Date DOB = Date.valueOf(request.getParameter("DOB"));
            String phone = request.getParameter("phone");
            int gender = Integer.parseInt(request.getParameter("Gender"));
            String socialID = request.getParameter("socialID");
            String password = request.getParameter("password");
            String repassword = request.getParameter("repassword");
            if (!password.equals(repassword)) {
                request.setAttribute("error", "Password incorrect!");
                request.getRequestDispatcher("common/register.jsp").forward(request, response);
            } else {
                if (Validate.checkUsername(username) == false) {
                    request.setAttribute("error", "Invalid username");
                    request.getRequestDispatcher("common/register.jsp").forward(request, response);
                } else if (Validate.checkPassword(password) == false) {
                    request.setAttribute("error", "Password needs to be at least 8 characters including uppercase and special characters!");
                    request.getRequestDispatcher("common/register.jsp").forward(request, response);
                } else {
                    Account a = daoAcc.checkAcc(username);
                    if (a != null) {
                        request.setAttribute("error", "Account already exists!");
                        request.getRequestDispatcher("common/register.jsp").forward(request, response);
                    } else {
                        daoAcc.registerAccCustomer(username, Hashing.Encrypt(password));
                        daoCus.addCustomer(new Customer(fullname, email, address, DOB, phone, gender, socialID), username);
                        request.setAttribute("success", "Sign Up Success!");
                        request.getRequestDispatcher("common/login.jsp").forward(request, response);
                    }
                }
            }
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
