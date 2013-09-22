package hrm.model;

//import com.jcorporate.expresso.core.controller.ControllerRequest;
//import com.jcorporate.expresso.core.controller.ServletControllerRequest;
//import com.jcorporate.expresso.core.controller.session.PersistentSession;
//import com.jcorporate.expresso.core.db.DBException;
//import com.jcorporate.expresso.core.dbobj.MultiDBObject;
//import com.jcorporate.expresso.core.controller.ControllerException;
import java.util.*;
//import java.util.logging.Logger;

import hrm.dbobj.*;
import hrm.util.*;

public class LoginModel {

	private String username;
	private String pass;
	private int check;
	
	//public static Logger log = Logger.getLogger(LoginModel.class);
	
	public LoginModel() {
		super();
	}
	
	
	public String getUser(){
		return username;
	}
	public void setUser(String newUser){
		username = newUser;
	}
	
	public String getPass(){
		return pass;
	}
	public void setPass(String newPass){
		pass = newPass;
	}
	
	public int getCheck(){
		return check;
	}
	public void setCheck(int newCheck){
		check = newCheck;
	}
	
	public static int checklogin(String username1, String pass1){
		try{
			Login obj = new Login();
			int flag = 0;
			MD5 md5 = new MD5(pass1);
		    String MD5Password = md5.asHex();
			//MD5Password = pass;
			/*obj.setField(obj.USERNAME,username1);
			obj.setField(obj.PASS,pass1);
			obj.setField(obj.CHECK_,"1");
			//if(obj.retrieve())
			if(obj.find()){
				flag = 1;
			}*/
		   
			
			System.out.println("KKKKK");
			//setField(duan.ID, duanModel.getId());
			ArrayList list = obj.searchAndRetrieveList();
			for(int i=0; i<list.size(); i++)
			{
				Login objtest = (Login)list.get(i);
				//System.out.println("sdfjsldfdksfd: " + i + objtest.getField(objtest.CHECK));
				//System.out.println("user: " + objtest.getField(objtest.USERNAME) + "---- pass: " + objtest.getField(objtest.PASS));
				if((objtest.getField(objtest.USERNAME)).equals(username1)){
					 if((objtest.getField(objtest.PASS)).equals(pass1) && Integer.parseInt(objtest.getField(objtest.CHECK_)) == 1)
						flag = 1;
					else if ((objtest.getField(objtest.PASS)).equals(MD5Password) && Integer.parseInt(objtest.getField(objtest.CHECK_)) == 1)
						flag = 1;
					else if ((objtest.getField(objtest.PASS)).equals(pass1) && Integer.parseInt(objtest.getField(objtest.CHECK_)) == 0)
						flag = 2;
					else if ((objtest.getField(objtest.PASS)).equals(MD5Password) && Integer.parseInt(objtest.getField(objtest.CHECK_)) == 0)
					 	flag = 2;
					else flag = 0;
				}
				
				/*if((objtest.getField(objtest.USERNAME)).equals(username1) && (objtest.getField(objtest.PASS)).equals(pass1) && Integer.parseInt(objtest.getField(objtest.CHECK_)) == 1)
				{
					flag = 1;
				}
				else if ( (objtest.getField(objtest.USERNAME)).equals(username1) && (objtest.getField(objtest.PASS)).equals(pass1) && Integer.parseInt(objtest.getField(objtest.CHECK_)) != 1)
				{
					flag = 2;
				}*/
			}
			if(flag == 1)
				return 1;
			else if(flag == 2)
				return 2;
			else
				return -1;
		}catch(Exception ex){
		    ex.printStackTrace();
			return -1;
		}
	}
	
	/*public static void update(LoginModel loginModel){
		   try {
		     Login login = new Login();
		     login.setField(login.USERNAME, loginModel.getUser());
		     login.setField(login.PASS, loginModel.getPass());
		     login.setField(login.CHECK_, loginModel.getCheck());
		     login.update();
		   }
		   catch (Exception ex) {
		     ex.printStackTrace();
		   }
		 }
	*/
	 public static LoginModel toModel(Login login)
	 {
	     LoginModel loginModel = new LoginModel();
	     try
	     {
	    	 loginModel.setUser(login.getField(Login.USERNAME));
	    	 loginModel.setPass(login.getField(Login.PASS));
	    	 loginModel.setCheck(login.getFieldInt(Login.CHECK_));
		     return loginModel;
	     } catch (Exception dbe) {
	    	 dbe.printStackTrace();
		     return null;
	     }
	 }
	
	public static LoginModel getLogin(String username){
		ArrayList result = new ArrayList();
		try {
			Login finder = new Login();
		      finder.setCustomWhereClause(" USERNAME =" + username + " ");
		      result = finder.searchAndRetrieveList();
		      return toModel((Login)result.get(0));
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}
	}
	
	public static int update(LoginModel model) {
        try{
            Login obj = new Login();
            if(model.getUser()!=null && model.getUser().length()>0)
                obj.setField(Login.USERNAME,  model.getUser());
                //System.out.println("id san pham: " + model.getLoaisp_id());
            if(obj.find()){
                obj.setField(Login.PASS, model.getPass());
                obj.setField(Login.CHECK_, model.getCheck());
                obj.update();
            }
            return 1;
        }catch (Exception ex){
            //log.error(ex);
            return -1;
        }
    }
	
}
