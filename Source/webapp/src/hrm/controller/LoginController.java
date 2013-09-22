package hrm.controller;

import java.sql.ResultSet;

import com.jcorporate.expresso.core.controller.*;
import com.jcorporate.expresso.core.controller.session.PersistentSession;

import hrm.model.LoginModel;


public class LoginController extends DBController {
	
	private static final long serialVersionUID = 1L;
	public LoginController(){
		State login = new State("login", "login");
		addState(login);
		
		State changepass = new State("changepass", "changepass");
		addState(changepass);
		
		State loginsuccess = new State("loginsuccess", "loginsuccess");
		addState(loginsuccess);
		
		State loginfail = new State("loginfail", "loginfail");
		addState(loginfail);
		
		setInitialState("login");
	}
	
	hrm.util.DBConnectionManager dbConnManager;
	
	protected ControllerResponse runLoginState(ControllerRequest request,
	ControllerResponse response) throws ControllerException, NonHandleableException
	{
		//ServletControllerRequest sr = (ServletControllerRequest) request;
        //javax.servlet.http.HttpServletRequest hreq = (javax.servlet.http.HttpServletRequest) sr.getServletRequest();
        PersistentSession session = request.getSession();
        
        try{
        	com.jcorporate.expresso.core.misc.ConfigJdbc configJdbc=com.jcorporate.expresso.core.misc.ConfigManager.getJdbc("default");
		    String dbDriver = configJdbc.getDriver();
		    String connString=configJdbc.getUrl();
		    String user=configJdbc.getLogin();
		    String pwd=configJdbc.getPassword();
		    dbConnManager= hrm.util.DBConnectionManager.getInstance(dbDriver, connString, user, pwd, 50);
	        java.sql.Connection conn = dbConnManager.getConnection("topmostread");
	       
        	String username = request.getParameter("username");
			String pass = request.getParameter("pass");
			String UserAccId = "";
			String strSqlSelectUseraccId = "Select useraccid from hr_employee where employee_no = '"+username+"'";
			
			String MD5Password;
			MD5Password = pass;
			int flag = LoginModel.checklogin(username, MD5Password);	
			String language = "";
			if(flag==1)
			{
				java.sql.PreparedStatement st=conn.prepareStatement(strSqlSelectUseraccId);
				ResultSet rs = st.executeQuery();
	    		if(rs.next())
	    			UserAccId = rs.getString(1);
	    		String sql = "select language from login where username = '"+username+"'";
	    		rs=st.executeQuery(sql);
	    		if(rs.next())
	    			language = rs.getString(1);
	    		if(language == null || language.equals("null")){
	    			language = "vi";
	    			String sql1 = "update login set language = 'vi' where username = '"+username+"'";
	    			st.execute(sql1);
	    		}
	    		rs.close();
				st.close();
	    		conn.close();
				session.setPersistentAttribute("logusername", username);
				session.setPersistentAttribute("logpass", pass);
				session.setPersistentAttribute("check", 1);
				session.setPersistentAttribute("language", language);
				if(UserAccId==null || UserAccId.equals("null"))
					session.setPersistentAttribute("useraccid", "null");
				else
					session.setPersistentAttribute("useraccid", UserAccId);
				this.transition("loginsuccess", request, response);
			}
			else if(flag==2)
			{
				java.sql.PreparedStatement st=conn.prepareStatement(strSqlSelectUseraccId);
				ResultSet rs = st.executeQuery();
	    		if(rs.next())
	    			UserAccId = rs.getString(1);
	    		String sql = "select language from login where username = '"+username+"'";
	    		rs=st.executeQuery(sql);
	    		if(rs.next())
	    			language = rs.getString(1);
	    		if(language == null || language.equals("null")){
	    			language = "vi";
	    			String sql1 = "update login set language = 'vi' where username = '"+username+"'";
	    			st.execute(sql1);
	    		}
	    		rs.close();
				st.close();
	    		conn.close();
				session.setPersistentAttribute("logusername", username);
				session.setPersistentAttribute("logpass", pass);
				session.setPersistentAttribute("check", 0);
				session.setPersistentAttribute("language", language);
				if(UserAccId==null || UserAccId.equals("null"))
					session.setPersistentAttribute("useraccid", "null");
				else
					session.setPersistentAttribute("useraccid", UserAccId);
				this.transition("changepass", request, response);
			}
			else
				this.transition("loginfail", request, response);
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			dbConnManager.release();
		}
		return response;
	}
	
	protected void runLoginsuccessState(ControllerRequest request,
	ControllerResponse response) throws ControllerException,
	NonHandleableException {

	}
	protected void runLoginfailState(ControllerRequest request,
			ControllerResponse response) throws ControllerException,
			NonHandleableException {

			}
	protected void runChangepassState(ControllerRequest request,
			ControllerResponse response) throws ControllerException,
			NonHandleableException {

			}
}
