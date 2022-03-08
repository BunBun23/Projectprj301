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
public class HealthForm {
    private int formID;
    private int temperature;
    private String symptom;
    private int customerID;

    public HealthForm() {
    }

    public HealthForm(int formID, int temperature, String symptom, int customerID) {
        this.formID = formID;
        this.temperature = temperature;
        this.symptom = symptom;
        this.customerID = customerID;
    }
    public HealthForm( int temperature, String symptom, int customerID) {
        this.temperature = temperature;
        this.symptom = symptom;
        this.customerID = customerID;
    }

    public int getFormID() {
        return formID;
    }

    public void setFormID(int formID) {
        this.formID = formID;
    }

    public int getTemperature() {
        return temperature;
    }

    public void setTemperature(int temperature) {
        this.temperature = temperature;
    }

    public String getSymptom() {
        return symptom;
    }

    public void setSymptom(String symptom) {
        this.symptom = symptom;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    @Override
    public String toString() {
        return "HealthForm{" + "formID=" + formID + ", temperature=" + temperature + ", symptom=" + symptom + ", customerID=" + customerID + '}';
    }
    
    
}
