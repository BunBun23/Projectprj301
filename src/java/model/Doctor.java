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
public class Doctor {

    private int doctorID;
    private String information;
    private String phone;
    private int exp_Year;
    private short gender;
    private String email;
    private String name;
    private String address;
    private int accountID;

    public Doctor() {
    }

    public Doctor(int doctorID, String information, String phone, int exp_Year, short gender, String email, String name, String address, int accountID) {
        this.doctorID = doctorID;
        this.information = information;
        this.phone = phone;
        this.exp_Year = exp_Year;
        this.gender = gender;
        this.email = email;
        this.name = name;
        this.address = address;
        this.accountID = accountID;
    }

    public Doctor(String information, String phone, int exp_Year, short gender, String email, String name, String address, int accountID) {
        this.information = information;
        this.phone = phone;
        this.exp_Year = exp_Year;
        this.gender = gender;
        this.email = email;
        this.name = name;
        this.address = address;
        this.accountID = accountID;
    }

    public Doctor(String information, String phone, int exp_Year, short gender, String email, String name, String address) {
        this.information = information;
        this.phone = phone;
        this.exp_Year = exp_Year;
        this.gender = gender;
        this.email = email;
        this.name = name;
        this.address = address;
    }

    public int getDoctorID() {
        return doctorID;
    }

    public void setDoctorID(int doctorID) {
        this.doctorID = doctorID;
    }

    public String getInformation() {
        return information;
    }

    public void setInformation(String information) {
        this.information = information;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getExp_Year() {
        return exp_Year;
    }

    public void setExp_Year(int exp_Year) {
        this.exp_Year = exp_Year;
    }

    public short getGender() {
        return gender;
    }

    public void setGender(short gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    @Override
    public String toString() {
        return "Doctor{" + "doctorID=" + doctorID + ", information=" + information + ", phone=" + phone + ", exp_Year=" + exp_Year + ", gender=" + gender + ", email=" + email + ", name=" + name + ", address=" + address + ", accountID=" + accountID + '}';
    }

}
