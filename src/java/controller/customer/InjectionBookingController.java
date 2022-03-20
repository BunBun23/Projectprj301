/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.customer;

import dal.DaoCustomer;
import dal.DaoPackageDetail;
import dal.DaoReservation;
import dal.DaoSlot;
import dal.DaoVaccine;
import dal.DaoVaccinePackage;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Customer;
import model.Slot;
import model.Vaccine;
import model.VaccinePackage;
import util.DateUtils;

/**
 *
 * @author hoang
 */
@WebServlet(name = "InjectionBookingController", urlPatterns = {"/injection-booking"})
public class InjectionBookingController extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet InjectionBookingController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InjectionBookingController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        DaoVaccine daoVaccine = new DaoVaccine();
        DaoVaccinePackage daoPackage = new DaoVaccinePackage();
        DaoSlot daoSlot = new DaoSlot();

        List<Vaccine> vaccineList = new ArrayList<>();
        List<VaccinePackage> packageList = new ArrayList<>();
        List<Slot> slotList = new ArrayList<>();
        vaccineList = daoVaccine.getListAllVaccine();
        packageList = daoPackage.getAllListVaccinePackage();
        slotList = daoSlot.getAllSlot();

        request.setAttribute("listVaccine", vaccineList);
        request.setAttribute("listPackage", packageList);
        request.setAttribute("listSlot", slotList);
        request.getRequestDispatcher("customer/injectionBooking.jsp").forward(request, response);
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
        DaoReservation resDao = new DaoReservation();
        DaoCustomer cusDao = new DaoCustomer();
        DaoVaccinePackage packageDao = new DaoVaccinePackage();
        DaoPackageDetail packageDetailDao = new DaoPackageDetail();
        HttpSession session = request.getSession();
        String accUsername = (String) session.getAttribute("username");
        int userId = cusDao.findUserIdByUsername(accUsername);

        try {
            //option nguoi dung
            String customer = request.getParameter("customer");
            if (customer.equals("self")) {
                String latestInjectionStatus = resDao.getLatestReservationStatus(userId);
                if (latestInjectionStatus.equalsIgnoreCase("Pending") || latestInjectionStatus.equalsIgnoreCase("Fail")) {
                    request.setAttribute("anounce", "This customer's last reservation has not been finished, please finish it before making a new reservation. Or you can change reservation schedule");
                    request.setAttribute("advice", "here");
                    request.setAttribute("link", "https://www.google.com/");
                    request.getRequestDispatcher("customer/injectionBooking.jsp").forward(request, response);
                }
                Date date = Date.valueOf(request.getParameter("date"));
                int slot = Integer.parseInt(request.getParameter("slot"));
                String productType = request.getParameter("product");

                if (productType.equals("single")) {
                    int productId = Integer.parseInt(request.getParameter("listVaccine"));
                    
                    resDao.createReservation(date, slot, userId, productId);
                    request.setAttribute("anounce", "Reservation reserved");
                    request.getRequestDispatcher("customer/injectionBooking.jsp").forward(request, response);

                } else if (productType.equals("package")) {
                    int productId = Integer.parseInt(request.getParameter("listPackage"));
                    int numberOfDoses = packageDao.getNumberOfDoseInPackage(productId);
                    int timeBetweenEachDose = packageDao.getTimeBetweenEachDose(productId);
                    List listVaccineId = packageDetailDao.getListVaccineIdInPackage(productId);
                    DateUtils nextDate = new DateUtils();
                    int vaccineId = 0;
                    for(int i = 0; i < numberOfDoses; i++ ){
                        vaccineId = Integer.parseInt(listVaccineId.get(i).toString());
                        resDao.createReservation(date, slot, userId, vaccineId);
                        date = nextDate.addDate(date, timeBetweenEachDose);
                    }
                    request.setAttribute("anounce", "Reservation reserved");
                    request.getRequestDispatcher("customer/injectionBooking.jsp").forward(request, response);
                }

            } else /// nguoi than
            {
                String customerName = request.getParameter("name");
                String address = request.getParameter("address");
                Date dob = Date.valueOf(request.getParameter("dob"));
                String genderRadio = request.getParameter("gender");
                int gender;
                if (genderRadio == null) {
                    gender = 0;
                } else {
                    gender = 1;
                }
                Date date = Date.valueOf(request.getParameter("date"));
                int slot = Integer.parseInt(request.getParameter("slot"));
                String phoneNumb = request.getParameter("phone");
                String socialId = request.getParameter("socialId");
                String productType = request.getParameter("product");
                int relativeUserId = cusDao.getUserIdBySocialId(socialId);

                if (relativeUserId != -1) {
                    String latestInjectionStatus = resDao.getLatestReservationStatus(relativeUserId);
                    if (latestInjectionStatus.equalsIgnoreCase("Pending") || latestInjectionStatus.equalsIgnoreCase("Fail")) {
                        request.setAttribute("anounce", "Your last reservation has not been finished, please finish it before making a new reservation. Or you can change reservation schedule");
                        request.setAttribute("advice", "here");
                        request.setAttribute("link", "https://www.google.com/");
                        request.getRequestDispatcher("customer/injectionBooking.jsp").forward(request, response);
                    }
                    
                    //resDao.createReservation(date, slot, relativeUserId);
                    if (productType.equals("single")) {
                        int productId = Integer.parseInt(request.getParameter("listVaccine"));

                        resDao.createReservation(date, slot, relativeUserId, productId);
                        request.setAttribute("anounce", "Reservation reserved");
                        request.getRequestDispatcher("customer/injectionBooking.jsp").forward(request, response);

                    } else if (productType.equals("package")) {
                        int productId = Integer.parseInt(request.getParameter("listPackage"));
                        int numberOfDoses = packageDao.getNumberOfDoseInPackage(productId);
                        int timeBetweenEachDose = packageDao.getTimeBetweenEachDose(productId);
                        List listVaccineId = packageDetailDao.getListVaccineIdInPackage(productId);
                        DateUtils nextDate = new DateUtils();
                        int vaccineId = 0;
                        for (int i = 0; i < numberOfDoses; i++) {
                            vaccineId = Integer.parseInt(listVaccineId.get(i).toString());
                            resDao.createReservation(date, slot, relativeUserId, vaccineId);
                            date = nextDate.addDate(date, timeBetweenEachDose);
                        }
                        request.setAttribute("anounce", "Reservation reserved");
                        request.getRequestDispatcher("customer/injectionBooking.jsp").forward(request, response);
                    }
                }
                //New customer
                Customer newCustomer = new Customer(customerName, address, dob, phoneNumb, gender, socialId, userId);
                cusDao.addCustomerWithNoAccount(newCustomer);
                relativeUserId = cusDao.getUserIdBySocialId(socialId);

                if (productType.equals("single")) {
                        int productId = Integer.parseInt(request.getParameter("listVaccine"));

                        resDao.createReservation(date, slot, relativeUserId, productId);
                        request.setAttribute("anounce", "Reservation reserved");
                        request.getRequestDispatcher("customer/injectionBooking.jsp").forward(request, response);

                    } else if (productType.equals("package")) {
                        int productId = Integer.parseInt(request.getParameter("listPackage"));
                        int numberOfDoses = packageDao.getNumberOfDoseInPackage(productId);
                        int timeBetweenEachDose = packageDao.getTimeBetweenEachDose(productId);
                        List listVaccineId = packageDetailDao.getListVaccineIdInPackage(productId);
                        DateUtils nextDate = new DateUtils();
                        int vaccineId = 0;
                        for (int i = 0; i < numberOfDoses; i++) {
                            vaccineId = Integer.parseInt(listVaccineId.get(i).toString());
                            resDao.createReservation(date, slot, relativeUserId, vaccineId);
                            date = nextDate.addDate(date, timeBetweenEachDose);
                        }
                        request.setAttribute("anounce", "Reservation reserved");
                        request.getRequestDispatcher("customer/injectionBooking.jsp").forward(request, response);
                    }
            }

        } catch (Exception e) {
            System.out.println(e);
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
