/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.util.Calendar;
import java.sql.Date;

/**
 *
 * @author hoang
 */
public class DateUtils {
    
    public Date addDate(Date date, int amount){
        Date resultDate ;
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        c.add(Calendar.DATE, amount);
        resultDate = new java.sql.Date(c.getTimeInMillis());
        return resultDate;
    }

    
    public static void main(String[] args) {
        DateUtils obj = new DateUtils();
        Date date = Date.valueOf("2022-02-20");
        System.out.println(obj.addDate(date, 2));
        
    }
}
