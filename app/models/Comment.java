package models;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import play.db.jpa.Model;

@Entity
public class Comment extends Model {
	
	public Date postedAt;
	public String author;
	@Lob
	public String content;
	
	@ManyToOne
	public Upload upload;
	
	public Comment(Upload upload, String author, String content) {
		this.upload = upload;
		this.author = author;
		this.content = content;
		this.postedAt = new Date();
	}
}
