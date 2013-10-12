package controllers;

import play.mvc.Controller;
import models.*;
import play.*;
import play.mvc.*;
import java.io.File;
import play.libs.Files;
import java.util.List;
public class Reports extends Controller {
	public static void index() {
		render();
	}

	public static void postReport(File photo, String title, String content) {
		System.out.println(title+content);
		String fileUrl = photo.getName();
        Files.copy(photo, Play.getFile("public/images/"+fileUrl));
        Report report = new Report(title, content, fileUrl);
        report.save();
        render(content);
	}

	public static void showAllReports(int startPosition) {
		int totalReport=Report.findAll().size();
		List<Report> allReports = Report.all().from(startPosition*5).fetch(5);
		render(allReports,startPosition,totalReport);
	}

	public static void showNextReport(int startPosition) {
		int totalReport = Report.findAll().size();
		if(startPosition >= totalReport/5)
			startPosition = startPosition;
		else {
			startPosition = startPosition + 1;
		}
		showAllReports(startPosition);
	}

	public static void showPreviousReport(int startPosition) {
		int totalReport = Report.findAll().size();
		if(startPosition == 0) {
			startPosition = startPosition;
		}
		else {
			startPosition = startPosition - 1;
		}
		showAllReports(startPosition);
	}

	public static void showOneReport(Long id) {
		Report oneReport = Report.find("byId",id).first();
		render(oneReport);
	}
}