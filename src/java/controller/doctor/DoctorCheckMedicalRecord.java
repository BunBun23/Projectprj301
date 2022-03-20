/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.doctor;

import dal.DaoCustomer;
import dal.DaoReservation;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author haipr
 */
@WebServlet(name = "DoctorCheckMedicalRecord", urlPatterns = {"/doctorcheckmedicalrecord"})
public class DoctorCheckMedicalRecord extends HttpServlet {

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
        int vaccineid = Integer.parseInt(request.getParameter("vaccineid"));
        int customerid = Integer.parseInt(request.getParameter("customerid"));
        DaoCustomer dao = new DaoCustomer();
        DaoReservation dao1 = new DaoReservation();
        ResultSet rsgetvaccinerecord = dao1.GetVaccineDetailByVaccineIdCusId(vaccineid, customerid);
        request.setAttribute("rsgetvaccinerecord", rsgetvaccinerecord);
        request.getRequestDispatcher("doctor/checkreservation.jsp").forward(request, response);
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
        DaoReservation dao =new DaoReservation();
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        int vacid = Integer.parseInt(request.getParameter("vacid")); 
        int cusid = Integer.parseInt(request.getParameter("cusid")); 
        String cusname = request.getParameter("cusname");
        String status = request.getParameter("status");
        String detail = request.getParameter("doctorleavedetail");
        dao.UpdateReservationByDoctor(vacid,cusid,status,detail);
        response.sendRedirect("doctorviewdetailmedicalrecord?username="+cusname);
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
