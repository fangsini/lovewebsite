package controllers;

import play.mvc.With;
import models.*;
@With(Secure.class)
public class Users extends CRUD{
	public static void userMessage() {
		String name = session.get("user");
		User existUser = User.find("byName",name).first();
		render(existUser);
	}
}
