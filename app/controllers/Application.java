package controllers;

import play.*;
import play.mvc.*;
import java.util.*;
import models.*;

public class Application extends Controller {
    public static void index() {    
        boolean authority = false;
        if(session.get("user") != null) {
            String name = session.get("user");
            User user = User.find("byName",name).first();
            authority = user.authority;
        }
    	List<Upload> olderUploads = Upload.find("order by postedAt desc").from(0).fetch(3);
    	List<News> latestNews = News.findAll();
    	LovePerson lovePerson = LovePerson.find("order by releaseTime desc").first();
    	Report report = Report.find("order by id desc").first();
    	render(olderUploads,latestNews,lovePerson,report,authority);
    }

    public static void about() {
    	render();
    }
}