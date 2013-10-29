<<<<<<< HEAD
package models;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.*;
import play.data.validation.MaxSize;
import play.data.validation.Required;
import play.db.jpa.Model;

@Entity
public class Upload extends Model {
	@Required
	public String title;
	
	@Required
	public Long postedAt;
	
	@Required
	public String fileName;
	
	@Lob
	@Required
	@MaxSize(10000)
	public String content;
	
	public String author;

	public int hits;

	public int upNum;

	public String upUserId;

	public int priority;
	
	@OneToMany(mappedBy="upload", cascade=CascadeType.ALL)
	public List<Comment> comments;
	
	public Upload(String author,String title,String content,
		String fileName, int hits, int upNum, String upUserId, int priority) {
		this.author = author;
		this.title = title;
		this.content = content;
		this.fileName = fileName;
		this.hits = hits;
		this.upNum = upNum;
		this.upUserId = upUserId;
		this.priority = priority;
		this.postedAt = new Date().getTime();
	}
	
	public Upload addComments(String author, String content) {
		Comment newComment = new Comment(this, author, content).save();
		this.comments.add(newComment);
		this.save();
		return this;
	}
}
=======
package models;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.*;
import play.data.validation.MaxSize;
import play.data.validation.Required;
import play.db.jpa.Model;

@Entity
public class Upload extends Model {
	@Required
	public String title;
	
	@Required
	public Date postedAt;
	
	@Required
	public String photoUrl;
	
	@Lob
	@Required
	@MaxSize(10000)
	public String content;
	
	public String author;
	
	@OneToMany(mappedBy="upload", cascade=CascadeType.ALL)
	public List<Comment> comments;
	
	public Upload(String author,String title,String content,String photoUrl) {
		this.author = author;
		this.title = title;
		this.content = content;
		this.photoUrl = photoUrl;
		this.postedAt = new Date();
	}
	
	public Upload addComments(String author, String content) {
		Comment newComment = new Comment(this, author, content).save();
		this.comments.add(newComment);
		this.save();
		return this;
	}
}
>>>>>>> 98595e8eb3aff674d0888e3f8dd73f03a47ce8b3
