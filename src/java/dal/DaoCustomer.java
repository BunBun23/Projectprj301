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
import java.time.LocalDateTime;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customer;

/**
 *
 * @author hoang
 */
public class DaoCustomer extends DBContext {

    PreparedStatement ps = null;
    ResultSet rs = null;

    public Customer checkEmail(String email) {
        try {
            String query = "select * from Customer where Email = ?";
            //conn = new DBContext().
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()) {
                Customer a = new Customer();
                return a;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public boolean resetPassword(String email, String password) {
        try {
            String query = "UPDATE Account Set Password = ? where "
                    + "AccountID = (select AccountID from Customer where "
                    + "Email =?)";
            //conn = new DBContext().
            ps = conn.prepareStatement(query);
            ps.setString(1, password);
            ps.setString(2, email);
            rs = ps.executeQuery();
            return true;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public void addCustomer(Customer cus, String username) {

        try {
            int Account_id = -1;
            String query2 = "select AccountID from Account where Username = ?";
            PreparedStatement ps1 = conn.prepareStatement(query2);
            ps1.setString(1, username);
            ResultSet rsGetAccidByUser = ps1.executeQuery();
            while (rsGetAccidByUser.next()) {
                Account_id = rsGetAccidByUser.getInt(1);
            }
            String query3 = "insert into Customer (CustomerName,Email,Address,DOB,Phone,AccountID,Gender)\n"
                    + "  values (?,?,?,?,?,?,?)";
            PreparedStatement ps2 = conn.prepareStatement(query3);
            ps2.setString(1, cus.getCustomerName());
            ps2.setString(2, cus.getEmail());
            ps2.setString(3, cus.getEmail());
            ps2.setDate(4, cus.getDob());
            ps2.setString(5, cus.getPhone());
            ps2.setInt(6, Account_id);
            ps2.setInt(7, cus.getGender());
            ps2.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DaoCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void UpdateCustomerByUserName(String fullname, String email,
            String address, Date dob, String phone, int gender, String Username) {
        String sql = " update Customer set Customer.CustomerName = ?,"
                + "Customer.Email = ?,"
                + "Customer.Address = ?,"
                + "Customer.DOB= ?,"
                + "Customer.Phone = ?,"
                + "Customer.Gender = ?"
                + " from Customer join Account on Customer.AccountID=Account.AccountID where Account.Username like '" + Username + "'";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, fullname);
            pre.setString(2, email);
            pre.setString(3, address);
            pre.setDate(4, dob);
            pre.setString(5, phone);
            pre.setInt(6, gender);
            pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DaoCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void Feedback(String type, String detail, int CusID, String CusName) {
        LocalDateTime curDate = java.time.LocalDateTime.now();
        String date = curDate.toString();
        String sql = "insert into Feedback (CreateDate,Type,Detail,CustomerID,status,CustomerName) values (?,?,?,?,'waitting',?)";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, date);
            pre.setString(2, type);
            pre.setString(3, detail);
            pre.setInt(4, CusID);
            pre.setString(5, CusName);

            pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DaoCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ResultSet GetAccCusByUserName(String username) {
        try {
            String query = "select * from Customer join Account on Account.AccountID = Customer.AccountID where Account.Username like'?'";
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ResultSet rs1 = ps.executeQuery();
            return rs1;
        } catch (SQLException ex) {
            Logger.getLogger(DaoCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public ResultSet GetAllCustomer() {
        try {
            String query = "select * from Customer";
            ps = conn.prepareStatement(query);
            ResultSet rs1 = ps.executeQuery();
            return rs1;
        } catch (SQLException ex) {
            Logger.getLogger(DaoCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void changeStatus(int CustomerID){
        String sql = "update Customer set status = 0 where CustomerID = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, CustomerID);
            pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DaoCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public int getStatusByCustomerID(int CustomerID){
        String sql = "select status from Customer where CustomerID = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, CustomerID);
            ResultSet rs1 = pre.executeQuery();
            while (rs1.next()) {                
                return rs1.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DaoCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }
    
    

    public int GetCusIdByUsername(String username) {
        int cusID = 0;
        try {
            String query = "select CustomerID from Customer join Account on Account.AccountID = Customer.AccountID where Account.Username = ?";
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                cusID = rs.getInt(1);
            }
            return cusID;
        } catch (SQLException ex) {
            Logger.getLogger(DaoCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cusID;
    }

    public String GetCusNameByUsername(String username) {
        String cusname = "";
        try {
            String query = "select CustomerName from Customer join Account on Account.AccountID = Customer.AccountID where Account.Username = ?";
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                cusname = rs.getString(1);
            }
            return cusname;
        } catch (SQLException ex) {
            Logger.getLogger(DaoCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cusname;
    }

    public ResultSet GetAllFeedBackWatting() {
        try {
            String query = "select * from Feedback where status = 'waitting'";
            ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(DaoCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public ResultSet GetAllFeedBackChecked() {
        try {
            String query = "select top 6 * from Feedback where status = 'checked' order by FeedbackID DESC";
            ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(DaoCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static void main(String[] args) {
        DaoCustomer dao = new DaoCustomer();
        String Name = dao.GetCusNameByUsername("HaiDuong");
        System.out.println(Name);
    }

    public ResultSet GetFeedBackByID(int FeedBackId) {
        try {
            String query = "select * from Feedback where FeedbackID = ?";
            ps = conn.prepareStatement(query);
            ps.setInt(1, FeedBackId);
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(DaoCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void UpdateFeedback(int DocID,int FBID) {
        String sql = " UPDATE [dbo].[Feedback]\n"
                + "   SET [DoctorID] = ?\n"
                + "      ,[status] = 'checked'\n"
                + " WHERE FeedbackID = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, DocID);
            pre.setInt(2, FBID);
            pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DaoCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
