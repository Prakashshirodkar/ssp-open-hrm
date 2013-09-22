package hrm.dbobj;

import com.jcorporate.expresso.core.dbobj.DBObject;
import com.jcorporate.expresso.core.db.DBException;
//import com.sun.jdi.connect.spi.Connection;

public class HR_Nation extends DBObject {
	
	public HR_Nation() throws DBException {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public static final String NATION_NO  = "NATION_NO";
	public static final String NATION_NAME = "NATION_NAME";
	public static final String NATION_NOTE = "NATION_NOTE";
	
	protected synchronized void setupFields() throws DBException {
		setTargetTable("HR_NATION");
		setDescription("HR_NATION");
		addField(NATION_NO, "varchar", 10, false, "NATION_NO");
		addField(NATION_NAME, "varchar", 42, false, "NATION_NAME");
		addField(NATION_NOTE, "varchar", 1024, true, "NATION_NOTE");
		addKey(NATION_NO);	
	}
}