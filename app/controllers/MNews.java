package controllers;

import models.*;
import play.*;
import play.mvc.*;
import java.io.File;
import play.libs.Files;
import java.util.*;

public class MNews extends Controller {
    public static void index() {
        if(User.find("byUserid", session.get("userId")).<User>first().authority == 1) {
    	   render();
        }
        else {

        }
    }
    
    public static void releaseNews(File photo, String content, String address, String time) {
        if(User.find("byUserid", session.get("userId")).<User>first().authority == 1) {
            String fileUrl = photo.getName();
            Files.copy(photo, Play.getFile("public/images/"+fileUrl));
            News latestNews = new News(fileUrl, content, address, time);
            latestNews.save();
            index();
        }
        else {
            
        }
    }

    public static void showNews() {
       if(User.find("byUserid", session.get("userId")).<User>first().authority == 1) {
            String hql = "select n from News n order by id desc";
            List<News> newsList = News.find(hql).fetch();
            render(newsList);
        }
        else {
            
        } 
    }

    public static void delNews(Long id) {
        if(User.find("byUserid", session.get("userId")).<User>first().authority == 1) {
            News existNews = News.find("byId",id).first();
            existNews.delete();
            showNews();
        }
        else {
            
        }
    }
}