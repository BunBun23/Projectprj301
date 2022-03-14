/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.doctor;

import dal.DaoAccount;
import dal.DaoDoctor;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Doctor;

/**
 *
 * @author haipr
 */
@WebServlet(name = "ChangeProfileDoctorController", urlPatterns = {"/doctorpf"})
public class ChangeProfileDoctorController extends HttpServlet {

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
        DaoDoctor dao = new DaoDoctor();
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        ResultSet rsGetDoctorByName = dao.GetAccDocByUserName(username);
        request.setAttribute("rsGetDoctorByName", rsGetDoctorByName);
        request.getRequestDispatcher("doctor/changedoctorprofile.jsp").forward(request, response);
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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        DaoDoctor dao = new DaoDoctor();
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        String docName = request.getParameter("docName");
        String docPhone = request.getParameter("docPhone");
        String email = request.getParameter("email");
        int gender = Integer.parseInt(request.getParameter("gender"));
        int expYear = Integer.parseInt(request.getParameter("expYear"));
        String address = request.getParameter("address");
        String information = request.getParameter("information");
        dao.UpdateDoctorByUserName(information, docPhone, expYear, gender, email, docName, address, username);
        response.sendRedirect("doctorpf");
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
