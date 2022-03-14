/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.all;

import dal.DaoVaccine;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Vaccine;

/**
 *
 * @author haipr
 */
public class VaccinePageController extends HttpServlet {

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
        DaoVaccine vaccineDAO = new DaoVaccine();
        String indexpage = request.getParameter("index");
        if (indexpage == null) {
            indexpage = "1";
        }
        int index = Integer.parseInt(indexpage);
        int totalvaccine = vaccineDAO.totalvaccines();
        int endp = totalvaccine / 20;
        if (totalvaccine % 20 != 0) {
            endp++;
        }
        ResultSet rslistvaccine = vaccineDAO.getAllPaging(index);
        request.setAttribute("url", "vaccine?");
        request.setAttribute("rslistvaccine", rslistvaccine);
        request.setAttribute("endp", endp);
        request.setAttribute("index", index);
        request.getRequestDispatcher("common/vaccinepage.jsp").forward(request, response);
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
        DaoVaccine vaccineDAO = new DaoVaccine();
        String indexpage = request.getParameter("index");
        String txt = request.getParameter("txtsearch");
        if (indexpage == null) {
            indexpage = "1";
        }
        int index = Integer.parseInt(indexpage);
        int totalvaccine = vaccineDAO.totalvaccines();
        int endp = totalvaccine / 20;
        if (totalvaccine % 20 != 0) {
            endp++;
        }
        ResultSet rslistvaccine = vaccineDAO.getAllByText(txt);
        request.setAttribute("url", "vaccine?");
        request.setAttribute("rslistvaccine", rslistvaccine);
        request.setAttribute("endp", endp);
        request.setAttribute("index", index);
        request.getRequestDispatcher("common/vaccinepage.jsp").forward(request, response);
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
