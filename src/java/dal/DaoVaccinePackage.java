/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.VaccinePackage;

/**
 *
 * @author a
 */
public class DaoVaccinePackage extends DBContext {

    public void updateVaccinePackage(String PackageName, String Detail, int PackageID) {
        String sql = "update VaccinePackage set PackageName = ?, Detail = ? where PackageID = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, PackageName);
            pre.setString(2, Detail);
            pre.setInt(3, PackageID);
            pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DaoVaccinePackage.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ResultSet GetAllVaccinePackage() {
        try {
            String sql = "select * from VaccinePackage";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (Exception ex) {
            Logger.getLogger(DaoVaccinePackage.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ResultSet GetAllVaccineID_Name() {
        try {
            String sql = "select vaccineID,vaccineName from Vaccine";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (Exception ex) {
            Logger.getLogger(DaoVaccinePackage.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public float totalPrice(String[] vaccineList) {
        float total = 0;
        try {
            for (int i = 0; i < vaccineList.length; i++) {
                ResultSet rsGetPriceVaccineById = GetPriceVaccineById(Integer.parseInt(vaccineList[i]));
                while (rsGetPriceVaccineById.next()) {
                    total += rsGetPriceVaccineById.getFloat(1);
                }
            }
        } catch (Exception ex) {
            Logger.getLogger(DaoVaccinePackage.class.getName()).log(Level.SEVERE, null, ex);
        }
        return total;
    }

    public ResultSet GetPriceVaccineById(int VaccineId) {
        try {
            String sql = "select vaccinePrice from Vaccine where vaccineId = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, VaccineId);
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (Exception ex) {
            Logger.getLogger(DaoVaccinePackage.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ResultSet GetVaccineInPackage(int PackageID) {
        try {
            String sql = "  select * from Vaccine join PackageDetail on Vaccine.vaccineId = PackageDetail.vaccineId where PackageID = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, PackageID);
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (Exception ex) {
            Logger.getLogger(DaoVaccinePackage.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public String GetPackageNameByID(int PackageID) {
        try {
            String sql = "  select PackageName from VaccinePackage where PackageID = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, PackageID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception ex) {
            Logger.getLogger(DaoVaccinePackage.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void addVaccinePackage(VaccinePackage vacPack) {
        String sql = "insert into VaccinePackage values (?,?,?,?)";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, vacPack.getPackageID());
            pre.setString(2, vacPack.getPackageName());
            pre.setString(3, vacPack.getDetail());
            pre.setFloat(4, vacPack.getPackagePrice());
            pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DaoVaccinePackage.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteVaccinePackage(int PackageID) {
        try {
            String sql = "delete from VaccinePackage where PackageID = ?";
//            Statement ps = conn.createStatement();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, PackageID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DaoVaccinePackage.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deletePackDetailByPackId(int PackageID) {
        try {
            String sql = "delete from PackageDetail where PackageID = ?";
//            Statement ps = conn.createStatement();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, PackageID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DaoVaccinePackage.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteVaccineInPackage(int PackageID, int VaccineID) {
        try {
            String sql = "delete from PackageDetail where PackageID = ? and vaccineId = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, PackageID);
            ps.setInt(2, VaccineID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DaoVaccinePackage.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ResultSet GetAllVaccineWithoutPackage(int PackageID) {
        try {
            String sql = "with t as((select vaccineId from Vaccine) except (select vaccineId from PackageDetail where PackageID = ?))\n"
                    + "  select Vaccine.vaccineId,vaccineName from t join Vaccine on t.vaccineId = Vaccine.vaccineId";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, PackageID);
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (Exception ex) {
            Logger.getLogger(DaoVaccinePackage.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ResultSet GetPackageById(int PackageID) {
        try {
            String sql = "select * from VaccinePackage where PackageID = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, PackageID);
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (Exception ex) {
            Logger.getLogger(DaoVaccinePackage.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
