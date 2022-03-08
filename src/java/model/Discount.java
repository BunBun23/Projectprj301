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
public class Discount {
    private int id;
    private int packageID;
    private float discountRate ;

    public Discount() {
    }

    public Discount(int id, int packageID, float discountRate) {
        this.id = id;
        this.packageID = packageID;
        this.discountRate = discountRate;
    }
    public Discount( int packageID, float discountRate) {
        this.packageID = packageID;
        this.discountRate = discountRate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPackageID() {
        return packageID;
    }

    public void setPackageID(int packageID) {
        this.packageID = packageID;
    }

    public float getDiscountRate() {
        return discountRate;
    }

    public void setDiscountRate(float discountRate) {
        this.discountRate = discountRate;
    }

    @Override
    public String toString() {
        return "Discount{" + "id=" + id + ", packageID=" + packageID + ", discountRate=" + discountRate + '}';
    }
    
    
}
