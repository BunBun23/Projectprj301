/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customer;

/**
 *
 * @author hoang
 */
public class DaoReservation extends DBContext {

    PreparedStatement ps = null;
    ResultSet rs = null;

    public String getLatestReservationStatus(int id) {
        String sql = "Select Top 1 Status from Reservation where CustomerId = ?"
                + " Order by BookingDate desc";
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                String status = rs.getString("Status");
                return status;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void createReservation(Date date, int slot, int cus, int vaccineId) {
        String sql = "Insert into Reservation (VaccineId, BookingDate, SlotID, Status, CustomerId)"
                + " values (?,?, ?, 'Pending', ?)";
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, vaccineId);
            ps.setDate(2, date);
            ps.setInt(3, slot);
            ps.setInt(4, cus);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public int getNumberOfSuccessfulReservation() {
        String sql = "SELECT COUNT(reservationId)\n"
                + "from Reservation\n"
                + "where Status = 'Success'";
        try {
            int numberOfSuccessfullReservation = 0;
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                numberOfSuccessfullReservation=  rs.getInt(1);
            }
            conn.close();
            return numberOfSuccessfullReservation;
        } catch (SQLException ex) {
            Logger.getLogger(DaoDoctor.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
    
    

    public static void main(String[] args) {
        DaoReservation dao = new DaoReservation();
        Customer cus = new Customer();
        cus.setCustomerID(2);
        Date date = Date.valueOf("2022-02-20");
        boolean f = dao.getLatestReservationStatus(2) == "Pending";
        //System.out.println(dao.getTimeBetweenEachDose(105));
    }

}
