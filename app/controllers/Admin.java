package controllers;

import models.User;
import play.mvc.Before;
import play.mvc.Controller;
import play.mvc.With;

public class Admin extends Controller{
	
	public static void setConnectedUser() {
		if(User.find("byUserid", session.get("userId")).<User>first().authority == 1) {
			User user = User.find("byUserid", session.get("userId")).first();
			session.put("userId",user.userid);
		}
	}
	
	public static void index() {
		if(User.find("byUserid", session.get("userId")).<User>first().authority == 1) {
			render();
		}
		else {
			
		}
	}



}
