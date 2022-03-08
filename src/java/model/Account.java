/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Bun
 */
public class Account {
    private int accountID;
    private String username;
    private String password;
    private String role;
    

    public Account() {
    }

    public Account(int accountID, String username, String password, String role) {
        this.accountID = accountID;
        this.username = username;
        this.password = password;
        this.role = role;
    }

    
    public Account( String username, String password, String role) {
        this.username = username;
        this.password = password;
        this.role = role;
    }
    public Account( String username, String password) {
        this.username = username;
        this.password = password;
    }

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Account{" + "accountID=" + accountID + ", username=" + username + ", password=" + password + ", role=" + role + '}';
    }
    
    

    

    
}
