<%@ page import="com.jcorporate.expresso.core.db.*"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.ResultSetMetaData"%>
<%! hrm.util.DBConnectionManager dbConnManager;
	public void jspInit(){
	    try{
		    com.jcorporate.expresso.core.misc.ConfigJdbc configJdbc=com.jcorporate.expresso.core.misc.ConfigManager.getJdbc("default");
		    String dbDriver = configJdbc.getDriver();
		    String connString = configJdbc.getUrl();
		    String user=configJdbc.getLogin();
		    String pwd=configJdbc.getPassword();
		    dbConnManager= hrm.util.DBConnectionManager.getInstance(dbDriver, connString, user, pwd, 50);
	    }catch(Exception e){e.printStackTrace();}
 	}
 	public void jspDestroy(){
    	dbConnManager.release();
 	}
 %>