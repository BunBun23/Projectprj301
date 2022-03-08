/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author a
 */
public class Customer {

    private int customerID;
    private String customerName;
    private String email;
    private String address;
    private Date dob;
    private String phone;
    private int accountID;
    private int gender;
    private int socialID;

    public Customer() {
    }

    public Customer(int customerID, String customerName, String email, String address, Date dob, String phone, int accountID, int gender, int socialID) {
        this.customerID = customerID;
        this.customerName = customerName;
        this.email = email;
        this.address = address;
        this.dob = dob;
        this.phone = phone;
        this.accountID = accountID;
        this.gender = gender;
        this.socialID = socialID;
    }

    public Customer(String customerName, String email, String address, Date dob, String phone, int accountID, int gender, int socialID) {
        this.customerName = customerName;
        this.email = email;
        this.address = address;
        this.dob = dob;
        this.phone = phone;
        this.accountID = accountID;
        this.gender = gender;
        this.socialID = socialID;
    }
    public Customer(String customerName, String email, String address, Date dob, String phone, int gender, int socialID) {
        this.customerName = customerName;
        this.email = email;
        this.address = address;
        this.dob = dob;
        this.phone = phone;
        this.gender = gender;
        this.socialID = socialID;
    }

    public Customer(String fullname, String email, String address, Date DOB, String phone, int gender, String socialID) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getSocialID() {
        return socialID;
    }

    public void setSocialID(int socialID) {
        this.socialID = socialID;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    @Override
    public String toString() {
        return "Customer{" + "customerID=" + customerID + ", customerName=" + customerName + ", email=" + email + ", address=" + address + ", dob=" + dob + ", phone=" + phone + ", accountID=" + accountID + ", gender=" + gender + ", socialID=" + socialID +'}';
    }

}
