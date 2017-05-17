package pack;

import java.net.UnknownHostException;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.jmx.export.annotation.ManagedOperationParameters;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.ModelAndView;

import com.mongodb.DB;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;


@Controller
public class HomeController implements ServletContextListener{
	public static final String DB_NAME = "vishaldb";
	public static final String PERSON_COLLECTION = "User";
	public static final String MONGO_HOST = "mongodb://Vishal Bajaj:vishal@123@ds137891.mlab.com:37891/vishaldb";
	public static final int MONGO_PORT = 37891;
	MongoClient mongoClient;
	static MongoOperations mongoOps;
	
	

	public void contextDestroyed(ServletContextEvent arg0) {
	
	
	}

	public void contextInitialized(ServletContextEvent arg0) {
		try {
		MongoClientURI mongoUri  = new MongoClientURI("mongodb://vasudev:vasudev123@ds137891.mlab.com:37891/vishaldb");
		MongoClient mongoClient = new MongoClient(mongoUri);
		DB db = mongoClient.getDB("vishaldb");
	
		//mongoClient.connect(addr)
		
		System.out.println(mongoClient);
		System.out.println(db);
		
	   Set<String> collectionNames = db.getCollectionNames();
		
		System.out.println( collectionNames );
		mongoOps = new MongoTemplate(mongoClient, DB_NAME);
		
		System.out.println("Mongo Ops:");
		System.out.println( mongoOps );
		

//		Person p1 = mongoOps.findOne(
//				new Query(Criteria.where("name").is("PankajKr")),
//				Person.class, PERSON_COLLECTION);
//
//		System.out.println(p1);
//		
//		//mongoOps.dropCollection(PERSON_COLLECTION);
//		mongoClient.close();
		
	}
		catch (UnknownHostException e) {
		e.printStackTrace();
		}
	
}
	@RequestMapping("/Home")
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {
	ModelAndView mv = new ModelAndView("Home");
	
	return mv;
	}
	
	@RequestMapping("/Signup")
	protected ModelAndView handleRequestInternal1(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mv = new ModelAndView("Signup");
		String Name = request.getParameter("username");
		String email = request.getParameter("email");
		String phone = request.getParameter("phoneno");
		String address = request.getParameter("address");
		String password = request.getParameter("pass");
		
		User u = new User();
		u.setUserName(Name);
		u.setUserEmail(email);
		u.setPhoneNo(phone);
		u.setUserAddress(address);
		u.setPassword(password);
		System.out.println("abc "+u);
		System.out.println("xyz "+PERSON_COLLECTION);
		
		System.out.println(u);
		
		System.out.println(mongoOps);
		
		mongoOps.insert(u, PERSON_COLLECTION);
		System.out.println("successfully saved");
		
		User p1 = mongoOps.findOne(
				new Query(Criteria.where("userName").is("Vijay")),
				User.class, PERSON_COLLECTION);
			System.out.println(p1);
			String v="vishal bajaj";
			mv.addObject("vi",v);
			mv.addObject("add",p1);
		return mv;
	}
}