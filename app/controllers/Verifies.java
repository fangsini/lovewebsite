package controllers;

import play.mvc.Controller;
import java.util.*;
import models.*;
import play.mvc.With;

public class Verifies extends Controller {
	public static void index() {
		if(User.find("byUserid", session.get("userId")).<User>first().authority == 1) {
			List<Verify> verifies = Verify.findAll();
			if(verifies.size() >0) {
				render(verifies);
			}
			else {
				String message = "There is no upload need to be verified.";
				render(verifies,message);
			}
		}
		else {
			
		}
	}

	public static void show(Long id) {
		if(User.find("byUserid", session.get("userId")).<User>first().authority == 1) {
			Verify verify = Verify.find("byId",id).first();
			render(verify);
		}
		else {

		}
	}

	public static void check(String result, Long id) {
		if(User.find("byUserid", session.get("userId")).<User>first().authority == 1) {
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
		else {
			
		}
	}
}
