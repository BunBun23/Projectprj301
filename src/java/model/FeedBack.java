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
public class FeedBack {

    private int feedBackID;
    private Date createDate;
    private String detail;
    private int customerID;
    private int doctorID;

    public FeedBack() {
    }

    public FeedBack(int feedBackID, Date createDate, String detail, int customerID, int doctorID) {
        this.feedBackID = feedBackID;
        this.createDate = createDate;
        this.detail = detail;
        this.customerID = customerID;
        this.doctorID = doctorID;
    }

    public FeedBack(Date createDate, String detail, int customerID, int doctorID) {
        this.createDate = createDate;
        this.detail = detail;
        this.customerID = customerID;
        this.doctorID = doctorID;
    }

    public int getFeedBackID() {
        return feedBackID;
    }

    public void setFeedBackID(int feedBackID) {
        this.feedBackID = feedBackID;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public int getDoctorID() {
        return doctorID;
    }

    public void setDoctorID(int doctorID) {
        this.doctorID = doctorID;
    }

    @Override
    public String toString() {
        return "FeedBack{" + "feedBackID=" + feedBackID + ", createDate=" + createDate + ", detail=" + detail + ", customerID=" + customerID + ", doctorID=" + doctorID + '}';
    }

}
