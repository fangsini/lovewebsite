package controllers;

import play.mvc.With;
import models.*;
@With(Secure.class)
public class Users extends CRUD{
	public static void userMessage() {
		String userId = session.get("userId");
		User existUser = User.find("byUserid",userId).first();
		render(existUser);
	}
}
