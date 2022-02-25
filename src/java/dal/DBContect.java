package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author a
 */
public class DBContect {

    public Connection conn = null;

    public DBContect(String URL, String userName, String password) {
        try {
            //URL: String Connection
            //Call Driver
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            //Connection
            conn = DriverManager.getConnection(URL, userName, password);
            System.out.println("connected");
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        } catch (SQLException ex) {
            Logger.getLogger(DBContect.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public DBContect() {
        this("jdbc:sqlserver://BUNBUN:1433;databaseName=Project", "sa", "sa");
    }

    public ResultSet getData(String sql) {
        ResultSet rs = null;
        Statement state;
        try {
            state = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = state.executeQuery(sql);
        } catch (SQLException ex) {
            Logger.getLogger(DBContect.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public static void main(String[] args) {
        new DBContect();
    }
}
