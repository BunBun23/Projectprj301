/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author a
 */
public class PackageDetail {
    private int packageDetailID;
    private float price;
    private int vaccineID;
    private int packageID;

    public PackageDetail() {
    }

    public PackageDetail(int packageDetailID, float price, int vaccineID, int packageID) {
        this.packageDetailID = packageDetailID;
        this.price = price;
        this.vaccineID = vaccineID;
        this.packageID = packageID;
    }
    public PackageDetail( float price, int vaccineID, int packageID) {
        this.price = price;
        this.vaccineID = vaccineID;
        this.packageID = packageID;
    }
    public PackageDetail( int vaccineID, int packageID) {
        this.vaccineID = vaccineID;
        this.packageID = packageID;
    }

    public int getPackageDetailID() {
        return packageDetailID;
    }

    public void setPackageDetailID(int packageDetailID) {
        this.packageDetailID = packageDetailID;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getVaccineID() {
        return vaccineID;
    }

    public void setVaccineID(int vaccineID) {
        this.vaccineID = vaccineID;
    }

    public int getPackageID() {
        return packageID;
    }

    public void setPackageID(int packageID) {
        this.packageID = packageID;
    }

    @Override
    public String toString() {
        return "PackageDetail{" + "packageDetailID=" + packageDetailID + ", price=" + price + ", vaccineID=" + vaccineID + ", packageID=" + packageID + '}';
    }
    
    
}
