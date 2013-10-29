<<<<<<< HEAD
package models;

import play.db.jpa.Model;
import javax.persistence.Entity;
@Entity
public class Report extends Model {
	public String title;

	public String content;

	public String photoUrl;

	public Report(String title, String content, String photoUrl) {
		this.title = title;
		this.content = content;
		this.photoUrl = photoUrl;
	}
	
=======
package models;

import play.db.jpa.Model;
import javax.persistence.Entity;
@Entity
public class Report extends Model {
	public String title;

	public String content;

	public String photoUrl;

	public Report(String title, String content, String photoUrl) {
		this.title = title;
		this.content = content;
		this.photoUrl = photoUrl;
	}
	
>>>>>>> 98595e8eb3aff674d0888e3f8dd73f03a47ce8b3
}