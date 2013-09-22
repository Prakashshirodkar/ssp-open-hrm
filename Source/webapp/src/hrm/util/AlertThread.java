package hrm.util;

import hrm.dbobj.*;
import hrm.model.*;

import java.sql.ResultSet;
import java.util.*;
import hrm.util.*;
import com.jcorporate.expresso.core.db.*;
import com.jcorporate.expresso.core.dbobj.DBObject;
public class AlertThread extends Thread
{
    public AlertThread()
    {
        super();
    }
    
    
    public  void run()
    {
        System.out.println("AlertThread is Run...");
        hrm.util.DBConnectionManager dbConnManager;
        java.sql.Connection conn = null;
    
    try
    {
        /*com.jcorporate.expresso.core.misc.ConfigJdbc configJdbc=com.jcorporate.expresso.core.misc.ConfigManager.getJdbc("default");
		String dbDriver = configJdbc.getDriver();
		String connString=configJdbc.getUrl();
		String user=configJdbc.getLogin();
		String pwd=configJdbc.getPassword();
		dbConnManager= hrm.util.DBConnectionManager.getInstance(dbDriver, connString, user, pwd, 50);
	    conn = dbConnManager.getConnection("topmostread");
	    System.out.println(conn);
	    //conn.setAutoCommit(false);
    	java.sql.Statement st=conn.createStatement();
    	ResultSet rs = null;*/
        while (true)
        {
            try
            {
                Thread.sleep( (long) 1000);
                //System.out.println("thread");
            }
            catch (Exception e)
            {
            	e.printStackTrace();
            }
            try
            {
                System.out.println("thread");

            	
		    	
		    	/*String sql = "select * from alert_guidinhthoi";
                rs = st.executeQuery(sql);
                while(rs.next()){
                	//System.out.println("email: "+email);
                	System.out.println("title: "+rs.getString(5));
                	//System.out.println("content: "+JS.unescape(rs.getString(6)));
                }*/
		    	String email = "";
		    	String strSql = "";
            	String title = "";
            	String content = "";
            	Alert_Guidinhthoi guidtObj = new Alert_Guidinhthoi();
            	String today = DateUtil.toString(new Date());
            	String sql1 = "THOIDIEMGUI <= '" + today  + "'";
            	guidtObj.setCustomWhereClause(sql1);
                ArrayList list = guidtObj.searchAndRetrieveList();
                System.out.println("list: "+list.size());
                //st.close();
                //rs.close();
                //conn.commit();
                
                
            }
            catch (Exception e)
            {
                e.printStackTrace();
            }
        }
    
    }catch (Exception e)
    {
        e.printStackTrace();
    }
}
    public static void main(String args[]){
    	System.out.println("main run ...");
    	AlertThread a = new AlertThread();
    	a.run();
    }
}
