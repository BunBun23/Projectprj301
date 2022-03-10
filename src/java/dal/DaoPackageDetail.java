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
import model.PackageDetail;

/**
 *
 * @author a
 */
public class DaoPackageDetail extends DBContext {

    public void addPackageDetail(PackageDetail packDetail) {
        String sql = "insert into PackageDetail(Price,vaccineId,PackageID) values (?,?,?)";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setFloat(1, GetPriceVaccineById(packDetail.getVaccineID()));
            pre.setInt(2, packDetail.getVaccineID());
            pre.setInt(3, packDetail.getPackageID());
            pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DaoPackageDetail.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public float GetPriceVaccineById(int VaccineId) {
        float price = 0;
        try {
            String sql = "select vaccinePrice from Vaccine where vaccineId = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, VaccineId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                price = rs.getFloat(1);
            }
            return price;
        } catch (Exception ex) {
            Logger.getLogger(DaoPackageDetail.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public void deleteVaccineIdInPackage(int PackageID, int VaccineID) {
        try {
            String sql = "delete from PackageDetail where PackageID = ? and vaccineId = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, PackageID);
            ps.setInt(2, VaccineID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DaoPackageDetail.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
