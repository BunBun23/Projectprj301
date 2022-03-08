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
public class VaccinePackage {
    private int packageID;
    private String packageName;
    private String detail;
    private float packagePrice;

    public VaccinePackage() {
    }

    public VaccinePackage(int packageID, String packageName, String detail, float packagePrice) {
        this.packageID = packageID;
        this.packageName = packageName;
        this.detail = detail;
        this.packagePrice = packagePrice;
    }
    public VaccinePackage( String packageName, String detail, float packagePrice) {
        this.packageName = packageName;
        this.detail = detail;
        this.packagePrice = packagePrice;
    }

    public int getPackageID() {
        return packageID;
    }

    public void setPackageID(int packageID) {
        this.packageID = packageID;
    }

    public String getPackageName() {
        return packageName;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public float getPackagePrice() {
        return packagePrice;
    }

    public void setPackagePrice(float packagePrice) {
        this.packagePrice = packagePrice;
    }

    @Override
    public String toString() {
        return "VaccinePackage{" + "packageID=" + packageID + ", packageName=" + packageName + ", detail=" + detail + ", packagePrice=" + packagePrice + '}';
    }
    
    
}
