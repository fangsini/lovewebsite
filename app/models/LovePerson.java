package models;

import java.util.Date;
import javax.persistence.Entity;
import play.db.jpa.Model;
@Entity
public class LovePerson extends Model {
	public String name;
	public String story;
	public String photoUrl;
	public Date releaseTime;

	public LovePerson(String name, String story, String photoUrl) {
		this.name = name;
		this.story = story;
		this.photoUrl = photoUrl;
		this.releaseTime = new Date();
	}
}