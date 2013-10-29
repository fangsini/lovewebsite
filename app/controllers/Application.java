package controllers;

import play.*;
import play.mvc.*;
import java.util.*;
import models.*;

public class Application extends Controller {
<<<<<<< HEAD
    public static void index() {
        String userName = "";
        int authority = 0;
        if(session.get("userId") != null) {
            String userId = session.get("userId");
            User user = User.find("byUserid",userId).first();
            userName = user.name;
            authority = user.authority;
        }
    	List<Upload> olderUploads = Upload.find("order by postedAt desc").from(0).fetch(3);
    	News latestNews = News.find("order by id desc").first();
    	Report report = Report.find("order by id desc").first();
    	render(olderUploads,latestNews,report,userName, authority);
=======
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
>>>>>>> 98595e8eb3aff674d0888e3f8dd73f03a47ce8b3
    }

    public static void about() {
    	render();
    }
}