/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.all;

import dal.DaoVaccine;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.ListPackage;

/**
 *
 * @author admin
 */
@WebServlet(name = "PackageController", urlPatterns = {"/listPackage"})
public class PackageController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            DaoVaccine daoVaccine = new DaoVaccine();
            ArrayList<ListPackage> listPackages = new ArrayList<ListPackage>();
            listPackages = daoVaccine.getListPackage();
            ArrayList<String> detaillist = new ArrayList<>();
            ArrayList<String> listID = new ArrayList<>();
            for (int i = 0; i < listPackages.size(); i++) {
                detaillist.add(listPackages.get(i).getPackageDetail());
            }
            // loai bo phan tu giong nhau
            Set<String> set = new LinkedHashSet<String>(detaillist);
            // listWithoutDuplicateElements su dung set
            List<String> list = new ArrayList<String>(set);
            request.setAttribute("listPack", listPackages);
            request.setAttribute("list", list);
            request.getRequestDispatcher("common/listPackage.jsp").forward(request, response);
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
