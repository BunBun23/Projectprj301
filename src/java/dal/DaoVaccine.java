/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import model.Vaccine;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.ListPackage;

/**
 *
 * @author a
 */
public class DaoVaccine extends DBContext {

    public void addVaccine(Vaccine vax) {
        String sql = "insert into Vaccine(vaccineName,vaccinePrice,vaccineOrigin,vaccineDetail) values (?,?,?,?)";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, vax.getName());
            pre.setFloat(2, vax.getPrice());
            pre.setString(3, vax.getOrigin());
            pre.setString(4, vax.getDetail());
            pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DaoVaccine.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteVaccine(int VaccineID) {
        try {
            String sql = "delete from Vaccine where vaccineId = '" + VaccineID + "'";
            Statement state = conn.createStatement();
            state.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(DaoVaccine.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateVaccine(Vaccine vax, int VaccineID) {
        String sql = "update Vaccine set vaccineName=?,vaccinePrice=?,vaccineOrigin=?,vaccineDetail=? where vaccineId=?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, vax.getName());
            pre.setFloat(2, vax.getPrice());
            pre.setString(3, vax.getOrigin());
            pre.setString(4, vax.getDetail());
            pre.setInt(5, VaccineID);
            pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DaoVaccine.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<Vaccine> getall() {
        try {
            String sql = "select * from vaccine";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            List<Vaccine> list = new ArrayList<>();
            while (rs.next()) {
                Vaccine v = new Vaccine(
                        rs.getString(2),
                        rs.getFloat(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6));
                list.add(v);
            }
            return list;
        } catch (Exception e) {
            Logger.getLogger(DaoVaccine.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;

    }

    public ResultSet getAllPaging(int pageIndex) {
        String sql = "select * from vaccine order by vaccineId\n"
                + "OFFSET ? ROWS FETCH NEXT 20 ROWS ONLY;";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, (pageIndex - 1) * 20);
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(DaoVaccine.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public ResultSet getAllPagingByText(int pageIndex ,String txt) {
        String sql = "select * from vaccine where vaccineName like ? order by vaccineId "
                + "OFFSET ? ROWS FETCH NEXT 20 ROWS ONLY ;";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "%"+ txt +"%");
            ps.setInt(2, (pageIndex - 1) * 20);
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(DaoVaccine.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public ResultSet getAllByText(String txt) {
        String sql = "select * from vaccine where vaccineName like ? ";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "%"+ txt +"%");
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(DaoVaccine.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ResultSet GetVaccineByID(int vaccineID) {
        try {
            //mo ket noi
            String sql = "select * from Vaccine where vaccineId = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, vaccineID);
            ResultSet rsGetVaccineByID = ps.executeQuery();
            return rsGetVaccineByID;
        } catch (Exception ex) {
            Logger.getLogger(DaoVaccine.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ResultSet GetAllVaccine() {
        try {
            //mo ket noi
            String sql = "select * from Vaccine";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (Exception ex) {
            Logger.getLogger(DaoVaccine.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int totalvaccines() {
        try {
            String sql = "select count(*) from vaccine";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
        return 0;
    }

    public ArrayList<ListPackage> getListPackage() {
        ArrayList<ListPackage> list = new ArrayList<>();
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("SELECT Vaccine.vaccineId,VaccinePackage.PackageID,PackageName,vaccineName,vaccineOrigin,vaccinePrice,vaccineDetail,Detail FROM Vaccine inner join PackageDetail ON Vaccine.vaccineId = PackageDetail.vaccineId inner join  VaccinePackage ON VaccinePackage.PackageID = PackageDetail.PackageID");
            while (rs.next()) {
                ListPackage listPackage = new ListPackage();
                listPackage.setVaccineId(rs.getInt("vaccineId"));
                listPackage.setPackageId(rs.getInt("PackageID"));
                listPackage.setPackageName(rs.getString("PackageName"));
                listPackage.setVaccineName(rs.getString("vaccineName"));
                listPackage.setVaccineOrigin(rs.getString("vaccineOrigin"));
                listPackage.setVaccinePrice(rs.getFloat("vaccinePrice"));
                listPackage.setVaccineDetail(rs.getString("vaccineDetail"));
                listPackage.setPackageDetail(rs.getString("Detail"));
                list.add(listPackage);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    //test
    public static void main(String[] args) {
        DaoVaccine dao = new DaoVaccine();
        int count = dao.totalvaccines();
            System.out.println(count);
    }
}
