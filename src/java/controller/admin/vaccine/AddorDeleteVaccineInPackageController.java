/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin.vaccine;

import dal.DaoPackageDetail;
import dal.DaoVaccinePackage;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.PackageDetail;
import model.VaccinePackage;

/**
 *
 * @author a
 */
@WebServlet(name = "AddorDeleteVaccineInPackageController", urlPatterns = {"/AddorDeleteVaccineInPackageController"})
public class AddorDeleteVaccineInPackageController extends HttpServlet {

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
            DaoVaccinePackage daoVaxPac = new DaoVaccinePackage();
            DaoPackageDetail daoPackDetail = new DaoPackageDetail();
            String submit = request.getParameter("submit");
            if (submit == null) {
                String PackageID = request.getParameter("PackageID");
                String PackageName = daoVaxPac.GetPackageNameByID(Integer.parseInt(PackageID));
                String packageDetail = daoVaxPac.GetPackageDetailByID(Integer.parseInt(PackageID));
//                ResultSet rsGetAllVaccineWithoutPackage = daoVaxPac.GetAllVaccineWithoutPackage(Integer.parseInt(PackageID));
                ResultSet rsget1 = daoVaxPac.getAllVaccine();
                ResultSet rsget2 = daoVaxPac.GetVaccineInPackage(Integer.parseInt(PackageID));
                
//                request.setAttribute("rsGetAllVaccineWithoutPackage", rsGetAllVaccineWithoutPackage);
                request.setAttribute("rsget1", rsget1);
                request.setAttribute("rsget2", rsget2);
                request.setAttribute("PackageID", PackageID);
                request.setAttribute("PackageName", PackageName);
                request.setAttribute("packageDetail", packageDetail);
                request.getRequestDispatcher("admin/addorDeleteVaccineInPackage.jsp").forward(request, response);
            } else {
                String packageID = request.getParameter("packageID");
                String packageName = request.getParameter("packageName");
                String packageDetail = request.getParameter("packageDetail");
                
                String[] VaccineList = request.getParameterValues("VaccineList");
                daoVaxPac.addVaccinePackage(new VaccinePackage(Integer.parseInt(packageID), packageName, packageDetail, daoVaxPac.totalPrice(VaccineList)));
                for (String item : VaccineList) {
                    daoPackDetail.addPackageDetail(new PackageDetail(Integer.parseInt(item), Integer.parseInt(packageID)));
                }
                response.sendRedirect("ControllerPackageDetail?PackageID="+packageID+"");
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
