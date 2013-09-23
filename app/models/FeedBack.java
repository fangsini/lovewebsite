package models;

import play.db.jpa.Model;
import javax.persistence.Entity;

@Entity
public class FeedBack extends Model {
	public String content;

	public String name;

	public String contact;

	public FeedBack(String name, String content, String contact) {
		this.name = name;
		this.contact = contact;
		this.content = content;
	}
}