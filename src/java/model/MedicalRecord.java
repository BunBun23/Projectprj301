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
public class MedicalRecord {
    private int id;
    private Date injectionDate;
    private int vaccineInjected;
    private int doctorID;
    private int reservationID;

    public MedicalRecord() {
    }

    public MedicalRecord(int id, Date injectionDate, int vaccineInjected, int doctorID, int reservationID) {
        this.id = id;
        this.injectionDate = injectionDate;
        this.vaccineInjected = vaccineInjected;
        this.doctorID = doctorID;
        this.reservationID = reservationID;
    }
    
    public MedicalRecord(Date injectionDate, int vaccineInjected, int doctorID, int reservationID) {
        this.injectionDate = injectionDate;
        this.vaccineInjected = vaccineInjected;
        this.doctorID = doctorID;
        this.reservationID = reservationID;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getInjectionDate() {
        return injectionDate;
    }

    public void setInjectionDate(Date injectionDate) {
        this.injectionDate = injectionDate;
    }

    public int getVaccineInjected() {
        return vaccineInjected;
    }

    public void setVaccineInjected(int vaccineInjected) {
        this.vaccineInjected = vaccineInjected;
    }

    public int getDoctorID() {
        return doctorID;
    }

    public void setDoctorID(int doctorID) {
        this.doctorID = doctorID;
    }

    public int getReservationID() {
        return reservationID;
    }

    public void setReservationID(int reservationID) {
        this.reservationID = reservationID;
    }
    
    

    

    @Override
    public String toString() {
        return "MedicalRecord{" + "id=" + id + ", injectionDate=" + injectionDate + ", vaccineInjected=" + vaccineInjected + ", doctorID=" + doctorID + ", reservationID=" + reservationID + '}';
    }
    
    
    
    
}
