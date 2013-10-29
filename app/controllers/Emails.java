<<<<<<< HEAD
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
=======
package controllers;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;
import play.libs.Mail;
import models.*;
import play.*;
import java.util.List;
import play.mvc.*;

public class Emails extends Controller {
    public static void index() {
    	render();
    }
    
    public static void personalMail() {
        render();
    }
    
    public static void allEmails() {
        render();
    }

    public static void sendPersonalEmail(String recipients,String subject, String content) {
    	User user = User.find("byEmail", Security.connected()).first();
        Email latestMail = new Email(recipients, subject, content);
        SimpleEmail email = new SimpleEmail();
    	try {
    		email.setFrom(user.email);
			email.addTo(recipients);
			email.setSubject(subject);
			email.setMsg(content);
			Mail.send(email);
            latestMail.save();
		} catch (EmailException e) {
			e.printStackTrace();
		}
    	index();
    }

    public static void sendAllEmails(String subject, String photoUrl, String content) {
        User user = User.find("byEmail", Security.connected()).first();
        List<User> users = User.findAll();
        for(int i=0;i<users.size();i++){
            String recipient = users.get(i).email;
            Email oneMail = new Email(recipient, subject, content);
            SimpleEmail email = new SimpleEmail();
            try {
                email.setFrom(user.email);
                email.addTo(recipient);
                email.setSubject(subject);
                email.setMsg(content);
                Mail.send(email);
                oneMail.save();
            } catch (EmailException e) {
                e.printStackTrace();
            }
        }
        index();
    }
>>>>>>> 98595e8eb3aff674d0888e3f8dd73f03a47ce8b3
}