package controllers;

import play.*;
import play.mvc.*;
import models.*;
public class FeedBacks extends Controller {
	public static void index() {
		render();
	}

	public static void sendFeedBack(String name, String content, String contact) {
		FeedBack feedback = new FeedBack(name, content, contact);
		feedback.save();
		Application.about();
	}
}