package hrm.dbobj;

import com.jcorporate.expresso.core.dbobj.DBObject;
import com.jcorporate.expresso.core.db.DBException;
//import com.sun.jdi.connect.spi.Connection;

public class Login extends DBObject {
	
	public Login() throws DBException {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public static final String USERNAME  = "USERNAME";
	public static final String PASS = "PASS";
	public static final String CHECK_ = "CHECK_";
	
	protected synchronized void setupFields() throws DBException {
		setTargetTable("LOGIN");
		setDescription("LOGIN");
		addField(USERNAME, "varchar", 20, false, "USERNAME");
		addField(PASS, "varchar", 40, false, "PASS");
		addField(CHECK_, "int", 0, true, "CHECK_");
		addKey(USERNAME);	
	}
}