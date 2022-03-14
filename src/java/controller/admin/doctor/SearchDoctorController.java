/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin.doctor;

import dal.DaoDoctor;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author a
 */
@WebServlet(name = "SearchDoctorController", urlPatterns = {"/SearchDoctorController"})
public class SearchDoctorController extends HttpServlet {

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
            request.setCharacterEncoding("UTF-8");
            String nameSearch = request.getParameter("nameSearch");
            DaoDoctor daoDoc = new DaoDoctor();
            ResultSet rsGetDoctorByName = daoDoc.SearchDocByName(nameSearch);
            while (rsGetDoctorByName.next()) {
                if (rsGetDoctorByName.getInt(12) != 0 || rsGetDoctorByName.getString(12) == null) {
                    out.println("<div class=\"col-md-4 col-sm-4  col-lg-3\" >\n"
                            + "                    <div class=\"profile-widget\" >\n"
                            + "                        <div class=\"doctor-img\">\n"
                            + "                            <a class=\"avatar\" href=\"ProfileDoctorController?DoctorID=" + rsGetDoctorByName.getString(1) + "\"><img alt=\"\" src=\"admin/assets/img/doctor-thumb-03.jpg\"></a>\n"
                            + "                        </div>\n"
                            + "                        <div class=\"dropdown profile-action\">\n"
                            + "                            <a href=\"#\" class=\"action-icon dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><i class=\"fa fa-ellipsis-v\"></i></a>\n"
                            + "                            <div class=\"dropdown-menu dropdown-menu-right\">\n"
                            + "                                <a class=\"dropdown-item\" href=\"ControllerEditDoctor?DoctorID=" + rsGetDoctorByName.getString(1) + "\"><i class=\"fa fa-pencil m-r-5\"></i> Edit</a>\n"
                            + "                                <a class=\"dropdown-item\" href=\"ControllerDeactiveDoctor?DoctorID=" + rsGetDoctorByName.getString(1) + "&AccountID=" + rsGetDoctorByName.getString(9) + "\"><i class=\"fa fa-trash-o m-r-5\"></i> Deactive</a>\n"
                            + "                            </div>\n"
                            + "                        </div>\n"
                            + "                        <h4 class=\"doctor-name text-ellipsis\"><a href=\"ProfileDoctorController?DoctorID=" + rsGetDoctorByName.getString(1) + "\">" + rsGetDoctorByName.getString(7) + "</a></h4>\n"
                            + "                        <div class=\"doc-prof\" style=\"font-size: 15px\">" + rsGetDoctorByName.getString(6) + "</div>\n"
                            + "                        <div class=\"user-country\">\n"
                            + "                            <i class=\"fa fa-map-marker\"></i> " + rsGetDoctorByName.getString(8) + "\n"
                            + "                        </div>\n"
                            + "                    </div>\n"
                            + "                </div>");

                }
            }

        } catch (SQLException ex) {
            Logger.getLogger(SearchDoctorController.class.getName()).log(Level.SEVERE, null, ex);
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




