package controllers;

import models.User;
import play.mvc.Before;
import play.mvc.Controller;
import play.mvc.With;

@With(Secure.class)
public class Admin extends Controller{
	@Before
	static void setConnectedUser() {
		if(Security.isConnected()) {
			User user = User.find("byEmail", Security.connected()).first();
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
