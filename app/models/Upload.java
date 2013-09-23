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
