/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Account;

/**
 *
 * @author Bun
 */
public class DaoAccount extends DBContect {

    PreparedStatement ps = null;
    ResultSet rs = null;

    public Account checkAcc(String username) {
        try {
            String query = "select * from Account where Username = ?";
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account(rs.getString(2), rs.getString(3), rs.getString(4));
                return a;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void register(String username, String fullname, String email, String address, Date DOB, int phone, String password) {
        try {
            int Account_id = 0;
            String query = "insert into Account values(?,?,'customer')";
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.executeUpdate();

            String query2 = "select top 1 AccountID from Account order by AccountID desc";
            ps = conn.prepareStatement(query2);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account_id = rs.getInt(1);
            }

            String query3 = "insert into Customer values(?,?,?,'0',?,?,?)";
            ps = conn.prepareStatement(query3);
            ps.setString(1, fullname);
            ps.setString(2, email);
            ps.setString(3, address);
            ps.setDate(4, DOB);
            ps.setInt(5, phone);
            ps.setInt(6, Account_id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Account loginAdmin(String user, String pass) {
        String query = "select * from Account where Username = ? and Password = ? and role = 'admin'";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account loginCus(String user, String pass) {
        String query = "select * from Account where Username = ? and Password = ? and role = 'customer'";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account loginDoctor(String user, String pass) {
        String query = "select * from Account where Username = ? and Password = ? and role = 'doctor'";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
}
        } catch (Exception e) {
        }
        return null;
    }
}
