<<<<<<< HEAD
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

	public Long postedAt;

	@Required
	public String fileName;

	@Lob
	@Required
	@MaxSize(10000)
	public String content;
	
	@Required
	public String author;
	
	public Verify(String author,String title,String content,String fileName) {
		this.author = author;
		this.title = title;
		this.content = content;
		this.fileName = fileName;
		this.postedAt = new Date().getTime();
	}
=======
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
>>>>>>> 98595e8eb3aff674d0888e3f8dd73f03a47ce8b3
}