package controllers;

import models.LovePerson;
import play.Play;
import play.mvc.Controller;
import java.io.File;
import java.util.List;
import play.libs.Files;

public class LovePersons extends Controller {
	public static void index() {
		String message = "Please enter the loveperson's information below...";
		render(message);
	}

	public static void release(File photo, String name, String story) {
		String photoUrl = photo.getName();
		Files.copy(photo, Play.getFile("public/images/"+photoUrl));
		LovePerson lovePerson = new LovePerson(name, story, photoUrl);
		lovePerson.save();
		viewLoveperson();
	}

	public static void viewLoveperson() {
		List<LovePerson> lovePersons = LovePerson.findAll();
		render(lovePersons);
	}

	public static void showLovePerson(Long id) {
		LovePerson loveperson = LovePerson.find("byId",id).first();
		render(loveperson);
	}

	public static void allLovePerson(int startPosition) {
		int totalLovePerson = LovePerson.findAll().size();
		List<LovePerson> allLovePersons = LovePerson.all().from(startPosition*5).fetch(5);
		render(allLovePersons,startPosition,totalLovePerson);
	}

	public static void previousPage(int startPosition) {
		int totalLovePerson = LovePerson.findAll().size();
		if(startPosition == 0) {
			startPosition = startPosition;
		}
		else {
			startPosition = startPosition - 1;
		}
		allLovePerson(startPosition);
	}

	public static void nextPage(int startPosition) {
		int totalLovePerson = LovePerson.findAll().size();
		if(startPosition >= totalLovePerson/5) {
			startPosition = startPosition;
		}
		else {
			startPosition = startPosition + 1;
		}
		allLovePerson(startPosition);
	}

	public static void oneLovePerson(Long id) {
		LovePerson oneLovePerson = LovePerson.find("byId",id).first();
		render(oneLovePerson);
	}

	public static void deleteLovePerson(Long id) {
		LovePerson existPerson = LovePerson.find("byId",id).first();
		existPerson.delete();
		viewLoveperson();
	}

	public static void editPage(Long id) {
		LovePerson existPerson = LovePerson.find("byId",id).first();
		render(existPerson);
	}

	public static void editLovePerson(Long id, String name, String story) {
		LovePerson existPerson = LovePerson.find("byId",id).first();
		existPerson.name = name;
		existPerson.story = story;
		existPerson.save();
		viewLoveperson();
	}
}