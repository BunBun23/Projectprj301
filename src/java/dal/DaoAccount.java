/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

/**
 *
 * @author Bun
 */
public class DaoAccount extends DBContext {

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
            Logger.getLogger(DaoAccount.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

    public void registerAccDoctor(String username, String password) {
        try {
            String query = "insert into Account(Username,Password,role) values(?,?,'doctor')";
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.executeUpdate();
        } catch (Exception e) {
            Logger.getLogger(DaoAccount.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public ResultSet GetAccByUserName(String username) {
        try {
            String query = "select * from Customer join Account on Account.AccountID = Customer.AccountID where Account.Username = ?";
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            return rs;
        } catch (SQLException e) {
        }
        return null;
    }
    public void registerAccCustomer(String username, String password) {
        try {
            String query = "insert into Account values(?,?,'customer')";
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.executeUpdate();
        } catch (Exception e) {
            Logger.getLogger(DaoAccount.class.getName()).log(Level.SEVERE, null, e);
        }
    }
    
//    public int login(String username, String password) {
//        try {
//            /*Create check if username and password is correct statement*/
//            ps = conn.prepareStatement("select * from Account where Username = ? and Password = ? ");
//            ps.setString(1, username);
//            ps.setString(2, password);
//            ResultSet rs = ps.executeQuery();
//            /*If username and password is correct return number*/
//            if (rs.next()) {
//                System.out.println(rs.getString("role"));
//                if(rs.getString("role").equals("admin")){
//                    return 1;
//                }else if(rs.getString("role").equals("customer")){
//                    return 2;
//                }else{
//                    return 3;
//                }
//            }else{
//                return 4;
//            } 
//
//        } catch (Exception e) {
//            System.out.println(e);
//        }
//        return 4;
//    }

    public Account login(String user, String pass) {
        String query = "select * from Account where Username = ? and Password = ?";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
            }
        } catch (Exception e) {
            Logger.getLogger(DaoAccount.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

    public void updateAccountCustomer(Account acc, int AccountID) {
        String sql = "UPDATE [dbo].[Account]\n"
                + "   SET [Username] = ?\n"
                + "      ,[Password] = ?\n"
                + " WHERE AccountID= ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, acc.getUsername());
            pre.setString(2, acc.getPassword());
            pre.setInt(3, AccountID);
            pre.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(DaoAccount.class.getName()).log(Level.SEVERE, null, e);
        }

    }
    public void UpdateAccountPass(String password, String username) {
        String sql = "update Account set Password = ? where Username = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, password);
            pre.setString(2, username);
            pre.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(DaoAccount.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public void updateAccountCustomerByUserName(Account acc, String UserName) {
        String sql = "UPDATE [dbo].[Account]\n"
                + "   SET [Username] = ?\n"
                + "      ,[Password] = ?\n"
                + " WHERE Username = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, acc.getUsername());
            pre.setString(2, acc.getPassword());
            pre.setString(3, UserName);
            pre.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(DaoAccount.class.getName()).log(Level.SEVERE, null, e);
        }

    }

    public int getAccountIdByUserName(String username) {
        String query = "select AccountID from Account where Username = ?";
        try {
            //conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            Logger.getLogger(DaoAccount.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public void deleteAccount(int AccountID) {
        try {
            String sql = "delete from Account where AccountID = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, AccountID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DaoAccount.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void changeStatus(int AccountID) {
        String sql = "update Account set status = 0 where AccountID = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, AccountID);
            pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DaoAccount.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public int getStatusByUser(String username){
        String sql = "select status from Account where Username = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, username);
            ResultSet rs1 = pre.executeQuery();
            while (rs1.next()) {                
                return rs1.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DaoAccount.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }
    
    public static void main(String[] args) {
        DaoAccount dao = new DaoAccount();
        ResultSet rs =dao.GetAccByUserName("HaiDuong");
        System.out.println(rs);
    }

    
}
