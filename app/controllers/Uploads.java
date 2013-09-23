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
	public static void index() {
    	if(session.get("user") != null) {
    	   render();
        }
        else {
            index();
        }
    }

    public static void showUpload(Long id) {
    	Upload upload = Upload.findById(id);
    	List <Comment> comments = Comment.find("byUpload_id", id).from(0).fetch(10);
    	String randomID = Codec.UUID();
    	render(upload,comments,randomID);
    }
    
    public static void uploadHelp(File photo, 
    		@Required(message="Title is required") String title,
    		@Required(message="Content is required") String content) {
    	    if(session.get("user") != null) {
                if(validation.hasErrors()) {
    		      index();
    	        }
                String author = session.get("user");
                String name = photo.getName();
    	        Verify verify = new Verify(author,title,content,name);
                Files.copy(photo, Play.getFile("public/images/"+name));
                verify.save();
                index();
            }
            else {
                index();
            }
    }
    
    public static void postComment(Long id, @Required String content) {
    	Upload upload = Upload.findById(id);
        String username = session.get("user");
        User user = User.find("byName", username).first();
        String author = user.name;
    	if(validation.hasErrors()) {
    		List <Comment> comments = Comment.find("byUpload_id", id).from(0).fetch(10);
    		render("Uploads/showOneUpload.html",id,upload,comments);
    	}
    	upload.addComments(author, content);
    	flash.success("Thanks for posting %s", author);
    	showOneUpload(id);
    }
    
    public static void myUploads(int startPosition) {
        String author = session.get("user");
        List<Upload> myuploads = Upload.find("byAuthor",author).from(0).fetch(10);
        int totalUpload = myuploads.size();
        render(myuploads, totalUpload);
    }

    public static void allUploads() {
        String name = session.get("user");
        User user = User.find("byName",name).first();
        List<Upload> alluploads = Upload.findAll();
        boolean authority = user.authority;
        System.out.println("size"+alluploads.size());
        if(authority) {
            render(alluploads);
        } 
        else {
            String message = "There has not any uploads here...";
            render(message);
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
        if(startPosition >= totalUpload/5) {
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
        System.out.println(existComments.size());
        render(oneUpload,existComments);
    }

    public static void deleteUpload(Long id) {
        Upload existUpload = Upload.find("byId",id).first();
        List<Comment> existComments = Comment.find("byUpload_id",existUpload.id).fetch();
        existUpload.delete();
        existComments.clear();
        allUploads();
    }

    public static void editPage(Long id) {
        Upload existUpload = Upload.find("byId",id).first();
        render(existUpload);
    }

    public static void editUpload(Long id, String title, String content) {
        Upload existUpload = Upload.find("byId",id).first();
        existUpload.title = title;
        existUpload.content = content;
        existUpload.save();
        index();
    }

    public static void myNext(int startPosition) {
        String author = session.get("user");
        List<Upload> myuploads = Upload.find("byAuthor",author).fetch();
        int totalUpload = myuploads.size();
        if(startPosition >= totalUpload/5) {
            startPosition = startPosition;
        }
        else {
            startPosition = startPosition + 1;
        }
        myUploads(startPosition);
    }

    public static void myPrevious(int startPosition) {
        String author = session.get("user");
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
