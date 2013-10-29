<<<<<<< HEAD
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
=======
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
			session.put("user",user.name);
		}
	}
	
	public static void index() {
		render();
	}
}
>>>>>>> 98595e8eb3aff674d0888e3f8dd73f03a47ce8b3
