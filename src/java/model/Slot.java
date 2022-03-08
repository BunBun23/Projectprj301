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
public class Slot {
    private int slotID;
    private String beginTime;
    private String endTime;

    public Slot() {
    }

    public Slot(int slotID, String beginTime, String endTime) {
        this.slotID = slotID;
        this.beginTime = beginTime;
        this.endTime = endTime;
    }
    public Slot( String beginTime, String endTime) {
        this.beginTime = beginTime;
        this.endTime = endTime;
    }

    public int getSlotID() {
        return slotID;
    }

    public void setSlotID(int slotID) {
        this.slotID = slotID;
    }

    public String getBeginTime() {
        return beginTime;
    }

    public void setBeginTime(String beginTime) {
        this.beginTime = beginTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    @Override
    public String toString() {
        return "Slot{" + "slotID=" + slotID + ", beginTime=" + beginTime + ", endTime=" + endTime + '}';
    }
    
    
}
