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
<<<<<<< HEAD
		Application.about();
=======
		index();
>>>>>>> 98595e8eb3aff674d0888e3f8dd73f03a47ce8b3
	}
}