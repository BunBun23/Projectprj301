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
public class Admin {
    private int adminID;
    private int accountID;

    public Admin() {
    }

    public Admin(int adminID, int accountID) {
        this.adminID = adminID;
        this.accountID = accountID;
    }

    public int getAdminID() {
        return adminID;
    }

    public void setAdminID(int adminID) {
        this.adminID = adminID;
    }

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    @Override
    public String toString() {
        return "Admin{" + "adminID=" + adminID + ", accountID=" + accountID + '}';
    }
    
}
