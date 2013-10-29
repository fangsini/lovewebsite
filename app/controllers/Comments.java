<<<<<<< HEAD
package controllers;

import play.mvc.With;

// @With(Secure.class)
@Check("admin")
public class Comments extends CRUD{
	
}
=======
package controllers;

import play.mvc.With;

@With(Secure.class)
@Check("admin")
public class Comments extends CRUD{

}
>>>>>>> 98595e8eb3aff674d0888e3f8dd73f03a47ce8b3
