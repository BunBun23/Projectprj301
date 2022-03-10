/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.security.MessageDigest;
import javax.xml.bind.DatatypeConverter;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hoang
 */
public class Hashing {
    public static String Encrypt(String password){
        
        String hashValue = null;
        try {
            byte[] passwordByte = password.getBytes();
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(passwordByte);
            byte[] digestedbyte = md.digest();
            hashValue = DatatypeConverter.printHexBinary(digestedbyte);
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(Hashing.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception e){
            
        }
        return hashValue;
        
    }
    
    public static void main(String[] args) {
         System.out.println(Hashing.Encrypt("Cuonghao234@"));
    }
}
