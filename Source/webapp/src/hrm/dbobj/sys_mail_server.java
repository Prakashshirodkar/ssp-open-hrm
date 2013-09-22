package hrm.dbobj;

import com.jcorporate.expresso.core.dbobj.DBObject;
import com.jcorporate.expresso.core.db.DBException;
//import com.sun.jdi.connect.spi.Connection;

public class sys_mail_server extends DBObject {
	
	public sys_mail_server() throws DBException {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public static final String ID  = "ID";
	public static final String MAIL_SERVER = "MAIL_SERVER";
	public static final String USERNAME = "USERNAME";
	public static final String ACCOUNT_NAME = "ACCOUNT_NAME";
	public static final String PASS = "PASS";
	
	protected synchronized void setupFields() throws DBException {
		setTargetTable("SYS_MAIL_SERVER");
		setDescription("SYS_MAIL_SERVER");
		addField(ID, "int", 0, false, "ID");
		addField(MAIL_SERVER, "varchar", 42, true, "MAIL_SERVER");
		addField(USERNAME, "varchar", 42, true, "USERNAME");
		addField(ACCOUNT_NAME, "varchar", 42, true, "ACCOUNT_NAME");
		addField(PASS, "varchar", 42, true, "PASS");
		addKey(ID);	
	}
}