package controllers;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;
import play.libs.Mail;
import models.*;
import play.*;
import java.util.List;
import play.mvc.*;
import java.io.UnsupportedEncodingException;
import notifiers.*;

public class Emails extends Controller {
    public static void index() {
        if(User.find("byUserid", session.get("userId")).<User>first().authority == 1) {
           render();
        }
        else {

        }
    }
    
    public static void personalMail() {
        if(User.find("byUserid", session.get("userId")).<User>first().authority == 1) {
           render();
        }
        else {

        }
    }
    
    public static void allEmails() {
        if(User.find("byUserid", session.get("userId")).<User>first().authority == 1) {
           render();
        }
        else {

        }
    }

    public static void sendPersonalEmail(String recipients,String subject, String content) {
        if(User.find("byUserid", session.get("userId")).<User>first().authority == 1) {
            User user = User.find("byUserid", session.get("userId")).first();
            Email latestMail = new Email(recipients, subject, content);
            Mails.sendOut(recipients, subject, content);
            latestMail.save();
            index();
        }
        else {

        }
    }

    public static void sendAllEmails(String subject, String content) {
        if(User.find("byUserid", session.get("userId")).<User>first().authority == 1) {
            User user = User.find("byUserid", session.get("userId")).first();
            List<User> users = User.findAll();
            for(int i=0;i<users.size();i++){
                String recipient = users.get(i).email;
                Email oneMail = new Email(recipient, subject, content);
                Mails.sendOut(recipient, subject, content);
                oneMail.save();
            }
            index();
        }
        else {
            
        }
    }
}