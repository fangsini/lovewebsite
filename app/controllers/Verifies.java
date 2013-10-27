package controllers;

import play.mvc.Controller;
import java.util.*;
import models.*;
import play.mvc.With;

public class Verifies extends Controller {
	public static void index() {
		if(User.find("byUserid", session.get("userId")).<User>first().authority == 1) {
			String hql = "select v from Verify v order by v.postedAt desc";
			List<Verify> verifies = Verify.find(hql).fetch();
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
				Upload upload = new Upload(verify.author, verify.title, verify.content, verify.photoUrl, 0, 0, "", 0);
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

	public static void editPage(Long id) {
		if(User.find("byUserid", session.get("userId")).<User>first().authority == 1) {
			Verify verify = Verify.find("byId", id).first();
			render(verify);
		}
		else {
			
		}
	}

	public static void editVerify(Long id, String title, String content) {
		if(User.find("byUserid", session.get("userId")).<User>first().authority == 1) {
			Verify existVerify = Verify.find("byId", id).first();
			existVerify.title = title;
			existVerify.content = content;
			existVerify.save();
			show(id);
		}
		else {
			
		}
	}
}
