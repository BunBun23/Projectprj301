/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

/**
 *
 * @author hoang
 */
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customer;
import model.Slot;

public class DaoSlot extends DBContext {
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Slot> getAllSlot(){
        List<Slot> list = new ArrayList<>();
        try{
            String sql ="SELECT * FROM Slot";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Slot slot = new Slot(rs.getInt(1), rs.getString(2), rs.getString(3));
                list.add(slot);
            }
            return list;
            
        }catch(SQLException ex){
            System.out.println(ex);
        }
        return null;
    }
    
    public static void main(String[] args) {
        DaoSlot dao = new DaoSlot();
        System.out.println(dao.getAllSlot());
    }
}
