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
import model.Doctor;

/**
 *
 * @author a
 */
public class DaoDoctor extends DBContext {

    public ResultSet GetAllDoctor() {
        try {
            //mo ket noi
            String sql = "select * from Doctor";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (Exception ex) {
            Logger.getLogger(DaoDoctor.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void UpdateDoctorByUserName(String information, String phone, int exp_Year, int gender, String email, String name, String address, String Username) {
        String sql = " update Doctor SET [Information] = ?\n"
                + "      ,[Phone] = ?\n"
                + "      ,[Exp_year] = ?\n"
                + "      ,[Gender] = ?\n"
                + "      ,[Email] = ?\n"
                + "      ,[Name] = ?\n" 
                + "      ,[Address] = ?"
                + " select * from Doctor join Account on Account.AccountID = Doctor.AccountID where Account.Username = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, information);
            pre.setString(2, phone);
            pre.setInt(3, exp_Year);
            pre.setInt(4, gender);
            pre.setString(5, email);
            pre.setString(6, name);
            pre.setString(7, address);
            pre.setString(8, Username);
            pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DaoCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ResultSet GetAccDocByUserName(String username) {
        try {
            PreparedStatement ps = null;
            ResultSet rs = null;
            String query = "select * from Doctor join Account on Account.AccountID = Doctor.AccountID where Account.Username = ?";
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(DaoCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void addDoctor(Doctor doc, int AccountID) {
        String sql = "insert into Doctor (Name,Email,Phone,Address,Gender,AccountID,Exp_year,Information) values (?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, doc.getName());
            pre.setString(2, doc.getEmail());
            pre.setString(3, doc.getPhone());
            pre.setString(4, doc.getAddress());
            pre.setShort(5, doc.getGender());
            pre.setInt(6, AccountID);
            pre.setInt(7, doc.getExp_Year());
            pre.setString(8, doc.getInformation());
            pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DaoDoctor.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteDoctor(int DoctorID) {
        try {
            String sql = "delete from Doctor where DoctorID = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, DoctorID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DaoDoctor.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ResultSet GetDoctorByID(int DoctorID) {
        try {
            String sql = "select * from Doctor where DoctorID = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, DoctorID);
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (Exception ex) {
            Logger.getLogger(DaoDoctor.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int GetAccountIDByDoctorID(int DoctorID) {
        try {
            String sql = "select AccountID from Doctor where DoctorID = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, DoctorID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            Logger.getLogger(DaoDoctor.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public void updateDoctor(Doctor doc, int DoctorID) {
        String sql = "update Doctor set Information = ? , Phone = ? , Exp_year = ?, Gender= ? , Email = ? , Name = ? , Address = ?  where DoctorID = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, doc.getInformation());
            pre.setString(2, doc.getPhone());
            pre.setInt(3, doc.getExp_Year());
            pre.setShort(4, doc.getGender());
            pre.setString(5, doc.getEmail());
            pre.setString(6, doc.getName());
            pre.setString(7, doc.getAddress());
            pre.setInt(8, DoctorID);
            pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DaoDoctor.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
        DaoDoctor dao = new DaoDoctor();
        ResultSet rs = dao.GetAccDocByUserName("DrChinh");
        System.out.println(rs);
    }
}
