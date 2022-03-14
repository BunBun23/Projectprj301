/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.all;

import dal.DaoAccount;
import dal.DaoDoctor;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import util.Hashing;

/**
 *
 * @author admin
 */
@WebServlet(name = "login", urlPatterns = {"/login"})
public class LoginController extends HttpServlet {

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

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // b1: get user, pass tu cookie
        Cookie[] arr = request.getCookies();
        for (Cookie cookie : arr) {
            if (cookie.getName().equals("userC")) {
                request.setAttribute("name", cookie.getValue());
            }
            if (cookie.getName().equals("passC")) {
                request.setAttribute("pass", cookie.getValue());
            }
        }
        //b2 : set user, pass vao login form
        request.getRequestDispatcher("common/login.jsp").forward(request, response);
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
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        DaoAccount dao = new DaoAccount();
        Account acc = dao.login(username, Hashing.Encrypt(password));
        if (acc == null) {
            request.setAttribute("message", "Wrong username or password");
            request.getRequestDispatcher("common/login.jsp").forward(request, response);
        }
        else if (acc.getRole().equals("doctor") && dao.getStatusByUser(username)==0) {
            request.setAttribute("message", "This Account is Deactive!");
            request.getRequestDispatcher("common/login.jsp").forward(request, response);
        } 
        else if (acc.getRole().equals("customer") && dao.getStatusByUser(username)==0) {
            request.setAttribute("message", "This Account is Deactive!");
            request.getRequestDispatcher("common/login.jsp").forward(request, response);
        } 
        else if (acc.getRole().equals("admin")) {
            HttpSession session = request.getSession();
            session.setAttribute("acc", acc);
            request.getRequestDispatcher("ControllerHomeAdmin").forward(request, response);
        } 
        else if (acc.getRole().equals("customer")) {
            HttpSession session = request.getSession();
            Cookie u = new Cookie("userC", username);
            Cookie p = new Cookie("passC", password);
            u.setMaxAge(60 * 60);
            p.setMaxAge(60 * 60);
            // luu len trinh duyet
            response.addCookie(u);
            response.addCookie(p);
            session.setAttribute("username", username);
            session.setAttribute("password", password);
            session.setAttribute("acc", acc);
            request.getRequestDispatcher("home").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            session.setAttribute("password", password);
            session.setAttribute("acc", acc);
            session.setAttribute("username", username);
            request.getRequestDispatcher("homedoctor").forward(request, response);
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
