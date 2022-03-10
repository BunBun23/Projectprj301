/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;
import java.net.PasswordAuthentication;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
/**
 *
 * @author hoang
 */
public class JavaMail {
    public void SendResetPasswordMail(String email, String password){
        Properties prop = new Properties();
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true");
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "587");
        
        Session session = Session.getInstance(prop, new Authenticator() {
            @Override
            protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
                return new javax.mail.PasswordAuthentication("", "");
            }   
});
        try {
            Message mess = ForgetPasswordMail(session, email, password);
            Transport.send(mess);
            System.out.println("Success");
        } catch (MessagingException ex) {
            Logger.getLogger(JavaMail.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception e){
            
        }
            
    }
    
    private  Message ForgetPasswordMail(Session session, String reciever, String content){
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("ducchhe150151@fpt.edu.vn"));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(reciever));
            message.setSubject("[Change Password Request From Fvax]");
            message.setText("Greetings,\nYour new password is: "+ content);
            return message;
        } catch (AddressException ex) {
            Logger.getLogger(JavaMail.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception e){
            
        }
        return null;
    }
    
    public static void main(String[] args) {
        JavaMail jm = new JavaMail();
        jm.SendResetPasswordMail("hoangducpro001@gmail.com", "alskdjfwoieru");
    }
}
