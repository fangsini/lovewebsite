package models;

import javax.persistence.Entity;
import play.db.jpa.Model;

@Entity
public class Email extends Model {
    public String recipient;

    public String content;

    public String subject;
    
    public Email(String recipient, String content, String subject) {
        this.recipient = recipient;
        this.content = content;
        this.subject = subject;
    }
}
