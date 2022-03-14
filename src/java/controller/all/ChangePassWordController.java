/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.all;

import dal.DaoAccount;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import util.Hashing;
import util.Validate;

/**
 *
 * @author haipr
 */
@WebServlet(name = "ChangePassWordController", urlPatterns = {"/changepass"})
public class ChangePassWordController extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

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
        request.getRequestDispatcher("common/changepassword.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        String password = (String) session.getAttribute("password");
        String oldpassword = request.getParameter("oldpassword");
        String newpassword = request.getParameter("newpassword");
        String repassword = request.getParameter("repassword");
        DaoAccount daoAcc = new DaoAccount();
        if (oldpassword.equals(password)) {
            if (!newpassword.equals(repassword)) {
                request.setAttribute("error", "Password incorrect!");
                request.getRequestDispatcher("common/changepassword.jsp").forward(request, response);
            } else {
                if (Validate.checkPassword(newpassword) == false) {
                    request.setAttribute("error", "Password needs to be at least 8 characters including uppercase and special characters!");
                    request.getRequestDispatcher("common/changepassword.jsp").forward(request, response);
                } else {
                    request.setAttribute("success", "Change PassWord Success!");
                    daoAcc.UpdateAccountPass( Hashing.Encrypt(newpassword) , username);
                     request.getRequestDispatcher("common/login.jsp").forward(request, response);
                }
            }
        }else if(!oldpassword.equals(password)){
                request.setAttribute("error1", "Old Password incorrect!");
                request.getRequestDispatcher("common/changepassword.jsp").forward(request, response);
            }

    
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
