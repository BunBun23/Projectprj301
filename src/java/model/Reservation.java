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
public class Reservation {
    private int reservationID;
    private String bookingDate;
    private int slotID;

    public Reservation() {
    }

    public Reservation(int reservationID, String bookingDate, int slotID) {
        this.reservationID = reservationID;
        this.bookingDate = bookingDate;
        this.slotID = slotID;
    }
    public Reservation( String bookingDate, int slotID) {
        this.bookingDate = bookingDate;
        this.slotID = slotID;
    }

    public int getReservationID() {
        return reservationID;
    }

    public void setReservationID(int reservationID) {
        this.reservationID = reservationID;
    }

    public String getBookingDate() {
        return bookingDate;
    }

    public void setBookingDate(String bookingDate) {
        this.bookingDate = bookingDate;
    }

    public int getSlotID() {
        return slotID;
    }

    public void setSlotID(int slotID) {
        this.slotID = slotID;
    }

    @Override
    public String toString() {
        return "Reservation{" + "reservationID=" + reservationID + ", bookingDate=" + bookingDate + ", slotID=" + slotID + '}';
    }
    
    
}
