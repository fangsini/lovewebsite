import java.util.List;
import org.junit.*;
import play.test.*;
import models.*;
 
public class BasicTest extends UnitTest {
 
	@Before
	public void setup() {
		Fixtures.deleteDatabase();
	}
	
    @Test
    public void aVeryImportantThingToTest() {
        assertEquals(2, 1 + 1);
    }
 
    @Test
    public void createAndRetrieveUser() {
    	new User("201130720104","hhq","hhq","woai12346@qq.com","boy",true,"SCAUM","one").save();
    	
    	User hhq = User.find("byEmail","woai12346@qq.com").first();
    	
    	assertNotNull(hhq);
    	assertEquals("hhq",hhq.name);
    }
    
    @Test
    public void tryConnectAsUser() {
    	new User("201130720104","hhq","hhq","woai12346@qq.com","boy",true,"SCAUM","one").save();
    	
    	assertNotNull(User.connect("woai12346@qq.com","hhq"));
    	assertNull(User.connect("woai12346@qq.com", "password"));
    	assertNull(User.connect("hehe@qq.com", "hhq"));
    }
    
    @Test
    public void createUpload() {
    	User hhq = new User("201130720104","hhq","hhq","woai12346@qq.com","boy",true,"SCAUM","one").save();    	
    	new Upload("hhq","My first post","Hello world","D:/照片。/21.jpg").save();   	
    	assertEquals(1,Upload.count());  
    	
    	List<Upload> hhqUpload = Upload.find("byAuthor", "hhq").fetch();    	
    	assertEquals(1,hhqUpload.size());    	
    	Upload firstUpload = hhqUpload.get(0);    	
    	assertNotNull(firstUpload);
    	assertEquals("hhq",firstUpload.author);
    	assertEquals("My first post",firstUpload.title);
    	assertEquals("Hello world",firstUpload.content);
    	assertEquals("D:/照片。/21.jpg",firstUpload.photoUrl);
    	assertNotNull(firstUpload.postedAt);
    }
    
    @Test
    public void postComment() {
    	User hhq = new User("201130720104","hhq","hhq","woai12346@qq.com","boy",true,"SCAUM","one").save();
    	Upload hhqUpload = new Upload("hhq","My first post","Hello world","D:/照片。/21.jpg").save();
    	new Comment("hhq",hhqUpload,"content").save();
    	new Comment("lls",hhqUpload,"hello").save();
    	
    	List<Comment> hhqComment = Comment.find("byAuthor", "hhq").fetch();
    	assertEquals(2,hhqComment.size());
    	
    	Comment firstComment = hhqComment.get(0);
    	assertNotNull(firstComment);
    	assertEquals("hhq",firstComment.author);
    	assertEquals(hhqUpload,firstComment.upload);
    	assertEquals("content",firstComment.content);
    	assertNotNull(firstComment.postedAt);
    	
    	Comment secondComment = hhqComment.get(1);
    	assertNotNull(secondComment);
    	assertEquals("lls",secondComment.author);
    	assertEquals(hhqUpload,firstComment.upload);
    	assertEquals("hello",secondComment.content);
    	assertNotNull(secondComment.postedAt);
    }
    
    
    @Test
    public void fullTest() {
        Fixtures.loadModels("data.yml");
     
        // Count things
        assertEquals(1, User.count());
        assertEquals(0, Upload.count());
        assertEquals(0, Comment.count());
        // Try to connect as users
        
        assertNotNull(User.connect("woai12346@qq.com", "hhq"));
        assertNull(User.connect("jeff@gmail.com", "badpassword"));
     
    }
}