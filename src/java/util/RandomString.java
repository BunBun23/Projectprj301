/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.util.Random;

/**
 *
 * @author hoang
 */
public class RandomString {
    public String GenerateRandomPassword(){
        Random rand = new Random();
        String pool = "qwertyuiopasdfghjklzxcvbnm1234567890";
        String randomPass = null;
        for(int i=0; i<10; i++){
            randomPass += pool.charAt(rand.nextInt(pool.length()));
        }
        return randomPass;
    }
}
