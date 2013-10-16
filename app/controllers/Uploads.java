package controllers;

import play.*;
import play.mvc.*;
import java.io.File;
import play.cache.Cache;
import play.data.validation.Required;
import play.libs.Codec;
import play.libs.Files;
import play.libs.Images;
import models.*;
import java.util.*;

public class Uploads extends Controller{
	public static void index(String message) {
    	if(session.get("userId") != null) {
            if(message == null) {
                message = "";
            }
    	   render(message);
        }
        else {
            
        }
    }

    public static void showUpload(Long id) {
        if(User.find("byUserid", session.get("userId")).<User>first().authority == 1) {
        	Upload upload = Upload.findById(id);
        	List <Comment> comments = Comment.find("byUpload_id", id).from(0).fetch(10);
        	String randomID = Codec.UUID();
        	render(upload,comments,randomID);
        }
        else {

        }
    }
    
    public static void uploadHelp(File photo, String title, String content) {
    	    if(session.get("userId") != null) {
                if(photo == null || title == null
                    || content == null) {
                  String message = "请把信息填写完整";
    		      index(message);
    	        }
                String userId = session.get("userId");
                User tempUser = User.find("byUserid", userId).first();
                String author = tempUser.name;
                String name = photo.getName();
    	        Verify verify = new Verify(author,title,content,name);
                Files.copy(photo, Play.getFile("public/images/"+name));
                verify.save();
                Uploads.showAllUploads(0);
            }
            else {
            }
    }
    
    public static void postComment(Long id, @Required String content) {
    	Upload upload = Upload.findById(id);
        String author;
        if(session.get("userId") == null) {
            author = "匿名";
        }
        else {
            String userId = session.get("userId");
            User tempUser = User.find("byUserid", userId).first();
            author = tempUser.name;
        }
    	if(validation.hasErrors()) {
    		List <Comment> comments = Comment.find("byUpload_id", id).from(0).fetch(10);
    		render("Uploads/showOneUpload.html",id,upload,comments);
    	}
    	upload.addComments(author, content);
    	flash.success("Thanks for posting %s", author);
    	showOneUpload(id);
    }
    
    public static void myUploads(int startPosition) {
        String userId = session.get("userId");
        User tempUser = User.find("byUserid", userId).first();
        String author = tempUser.name;
        List<Upload> myuploads = Upload.find("byAuthor",author).from(0).fetch(10);
        int totalUpload = myuploads.size();
        render(myuploads, totalUpload);
    }

    public static void allUploads() {
        String userId = session.get("userId");
        User user = User.find("byUserid",userId).first();
        List<Upload> alluploads = Upload.findAll();
        if(User.find("byUserid", userId).<User>first().authority == 1) {
            render(alluploads);
        }
        else {
        }
    }

    public static void showAllUploads(int startPosition) {
        int totalUpload=Upload.findAll().size();
        List<Upload> allUploads = Upload.all().from(startPosition*5).fetch(5);
        render(allUploads,startPosition,totalUpload);
    }

    public static void previousPage(int startPosition) {
        int totalUpload = Upload.findAll().size();
        if(startPosition == 0) {
            startPosition = startPosition;
        }
        else {
            startPosition = startPosition - 1;
        }
        showAllUploads(startPosition);
    }

    public static void nextPage(int startPosition) {
        int totalUpload = Upload.findAll().size();
        if(startPosition >= (totalUpload/5 + 0.4)-1) {
            startPosition = startPosition;
        }
        else {
            startPosition = startPosition + 1;
        }
        showAllUploads(startPosition);
    }

    public static void showOneUpload(Long id) {
        Upload oneUpload = Upload.find("byId",id).first();
        List<Comment> existComments = Comment.find("byUpload_id",id).fetch();
        render(oneUpload,existComments);
    }

    public static void deleteUpload(Long id) {
        if(User.find("byUserid", session.get("userId")).<User>first().authority == 1) {
            Upload existUpload = Upload.find("byId",id).first();
            List<Comment> existComments = Comment.find("byUpload_id",existUpload.id).fetch();
            existUpload.delete();
            existComments.clear();
            allUploads();
        }
        else {

        }
    }

    public static void editPage(Long id) {
        if(User.find("byUserid", session.get("userId")).<User>first().authority == 1) {
            Upload existUpload = Upload.find("byId",id).first();
            render(existUpload);
        }
        else {

        }
    }

    public static void editUpload(Long id, String title, String content) {
        if(User.find("byUserid", session.get("userId")).<User>first().authority == 1) {
            String message = "";
            Upload existUpload = Upload.find("byId",id).first();
            existUpload.title = title;
            existUpload.content = content;
            existUpload.save();
            index(message);
        }
        else {
            
        }
    }

    public static void myNext(int startPosition) {
        String userId = session.get("userId");
        User tempUser = User.find("byUserid", userId).first();
        String author = tempUser.name;
        List<Upload> myuploads = Upload.find("byAuthor",author).fetch();
        int totalUpload = myuploads.size();
        if(startPosition >= (totalUpload/5 + 0.4)-1) {
            startPosition = startPosition;
        }
        else {
            startPosition = startPosition + 1;
        }
        myUploads(startPosition);
    }

    public static void myPrevious(int startPosition) {
        String userId = session.get("userId");
        User tempUser = User.find("byUserid", userId).first();
        String author = tempUser.name;

        List<Upload> myuploads = Upload.find("byAuthor", author).fetch();
        int totalUpload = myuploads.size();
        if(startPosition == 0) {
            startPosition = startPosition;
        }
        else {
            startPosition = startPosition - 1;
        }
        myUploads(startPosition);
    }
}
