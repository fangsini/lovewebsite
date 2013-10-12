package controllers;

import java.security.MessageDigest;
import java.util.List;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;
import models.User;
import play.data.validation.MinSize;
import play.data.validation.Required;
import play.libs.Mail;
import play.mvc.Controller;
import play.libs.Images;
import play.cache.Cache;
import java.util.Random;
public class Register extends Controller {
	private final static String[] hexDigits = {"0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"};
	
	public static void index(String message) {
		render(message);
	}
	
	public static void register(@Required(message="Userid'length must more than 12") @MinSize(value=12,message="Userid'length must more than 12") String userid,
			@Required(message="Name is required") String name,
			@Required(message="The length of the password must more than 6") @MinSize(value=6, message="The length of the password must more than 6")String password,
			@Required String pass,
			@Required(message="Email is required") String email,@Required String sex,
			@Required String college, @Required String phone) {
		User user1 = User.findById(userid);
		
		List<User> uid = User.find("order by userid desc").from(0).fetch();
		for(int i = 0;i<uid.size();i++) {
			String a = uid.get(i).userid;
			if(a.equals(userid)) {
				index("This number has been registered.");
			}
		}
		
		if (!checkEmail(email)) {
			index("Email format error.");
		}
		//sendMail(email,userid);
		if(password.equals(pass)) {
			password = encodeByMD5(password);
			User user = new User(userid, name, password, email, sex, 0, college, phone).save();
			Application.index();
		}
		else {
			String message = "your password is wrong...please register again...";
			index(message);
		}
		
		if(validation.hasErrors()) {
			render("Register/index.html",user1);
		}
	}

	public static String encodeByMD5(String str){ 
        if (str!=null) { 
            try { 
                //创建具有指定算法名称的信息摘要 
                MessageDigest md5 = MessageDigest.getInstance("MD5"); 
                //使用指定的字节数组对摘要进行最后更新，然后完成摘要计算 
                byte[] results = md5.digest(str.getBytes()); 
                //将得到的字节数组变成字符串返回  
                String result = byteArrayToHexString(results); 
                return result; 
            } catch (Exception e) { 
                e.printStackTrace(); 
            } 
        } 
        return null; 
    }
	
	public static String byteArrayToHexString(byte[] b){ 
        StringBuffer resultSb = new StringBuffer(); 
        for(int i=0;i<b.length;i++){ 
            resultSb.append(byteToHexString(b[i])); 
        } 
        return resultSb.toString(); 
    }
	
	public static String byteToHexString(byte b){ 
        int n = b; 
        if(n<0) 
        n=256+n; 
        int d1 = n/16; 
        int d2 = n%16; 
        return hexDigits[d1] + hexDigits[d2]; 
    }
	
	public static boolean checkEmail (String email) {
		if (!email.matches("[\\w\\.\\-]+@([\\w\\-]+\\.)+[\\w\\-]+")) {
			return false;
		}
		return true;
	}
	
	public static void sendMail(String sendTo, String content) {
		SimpleEmail email = new SimpleEmail();
    	try {
			email.setFrom("hhqcontinue@gmail.com");
			email.addTo(sendTo);
	    	email.setSubject("subject");
	    	email.setMsg(content);
	    	Mail.send(email); //index("success");
		} catch (EmailException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
	}
}
