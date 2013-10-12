package models;

import java.util.Date;
import javax.persistence.*;
import play.data.validation.MaxSize;
import play.data.validation.Required;
import play.db.jpa.Model;
@Entity
public class Verify extends Model {
	@Required
	public String title;

	public Date postedAt;

	@Required
	public String photoUrl;

	@Lob
	@Required
	@MaxSize(10000)
	public String content;
	
	@Required
	public String author;
	
	public Verify(String author,String title,String content,String photoUrl) {
		this.author = author;
		this.title = title;
		this.content = content;
		this.photoUrl = photoUrl;
		this.postedAt = new Date();
	}
}