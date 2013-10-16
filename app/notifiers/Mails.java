package notifiers;
 
import play.*;
import play.mvc.*;
import java.util.*;
 
public class Mails extends Mailer {
   public static void verifyResult(String recipients,String subject, String content) {
      String mailSubject = subject;
      String mailContent = content;
      setFrom("hhqcontinue@gmail.com");
      setSubject(subject);
      addRecipient(recipients);
      send(mailSubject, mailContent);
   }
 
}