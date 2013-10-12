package controllers;

import play.mvc.Controller;
import java.util.*;
import models.*;
public class Verifies extends Controller {
	public static void index() {
		List<Verify> verifies = Verify.findAll();
		if(verifies.size() >0) {
			render(verifies);
		}
		else {
			String message = "There is no upload need to be verified.";
			render(verifies,message);
		}
	}

	public static void show(Long id) {
		Verify verify = Verify.find("byId",id).first();
		render(verify);
	}

	public static void check(String result, Long id) {
		Verify verify = Verify.find("byId",id).first();
		if(result.equals("admit")) {
			Upload upload = new Upload(verify.author, verify.title, verify.content, verify.photoUrl);
			upload.save();
			verify.delete();
		}
		else {
			verify.delete();
		}
		index();
	}
}
