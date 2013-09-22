package hrm.model;

import java.util.*;
import hrm.dbobj.*;
//import hrm.util.*;

public class Sys_Mail_ServerModel {
	private String mail_server;
	private String username;
	private String account_name;
	private String pass;
	
	public Sys_Mail_ServerModel(){
		super();
	}
	
	public String getMail_Server(){
		return mail_server;
	}
	public void setMail_Server(String mail_server){
		this.mail_server = mail_server;
	}
	
	public String getUsername(){
		return username;
	}
	public void setUsername(String username){
		this.username = username;
	}
	
	public String getAccount_Name(){
		return account_name;
	}
	public void setAccount_Name(String account_name){
		this.account_name = account_name;
	}
	
	public String getPass(){
		return pass;
	}
	public void setPass(String pass){
		this.pass = pass;
	}
	
	public static Sys_Mail_ServerModel toModel(sys_mail_server sys_mail)
	 {
		Sys_Mail_ServerModel sysmailModel = new Sys_Mail_ServerModel();
	     try
	     {
	    	 sysmailModel.setMail_Server(sys_mail.getField(sys_mail_server.MAIL_SERVER));
	    	 sysmailModel.setUsername(sys_mail.getField(sys_mail_server.USERNAME));
	    	 sysmailModel.setAccount_Name(sys_mail.getField(sys_mail_server.ACCOUNT_NAME));
	    	 sysmailModel.setPass(sys_mail.getField(sys_mail_server.PASS));
		     return sysmailModel;
	     } catch (Exception dbe) {
	    	 dbe.printStackTrace();
		     return null;
	     }
	 }
	
	public static ArrayList getAllMailServer() {
		ArrayList arrData = new ArrayList();
		try {
			sys_mail_server finder = new sys_mail_server();
			ArrayList list = finder.searchAndRetrieveList();
			Iterator e = list.iterator();
			for (int i = 0; e.hasNext(); i++) {
				arrData.add(toModel( (sys_mail_server) e.next()));
			}
		} catch (Exception dbe) {}
		return arrData;
	}
}
