package models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import play.data.validation.Email;
import play.data.validation.MinSize;
import play.data.validation.Required;
import play.db.jpa.GenericModel;

@Entity
public class User extends GenericModel {
	@Id
	@MinSize(value=12,message="Userid'length must more than 12")
	public String userid;
	
	public String name;
	
	@MinSize(6)
	public String password;
	@Email
	@Required
	public String email;
	public String sex;
	public Boolean authority;
	public String college;
	public String phone;
	
	public User(String userid,String name, String password,String email,
		String sex,Boolean authority,String college, String phone) {
		this.userid = userid;
		this.name = name;
		this.password = password;
		this.email = email;
		this.sex = sex;
		this.authority = authority;
		this.college = college;
		this.phone = phone;
	}
	
	public static User connect(String email,String password) {
		return find("byEmailAndPassword",email,password).first();
	}
	
	public String toString() {
	    return email;
	}
}
