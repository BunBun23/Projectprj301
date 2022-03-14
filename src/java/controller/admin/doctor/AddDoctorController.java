/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin.doctor;

import dal.DaoAccount;
import dal.DaoDoctor;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Doctor;
import util.Hashing;

/**
 *
 * @author a
 */
@WebServlet(name = "ControllerAddDoctor", urlPatterns = {"/ControllerAddDoctor"})
public class AddDoctorController extends HttpServlet {

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
            DaoDoctor daoDoc = new DaoDoctor();
            DaoAccount daoAcc = new DaoAccount();
            String submit = request.getParameter("submit");
            if (submit == null) {
                request.getRequestDispatcher("admin/addDoctor.jsp").forward(request, response);
            } else {
                String docName = request.getParameter("docName");
                String docPhone = request.getParameter("docPhone");
                String username = request.getParameter("username");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String confirmPass = request.getParameter("confirmPass");
                String dob = request.getParameter("dob");
                short gender = Short.parseShort(request.getParameter("gender"));
                int expYear = Integer.parseInt(request.getParameter("expYear"));
                String avatar = request.getParameter("avatar");
                String address = request.getParameter("address");
                String information = request.getParameter("information");
                

////                    if (daoVax.checkduplicateID(pid) == false) {
////                        response.sendRedirect("ControllerManagement?action=insertPro");
////                    } else if (pid.length() > 30 || pname.length() > 100 || image.length() > 100) {
////                        response.sendRedirect("ControllerManagement?action=insertPro");
////                    } else if (Integer.parseInt(quantity) < 0 || Double.parseDouble(price) < 0) {
////                        response.sendRedirect("ControllerManagement?action=insertPro");
////                    } else if (pid.equals("") || pid == null || pname.equals("") || pname == null || image.equals("")
////                            || image == null || des.equals("") || des == null) {
////                        response.sendRedirect("ControllerManagement?action=insertPro");
////                    } else {
                daoAcc.registerAccDoctor(username, Hashing.Encrypt(password));
                daoDoc.addDoctor(new Doctor(information, docPhone, expYear, gender, email, docName,address),daoAcc.getAccountIdByUserName(username));
                request.getRequestDispatcher("ControllerListDoctor").forward(request, response);
////                    }
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
