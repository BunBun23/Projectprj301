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
public class Bill {
    private int billID;
    private float total_Price;
    private int customerID;
    private int packageID;
    private int vaccineID;

    public Bill() {
    }

    public Bill(int billID, float total_Price, int customerID, int packageID, int vaccineID) {
        this.billID = billID;
        this.total_Price = total_Price;
        this.customerID = customerID;
        this.packageID = packageID;
        this.vaccineID = vaccineID;
    }
    public Bill( float total_Price, int customerID, int packageID, int vaccineID) {
        this.total_Price = total_Price;
        this.customerID = customerID;
        this.packageID = packageID;
        this.vaccineID = vaccineID;
    }

    public int getBillID() {
        return billID;
    }

    public void setBillID(int billID) {
        this.billID = billID;
    }

    public float getTotal_Price() {
        return total_Price;
    }

    public void setTotal_Price(float total_Price) {
        this.total_Price = total_Price;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public int getPackageID() {
        return packageID;
    }

    public void setPackageID(int packageID) {
        this.packageID = packageID;
    }

    public int getVaccineID() {
        return vaccineID;
    }

    public void setVaccineID(int vaccineID) {
        this.vaccineID = vaccineID;
    }

    @Override
    public String toString() {
        return "Bill{" + "billID=" + billID + ", total_Price=" + total_Price + ", customerID=" + customerID + ", packageID=" + packageID + ", vaccineID=" + vaccineID + '}';
    }
    
    
}
