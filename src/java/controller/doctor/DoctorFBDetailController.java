/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.doctor;

import dal.DaoCustomer;
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

/**
 *
 * @author haipr
 */
@WebServlet(name = "DoctorFBDetailController", urlPatterns = {"/doctorfeedbackdetail"})
public class DoctorFBDetailController extends HttpServlet {

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
            String submit = request.getParameter("submit");
            String FeedBackId = request.getParameter("feedbackid");
            if (submit == null) {
                DaoCustomer dao = new DaoCustomer();
                ResultSet rsGetFeedBack = dao.GetFeedBackByID(Integer.parseInt(FeedBackId));
                request.setAttribute("rsGetFeedBack", rsGetFeedBack);
                request.setAttribute("FeedBackId", FeedBackId);
                request.getRequestDispatcher("doctor/feedbackdetail.jsp").forward(request, response);
            } else {
                int FeedId = Integer.parseInt(request.getParameter("fedid"));
                HttpSession session = request.getSession();
                String username = (String) session.getAttribute("username");
                DaoDoctor dao = new DaoDoctor();
                int DocID = dao.GetDocIDByUserName(username);
                DaoCustomer daocus = new DaoCustomer();
                daocus.UpdateFeedback(DocID, FeedId);
                response.sendRedirect("doctorfeedback");
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
