<<<<<<< HEAD
import play.*;
import play.jobs.*;
import play.test.*;
 
import models.*;
 
@OnApplicationStart
public class Bootstrap extends Job {
 
    public void doJob() {
        // Check if the database is empty
        //if(User.count() == 0) {
          //  Fixtures.loadModels("initial-data.yml");
       // }
    }
=======
import play.*;
import play.jobs.*;
import play.test.*;
 
import models.*;
 
@OnApplicationStart
public class Bootstrap extends Job {
 
    public void doJob() {
        // Check if the database is empty
        //if(User.count() == 0) {
          //  Fixtures.loadModels("initial-data.yml");
       // }
    }
>>>>>>> 98595e8eb3aff674d0888e3f8dd73f03a47ce8b3
}