/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin.vaccine;

import dal.DaoVaccinePackage;
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
 * @author a
 */
@WebServlet(name = "ControllerPackageDetail", urlPatterns = {"/ControllerPackageDetail"})
public class PackageDetailController extends HttpServlet {

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
            DaoVaccinePackage daoVaxPack = new DaoVaccinePackage();
            String submit = request.getParameter("submit");
            if (submit == null) { 
                String PackageID = request.getParameter("PackageID");
                ResultSet rsGetVaccineInPackage = daoVaxPack.GetVaccineInPackage(Integer.parseInt(PackageID));
                request.setAttribute("PackageID", PackageID);
                request.setAttribute("rsGetVaccineInPackage", rsGetVaccineInPackage);
                request.setAttribute("packName", daoVaxPack.GetPackageNameByID(Integer.parseInt(PackageID)));
                request.getRequestDispatcher("admin/packageDetail.jsp").forward(request, response);
            } else {
//                //code update here
//                String vaccineID = request.getParameter("vaccineID");
//                String vaccineName = request.getParameter("vaccineName");
//                String vaccinePrice = request.getParameter("vaccinePrice");
//                String vaccineOrigin = request.getParameter("vaccineOrigin");
//                String vaccineDetail = request.getParameter("vaccineDetail");
//                String image = request.getParameter("image");
//                String status = request.getParameter("status");
//
////                if (pid.length() > 30 || pname.length() > 100 || image.length() > 100) {
////                    response.sendRedirect("ControllerManagement?action=updatePro&pid=" + pid + "");
////                } else if (Integer.parseInt(quantity) < 0 || Double.parseDouble(price) < 0 || quantity == "" || price == "") {
////                    response.sendRedirect("ControllerManagement?action=updatePro&pid=" + pid + "");
////                } else if (pid.equals("") || pid == null || pname.equals("") || pname == null || image.equals("")
////                        || image == null || des.equals("") || des == null) {
////                    response.sendRedirect("ControllerManagement?action=updatePro&pid=" + pid + "");
////                } else {
//                daoVax.updateVaccine(new Vaccine(vaccineName, Float.parseFloat(vaccinePrice), vaccineOrigin, vaccineDetail, image),Integer.parseInt(vaccineID));
//                request.getRequestDispatcher("ControllerListVaccine").forward(request, response);
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
