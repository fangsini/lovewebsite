package models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import play.data.validation.MinSize;
import play.data.validation.Required;
import play.db.jpa.Model;

@Entity
public class News extends Model {
	public String fileUrl;

	public String content;

	public String address;

	public String time;
	
	public News(String fileUrl, String content, String address, String time) {
		this.fileUrl = fileUrl;
		this.content = content;
		this.address = address;
		this.time = time;
	}
}
