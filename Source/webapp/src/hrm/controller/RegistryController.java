package hrm.controller;

//import java.sql.ResultSet;
//import java.text.DateFormat;
//import java.util.Date;

//import javax.swing.JApplet;

//import hrm.model.LoginModel;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.StringTokenizer;

import hrm.util.*;

import com.jcorporate.expresso.core.controller.*;
import com.jcorporate.expresso.core.controller.session.PersistentSession;

import hrm.dbobj.Alert_Guidinhthoi;
import hrm.model.*;
//import com.jcorporate.expresso.core.controller.session.PersistentSession;
//import com.jcorporate.expresso.core.misc.DateTime;


public class RegistryController extends DBController {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	public RegistryController(){
		State registry = new State("registry", "registry");
		addState(registry);
		
		State registry_temp = new State("registry_temp", "registry_temp");
		addState(registry_temp);
		
		State uyquyenduyetphep = new State("uyquyenduyetphep","uyquyenduyetphep");
		addState(uyquyenduyetphep);
		
		State addTdnn = new State("addTdnn","addTdnn");
		addState(addTdnn);
		
		State addTdkn = new State("addTdkn","addTdkn");
		addState(addTdkn);
		
		State addTdcm = new State("addTdcm","addTdcm");
		addState(addTdcm);
		
		State duyet = new State("duyet","duyet");
		addState(duyet);
		
		State khongduyet = new State("khongduyet","khongduyet");
		addState(khongduyet);
		
		State changelang = new State("changelang","changlang");
		addState(changelang);
		
		setInitialState("registry");
	}
	
	hrm.util.DBConnectionManager dbConnManager;

	
	protected ControllerResponse runChangelangState(ControllerRequest request,
			ControllerResponse response) throws ControllerException,
			NonHandleableException {
		ServletControllerRequest sr = (ServletControllerRequest) request;
        javax.servlet.http.HttpServletRequest hreq = (javax.servlet.http.HttpServletRequest) sr.getServletRequest();
        PersistentSession session = request.getSession();
        java.sql.Connection conn = null;
        	try{
					
					String username = (request.getParameter("username") != null) ? request.getParameter("username") : "";
					String lang = (request.getParameter("lang") != null) ? request.getParameter("lang") : "";
					com.jcorporate.expresso.core.misc.ConfigJdbc configJdbc=com.jcorporate.expresso.core.misc.ConfigManager.getJdbc("default");
				    String dbDriver = configJdbc.getDriver();
				    String connString=configJdbc.getUrl();
				    String user=configJdbc.getLogin();
				    String pwd=configJdbc.getPassword();
				    dbConnManager= hrm.util.DBConnectionManager.getInstance(dbDriver, connString, user, pwd, 50);
			        conn = dbConnManager.getConnection("topmostread");	
				    String strSql = "update login set language = '" +lang+"' where username = '" +username+"'";
			        java.sql.PreparedStatement st=conn.prepareStatement(strSql);
		    		st.execute();
		    		st.close();
		    		session.setPersistentAttribute("language", lang);
					redirectRequest(request, response, hreq.getContextPath() + "/user/homefrm.jsp");
				}catch(Exception ex){
				ex.printStackTrace();
				}finally{
					dbConnManager.freeConnection("topmostread", conn);
				}
			return response;
	}
	
	protected ControllerResponse runDuyetState(ControllerRequest request,
			ControllerResponse response) throws ControllerException,
			NonHandleableException {
		ServletControllerRequest sr = (ServletControllerRequest) request;
        javax.servlet.http.HttpServletRequest hreq = (javax.servlet.http.HttpServletRequest) sr.getServletRequest();
        java.sql.Connection conn = null;
				try{
					String strMaso_Phieu1 = (request.getParameter("maso_phieu") != null) ? request.getParameter("maso_phieu") : "";
					String strMaso_Phieu = UTF8.UTF8(strMaso_Phieu1);
					String songay_duocduyet = (request.getParameter("songay_duocduyet") != null) ? request.getParameter("songay_duocduyet") : "";
					String trangthaiduyet = (request.getParameter("trangthaiduyet") != null) ? request.getParameter("trangthaiduyet") : "";
					String sqlSelectPn = ("select a.*, b.songay_dangky from web_phep_phieudk_ct a, web_phep_phieudk_nv b " +
										"where a.maso_phieu=b.maso_phieu and a.maso_phieu='"+strMaso_Phieu+"'");
					
					//String strSqlKhongduyetPn = "execute procedure WEB_KHONG_DUYET_PHEP('"+strMaso_Phieu+"')";
					//String strSqlDeletePn = "execute procedure WEB_XOA_DANGKY_PHEPNAM('123')";
					//System.out.println(strMaso_Phieu);
					com.jcorporate.expresso.core.misc.ConfigJdbc configJdbc=com.jcorporate.expresso.core.misc.ConfigManager.getJdbc("default");
					String dbDriver = configJdbc.getDriver();
					String connString=configJdbc.getUrl();
					String user=configJdbc.getLogin();
					String pwd=configJdbc.getPassword();
					dbConnManager= hrm.util.DBConnectionManager.getInstance(dbDriver, connString, user, pwd, 50);
				    conn = dbConnManager.getConnection("topmostread");
				    conn.setAutoCommit(false);
			    	java.sql.Statement st=conn.createStatement();
			    	ResultSet rs = null;
			    	
			    //goi mail
			    	hrm.resource.Res resource = new hrm.resource.Res("vi");
		    		String strSqltemp = "select * from WEB_PHEP_PHIEUDK_CT where maso_phieu = '"+strMaso_Phieu+"'";
		    		java.sql.Statement sttemp=conn.createStatement();
		    		ResultSet rstemp = sttemp.executeQuery(strSqltemp);
		    		String arrUsername = "";
		    		String datefrom = "";
		    		String dateto = "";
		    		String lydonghi = "";
		    		String username = "";
		    		if(rstemp.next()){
		    			arrUsername = rstemp.getString(2) + "*-*" + rstemp.getString(7) + "*-*" + rstemp.getString(8) + "*-*";
		    			datefrom = SString.toString(rstemp.getDate(3), "dd/MM/yyyy");
		    			dateto = SString.toString(rstemp.getDate(4), "dd/MM/yyyy");
		    			lydonghi = rstemp.getString(6);
		    			username = rstemp.getString(2);
		    		}
		    		rstemp.close();
		    		sttemp.close();
		    		
		    		String strsqlListmail = "select * from WEB_PHEP_MAIL";
		    		rs = st.executeQuery(strsqlListmail);
		    		while(rs.next())
		    			arrUsername = arrUsername + rs.getString(1) + "*-*";
		    		
		            String[] arrCanhanid = SString.parseListParam(arrUsername.trim(), "*-*");
		    		String strListemail = "";
		    		String strListname = "";
		    		String strSql = "";
		    		
		    		for(int i = 0; i<arrCanhanid.length; i++){
	                    strSql = "select first_name, middle_name, last_name, email from hr_employee where employee_no = '" +arrCanhanid[i]+"'";
	                    rs = st.executeQuery(strSql);
	                    if(rs.next()){
	                    	strListemail = strListemail + rs.getString(4) + "*-*";
	                    	strListname = strListname + rs.getString(3) + " " + rs.getString(2) + " " +
	                    					rs.getString(1) + "*-*";
	                    }
		    		}
		    		String[] arrEmai = SString.parseListParam(strListemail.trim(), "*-*");
		    		String[] arrName = SString.parseListParam(strListname.trim(), "*-*");
		    		String noidungnhacnhoEmail = "<b>" + resource._res("mail.dkp.title") + "</b>" + 
		    			"<p>" + resource._res("mail.dkp.canhan") + " " + username + " - " + arrName[0] +
		    			"<p>" + resource._res("mail.dkp.datefrom") + " " + datefrom + " " + 
		    			resource._res("mail.dkp.dateto") + " " + dateto +
		    			"<p>" + resource._res("mail.dkp.lydonghi") + " " + lydonghi; 
		    			
			    //end goi mail
		    		
			    	String strSqlDuyetPn = "";
			    	String strSqlDangkyphep = "";
			    	rs = st.executeQuery(sqlSelectPn);
			    	if(rs.next()){
			    		if(trangthaiduyet.equals("-1")){
				    		if(Double.parseDouble(songay_duocduyet)>=rs.getDouble(9)){
				    			strSqlDuyetPn = ("execute procedure WEB_DUYET_PHEP('"+strMaso_Phieu+"')");
				    			strSqlDangkyphep = "execute procedure WEB_DANGKY_PHEPNAM_HRM('"+rs.getString(2)+"'," +
															"'"+rs.getString(5)+"','"+SString.toString(rs.getDate(3), "MM/dd/yyyy")+"',"+
															"'"+SString.toString(rs.getDate(4), "MM/dd/yyyy")+"','"+rs.getString(6)+"',1,'"+rs.getString(7)+"','"+rs.getString(8)+"')";
				    			java.sql.Statement stdp=conn.createStatement();
								stdp.execute(strSqlDuyetPn);
								stdp.close();
								conn.commit();
								java.sql.Statement stdkp=conn.createStatement();
								stdkp.execute(strSqlDangkyphep);
								stdkp.close();
								conn.commit();
								
							//Gui mail
								noidungnhacnhoEmail = noidungnhacnhoEmail + "<p>" + resource._res("mail.dkp.trangthai");
					    		for(int i = 0; i<arrCanhanid.length; i++){
					    			if(i!=2)
					    				hrm.util.SendMail.sendMail(arrEmai[i], resource._res("mail.dkp.title"), noidungnhacnhoEmail);
					    		}
							//End goi mail
				    		}
				    		else{
				    			strSqlDuyetPn = ("execute procedure WEB_DUYET_PHEP_CHUYEN_CAP2('"+strMaso_Phieu+"')");
				    			java.sql.Statement stdp=conn.createStatement();
				    			stdp.execute(strSqlDuyetPn);
								stdp.close();
								conn.commit();
								//Gui mail
								noidungnhacnhoEmail = noidungnhacnhoEmail + "<p>" + resource._res("mail.dkp.trangthai2");
					    		for(int i = 0; i<arrCanhanid.length; i++){
					    			if(i!=0 && i!=1)
					    				hrm.util.SendMail.sendMail(arrEmai[i], resource._res("mail.dkp.title"), noidungnhacnhoEmail);
					    		}
							//End goi mail
				    		}
			    		}
			    		else{
			    			strSqlDuyetPn = ("execute procedure WEB_DUYET_PHEP('"+strMaso_Phieu+"')");
			    			strSqlDangkyphep = "execute procedure WEB_DANGKY_PHEPNAM_HRM('"+rs.getString(2)+"'," +
														"'"+rs.getString(5)+"','"+SString.toString(rs.getDate(3), "MM/dd/yyyy")+"',"+
														"'"+SString.toString(rs.getDate(4), "MM/dd/yyyy")+"','"+rs.getString(6)+"',1,'"+rs.getString(7)+"','"+rs.getString(8)+"')";
			    			java.sql.Statement stdp=conn.createStatement();
							stdp.execute(strSqlDuyetPn);
							stdp.close();
							conn.commit();
							java.sql.Statement stdkp=conn.createStatement();
							stdkp.execute(strSqlDangkyphep);
							stdkp.close();
							conn.commit();
							//Gui mail
							noidungnhacnhoEmail = noidungnhacnhoEmail + "<p>" + resource._res("mail.dkp.trangthai");
				    		for(int i = 0; i<arrCanhanid.length; i++){
				    			hrm.util.SendMail.sendMail(arrEmai[i], resource._res("mail.dkp.title"), noidungnhacnhoEmail);
				    		}
						//End goi mail
							
			    		}	
			    	}
			    	//System.out.print(check);
			    	rs.close();
			    	st.close();
			    	conn.commit();
					redirectRequest(request, response, hreq.getContextPath() + "/user/duyetphepfrm.jsp");
				}catch(Exception ex){
					ex.printStackTrace();
				}finally{
					dbConnManager.freeConnection("topmostread", conn);
				}
			return response;
	}
	
	protected ControllerResponse runKhongduyetState(ControllerRequest request,
			ControllerResponse response) throws ControllerException,
			NonHandleableException {
		ServletControllerRequest sr = (ServletControllerRequest) request;
        javax.servlet.http.HttpServletRequest hreq = (javax.servlet.http.HttpServletRequest) sr.getServletRequest();
        java.sql.Connection conn = null;
				try{
					String strMaso_Phieu1 = (request.getParameter("maso_phieu") != null) ? request.getParameter("maso_phieu") : "";
					String strMaso_Phieu = UTF8.UTF8(strMaso_Phieu1);
					String strLydokhongduyet1 = (request.getParameter("lydokhongduyet") != null) ? request.getParameter("lydokhongduyet") : "";
					String strLydokhongduyet = UTF8.UTF8(strLydokhongduyet1);
					
					String strSqlKhongduyetPn = "execute procedure WEB_KHONG_DUYET_PHEP('"+strMaso_Phieu+"','"+strLydokhongduyet+"')";
					//String strSqlDeletePn = "execute procedure WEB_XOA_DANGKY_PHEPNAM('123')";
					//System.out.println(strMaso_Phieu);
					com.jcorporate.expresso.core.misc.ConfigJdbc configJdbc=com.jcorporate.expresso.core.misc.ConfigManager.getJdbc("default");
					String dbDriver = configJdbc.getDriver();
					String connString=configJdbc.getUrl();
					String user=configJdbc.getLogin();
					String pwd=configJdbc.getPassword();
					dbConnManager= hrm.util.DBConnectionManager.getInstance(dbDriver, connString, user, pwd, 50);
				    conn = dbConnManager.getConnection("topmostread");
				    conn.setAutoCommit(false);
			    	java.sql.Statement st=conn.createStatement();
			    	st.execute(strSqlKhongduyetPn);
			    	//System.out.print(check);
			    	st.close();
			    	conn.commit();
					redirectRequest(request, response, hreq.getContextPath() + "/user/duyetphepfrm.jsp");
				}catch(Exception ex){
					ex.printStackTrace();
				}finally{
					dbConnManager.freeConnection("topmostread", conn);
				}
			return response;
	}
	
	
	protected ControllerResponse runRegistry_tempState(ControllerRequest request,
			ControllerResponse response) throws ControllerException,
			NonHandleableException {
		ServletControllerRequest sr = (ServletControllerRequest) request;
        javax.servlet.http.HttpServletRequest hreq = (javax.servlet.http.HttpServletRequest) sr.getServletRequest();
        //PersistentSession session = request.getSession();
        java.sql.Connection conn = null;
        	try{
					
        		String username = (request.getParameter("username") != null) ? request.getParameter("username") : "";
				String loaiphep = (request.getParameter("loaiphep") != null) ? request.getParameter("loaiphep") : "";
				String datefrom = (request.getParameter("tungay") != null) ? request.getParameter("tungay") : "";
				java.util.Date tungay = SString.parseDate(datefrom,"dd/MM/yyyy");
				String dateto = (request.getParameter("denngay") != null) ? request.getParameter("denngay") : "";
				java.util.Date denngay= SString.parseDate(dateto,"dd/MM/yyyy");
				String lydonghi1 = (request.getParameter("lydonghi") != null) ? request.getParameter("lydonghi") : "";
				String lydonghi = UTF8.UTF8(lydonghi1);
				String duyetcap1 = (request.getParameter("duyetcap1") != null) ? request.getParameter("duyetcap1") : "";
				String duyetcap2 = (request.getParameter("duyetcap2") != null) ? request.getParameter("duyetcap2") : "";
				String strSqlDangkyphep = "execute procedure WEB_DANGKY_PHEPNAM_TMP('"+username+"'," +
						"'"+loaiphep+"','"+SString.toString(tungay, "MM/dd/yyyy")+"',"+
						"'"+SString.toString(denngay, "MM/dd/yyyy")+"','"+lydonghi+"','"+duyetcap1+"','"+duyetcap2+"')";
				//System.out.print(strSqlDangkyphep);
				com.jcorporate.expresso.core.misc.ConfigJdbc configJdbc=com.jcorporate.expresso.core.misc.ConfigManager.getJdbc("default");
			    String dbDriver = configJdbc.getDriver();
			    String connString=configJdbc.getUrl();
			    String user=configJdbc.getLogin();
			    String pwd=configJdbc.getPassword();
			    dbConnManager= hrm.util.DBConnectionManager.getInstance(dbDriver, connString, user, pwd, 50);
		        conn = dbConnManager.getConnection("topmostread");
		        conn.setAutoCommit(false);
		        java.sql.Statement st=conn.createStatement();
		    	st.execute(strSqlDangkyphep);
		        
//			    java.sql.PreparedStatement st=conn.prepareStatement(strSqlDangkyphep);
//	    		st.execute();
	    		st.close();
	    		conn.commit();
				redirectRequest(request, response, hreq.getContextPath() + "/user/phepnamfrm.jsp");
			}catch(Exception ex){
			ex.printStackTrace();
			}finally{
				dbConnManager.freeConnection("topmostread", conn);
			}
		return response;
	}
	
	
	
	protected ControllerResponse runRegistryState(ControllerRequest request,
			ControllerResponse response) throws ControllerException,
			NonHandleableException {
		ServletControllerRequest sr = (ServletControllerRequest) request;
        javax.servlet.http.HttpServletRequest hreq = (javax.servlet.http.HttpServletRequest) sr.getServletRequest();
        //PersistentSession session = request.getSession();
        java.sql.Connection conn = null;
        	try{
					
					String username = (request.getParameter("username") != null) ? request.getParameter("username") : "";
					String loaiphep = (request.getParameter("loaiphep") != null) ? request.getParameter("loaiphep") : "";
					String datefrom = (request.getParameter("tungay") != null) ? request.getParameter("tungay") : "";
					java.util.Date tungay = SString.parseDate(datefrom,"dd/MM/yyyy");
					String dateto = (request.getParameter("denngay") != null) ? request.getParameter("denngay") : "";
					java.util.Date denngay= SString.parseDate(dateto,"dd/MM/yyyy");
					String lydonghi1 = (request.getParameter("lydonghi") != null) ? request.getParameter("lydonghi") : "";
					String lydonghi = UTF8.UTF8(lydonghi1);
					String duyetcap1 = (request.getParameter("duyetcap1") != null) ? request.getParameter("duyetcap1") : "";
					String duyetcap2 = (request.getParameter("duyetcap2") != null) ? request.getParameter("duyetcap2") : "";
					String strSqlDangkyphep = "execute procedure WEB_DANGKY_PHEPNAM_TMP('"+username+"'," +
							"'"+loaiphep+"','"+SString.toString(tungay, "MM/dd/yyyy")+"',"+
							"'"+SString.toString(denngay, "MM/dd/yyyy")+"','"+lydonghi+"','"+duyetcap1+"','"+duyetcap2+"')";
					//System.out.println(strSqlDangkyphep);
					com.jcorporate.expresso.core.misc.ConfigJdbc configJdbc=com.jcorporate.expresso.core.misc.ConfigManager.getJdbc("default");
				    String dbDriver = configJdbc.getDriver();
				    String connString=configJdbc.getUrl();
				    String user=configJdbc.getLogin();
				    String pwd=configJdbc.getPassword();
				    dbConnManager= hrm.util.DBConnectionManager.getInstance(dbDriver, connString, user, pwd, 50);
			        conn = dbConnManager.getConnection("topmostread");	
			        conn.setAutoCommit(false);
			        java.sql.PreparedStatement st=conn.prepareStatement(strSqlDangkyphep);
				    st.execute();
		    		//st.close();
		    		conn.commit();
		    		//conn.close();
		    		
		    		ResultSet rs = null;
		    		hrm.resource.Res resource = new hrm.resource.Res("vi");
		    		
		    		String arrUsername = "";
		    		arrUsername = username + "*-*" + duyetcap1 + "*-*";
		    		String strsqlListmail = "select * from WEB_PHEP_MAIL";
		    		rs = st.executeQuery(strsqlListmail);
		    		while(rs.next())
		    			arrUsername = arrUsername + rs.getString(1) + "*-*";
		    		
		            String[] arrCanhanid = SString.parseListParam(arrUsername.trim(), "*-*");
		    		String strListemail = "";
		    		String strListname = "";
		    		String strSql = "";
		    		
		    		for(int i = 0; i<arrCanhanid.length; i++){
	                    strSql = "select first_name, middle_name, last_name, email from hr_employee where employee_no = '" +arrCanhanid[i]+"'";
	                    rs = st.executeQuery(strSql);
	                    if(rs.next()){
	                    	strListemail = strListemail + rs.getString(4) + "*-*";
	                    	strListname = strListname + rs.getString(3) + " " + rs.getString(2) + " " +
	                    					rs.getString(1) + "*-*";
	                    }
		    		}
		    		rs.close();
		    		st.close();
		    		
		    		String[] arrEmai = SString.parseListParam(strListemail.trim(), "*-*");
		    		String[] arrName = SString.parseListParam(strListname.trim(), "*-*");
		    		String noidungnhacnhoEmail = "<b>" + resource._res("mail.dkp.title") + "</b>" + 
		    			"<p>" + resource._res("mail.dkp.canhan") + " " + username + " - " + arrName[0] +
		    			"<p>" + resource._res("mail.dkp.datefrom") + " " + datefrom + " " + 
		    			resource._res("mail.dkp.dateto") + " " + dateto +
		    			"<p>" + resource._res("mail.dkp.lydonghi") + " " + lydonghi +
		    			"<p>" + resource._res("mail.dkp.trangthai1");
		    		
		    		for(int i = 0; i<arrCanhanid.length; i++){
		    			hrm.util.SendMail.sendMail(arrEmai[i], resource._res("mail.dkp.title"), noidungnhacnhoEmail);
		    		}
		    		
					redirectRequest(request, response, hreq.getContextPath() + "/user/phepnamfrm.jsp");
				}catch(Exception ex){
					ex.printStackTrace();
				}finally{
					dbConnManager.freeConnection("topmostread", conn);
				}
			return response;
	}
	
	protected ControllerResponse runUyquyenduyetphepState(ControllerRequest request,
			ControllerResponse response) throws ControllerException,
			NonHandleableException {
		ServletControllerRequest sr = (ServletControllerRequest) request;
        javax.servlet.http.HttpServletRequest hreq = (javax.servlet.http.HttpServletRequest) sr.getServletRequest();
        //PersistentSession session = request.getSession();
        java.sql.Connection conn = null;
        	try{
					
					String username = (request.getParameter("username") != null) ? request.getParameter("username") : "";
					String manvduocuyquyen = (request.getParameter("nguoiduocuq") != null) ? request.getParameter("nguoiduocuq") : "";
					String datefrom = (request.getParameter("tungay") != null) ? request.getParameter("tungay") : "";
					java.util.Date tungay = SString.parseDate(datefrom,"dd/MM/yyyy");
					String dateto = (request.getParameter("denngay") != null) ? request.getParameter("denngay") : "";
					java.util.Date denngay= SString.parseDate(dateto,"dd/MM/yyyy");
					String lydouyquyen1 = (request.getParameter("lydouq") != null) ? request.getParameter("lydouq") : "";
					String lydouyquyen = UTF8.UTF8(lydouyquyen1);
					String strSqlUyquyen = "execute procedure WEB_THEM_THONGTIN_UYQUYEN('"+username+"'," +
							"'"+SString.toString(tungay, "MM/dd/yyyy")+"'," + "'"+SString.toString(denngay, "MM/dd/yyyy")+"'," +
							"'"+manvduocuyquyen+"','" +lydouyquyen+"')";
					com.jcorporate.expresso.core.misc.ConfigJdbc configJdbc=com.jcorporate.expresso.core.misc.ConfigManager.getJdbc("default");
				    String dbDriver = configJdbc.getDriver();
				    String connString=configJdbc.getUrl();
				    String user=configJdbc.getLogin();
				    String pwd=configJdbc.getPassword();
				    dbConnManager= hrm.util.DBConnectionManager.getInstance(dbDriver, connString, user, pwd, 50);
			        conn = dbConnManager.getConnection("topmostread");	
				    java.sql.PreparedStatement st=conn.prepareStatement(strSqlUyquyen);
					//ResultSet rs = st.executeQuery();
		    		//ResultSet rstdhv = 
		    		st.execute();
		    		st.close();
		    		//conn.close();
					redirectRequest(request, response, hreq.getContextPath() + "/user/uyquyenduyetphepfrm.jsp");
				}catch(Exception ex){
				ex.printStackTrace();
				}finally{
					dbConnManager.freeConnection("topmostread", conn);
				}
			return response;
	}
	
	protected ControllerResponse runAddTdnnState(ControllerRequest request,
			ControllerResponse response) throws ControllerException,
			NonHandleableException, IOException {
		ServletControllerRequest sr = (ServletControllerRequest) request;
        javax.servlet.http.HttpServletRequest hreq = (javax.servlet.http.HttpServletRequest) sr.getServletRequest();
        //PersistentSession session = request.getSession();
        java.sql.Connection conn = null;
        	try{
					
					String username = (request.getParameter("username") != null) ? request.getParameter("username") : "";
					String ma_ngoaingu1 = (request.getParameter("ma_ngoaingu") != null) ? request.getParameter("ma_ngoaingu") : "";
					String ma_ngoaingu = UTF8.UTF8(ma_ngoaingu1);
					String ma_trinhdonn1 = (request.getParameter("ma_trinhdonn") != null) ? request.getParameter("ma_trinhdonn") : "";
					String ma_trinhdonn = UTF8.UTF8(ma_trinhdonn1);
					String strSqlAddtdnn = "execute procedure WEB_THEM_TRINHDO_NGOAINGU('"+username+"', " +
							"'"+ma_ngoaingu+"', '"+ma_trinhdonn+"', ";
					
					String ngaycaptdnn = (request.getParameter("ngaycaptdnn") != null) ? request.getParameter("ngaycaptdnn") : "";
					java.util.Date datengaycaptdnn;
					if(ngaycaptdnn==null || ngaycaptdnn.equals("")){
						strSqlAddtdnn = strSqlAddtdnn + "NULL, ";
					}
					else{
						datengaycaptdnn = SString.parseDate(ngaycaptdnn, "dd/MM/yyyy");
						strSqlAddtdnn = strSqlAddtdnn + "'"+SString.toString(datengaycaptdnn,"MM/dd/yyyy")+"', ";
					}
					String noicaptdnn1 = (request.getParameter("noicaptdnn") != null) ? request.getParameter("noicaptdnn") : "";
					String noicaptdnn = UTF8.UTF8(noicaptdnn1);
					String thanhtichtdnn1 = (request.getParameter("thanhtichtdnn") != null) ? request.getParameter("thanhtichtdnn") : "";
					String thanhtichtdnn = UTF8.UTF8(thanhtichtdnn1);
					strSqlAddtdnn = strSqlAddtdnn + "'"+noicaptdnn+"', '"+thanhtichtdnn+"', NULL)";		
					
					System.out.print(strSqlAddtdnn);
					com.jcorporate.expresso.core.misc.ConfigJdbc configJdbc=com.jcorporate.expresso.core.misc.ConfigManager.getJdbc("default");
				    String dbDriver = configJdbc.getDriver();
				    String connString=configJdbc.getUrl();
				    String user=configJdbc.getLogin();
				    String pwd=configJdbc.getPassword();
				    dbConnManager= hrm.util.DBConnectionManager.getInstance(dbDriver, connString, user, pwd, 50);
			        conn = dbConnManager.getConnection("topmostread");	
				    java.sql.PreparedStatement st=conn.prepareStatement(strSqlAddtdnn);
					//ResultSet rs = st.executeQuery();
		    		//ResultSet rstdhv =
				    
		    		int check = st.executeUpdate();
		    		System.out.println(check);
		    		
		    		st.close();
					redirectRequest(request, response, hreq.getContextPath() + "/user/updatetrinhdonanglucfrm.jsp");
				}catch(Exception ex){
					redirectRequest(request, response, hreq.getContextPath() + "/user/adderrorfrm.jsp");
					//ex.printStackTrace();
				}finally{
					dbConnManager.freeConnection("topmostread", conn);
				}
			return response;
	}
	
	protected ControllerResponse runAddTdknState(ControllerRequest request,
			ControllerResponse response) throws ControllerException,
			NonHandleableException, IOException {
		ServletControllerRequest sr = (ServletControllerRequest) request;
        javax.servlet.http.HttpServletRequest hreq = (javax.servlet.http.HttpServletRequest) sr.getServletRequest();
        //PersistentSession session = request.getSession();
        java.sql.Connection conn = null;
        	try{
					
					String username = (request.getParameter("username") != null) ? request.getParameter("username") : "";
					String ma_kynang1 = (request.getParameter("ma_kynang") != null) ? request.getParameter("ma_kynang") : "";
					String ma_kynang = UTF8.UTF8(ma_kynang1);
					String ma_trinhdokn1 = (request.getParameter("ma_trinhdokn") != null) ? request.getParameter("ma_trinhdokn") : "";
					String ma_trinhdokn = UTF8.UTF8(ma_trinhdokn1);
					String strSqlAddtdkn = "execute procedure WEB_THEM_TRINHDO_KYNANG('"+username+"', " +
							"'"+ma_kynang+"', '"+ma_trinhdokn+"', ";
					
					String ngaycaptdkn = (request.getParameter("ngaycaptdkn") != null) ? request.getParameter("ngaycaptdkn") : "";
					java.util.Date datengaycaptdkn;
					if(ngaycaptdkn==null || ngaycaptdkn.equals("")){
						strSqlAddtdkn = strSqlAddtdkn + "NULL, ";
					}
					else{
						datengaycaptdkn = SString.parseDate(ngaycaptdkn, "dd/MM/yyyy");
						strSqlAddtdkn = strSqlAddtdkn + "'"+SString.toString(datengaycaptdkn,"MM/dd/yyyy")+"', ";
					}
					String noicaptdkn1 = (request.getParameter("noicaptdkn") != null) ? request.getParameter("noicaptdkn") : "";
					String noicaptdkn = UTF8.UTF8(noicaptdkn1);
					String thanhtichtdkn1 = (request.getParameter("thanhtichtdkn") != null) ? request.getParameter("thanhtichtdkn") : "";
					String thanhtichtdkn = UTF8.UTF8(thanhtichtdkn1);
					strSqlAddtdkn = strSqlAddtdkn + "'"+noicaptdkn+"', '"+thanhtichtdkn+"', NULL)";		
					
					System.out.print(strSqlAddtdkn);
					com.jcorporate.expresso.core.misc.ConfigJdbc configJdbc=com.jcorporate.expresso.core.misc.ConfigManager.getJdbc("default");
				    String dbDriver = configJdbc.getDriver();
				    String connString=configJdbc.getUrl();
				    String user=configJdbc.getLogin();
				    String pwd=configJdbc.getPassword();
				    dbConnManager= hrm.util.DBConnectionManager.getInstance(dbDriver, connString, user, pwd, 50);
			        conn = dbConnManager.getConnection("topmostread");	
				    java.sql.PreparedStatement st=conn.prepareStatement(strSqlAddtdkn);
					//ResultSet rs = st.executeQuery();
		    		//ResultSet rstdhv =
				    
		    		st.execute();
		    		st.close();
					redirectRequest(request, response, hreq.getContextPath() + "/user/updatetrinhdonanglucfrm.jsp");
				}catch(Exception ex){
					redirectRequest(request, response, hreq.getContextPath() + "/user/adderrorfrm.jsp");

				//ex.printStackTrace();
				}finally{
					dbConnManager.freeConnection("topmostread", conn);
				}
			return response;
	}
	
	protected ControllerResponse runAddTdcmState(ControllerRequest request,
			ControllerResponse response) throws ControllerException,
			NonHandleableException, IOException {
		ServletControllerRequest sr = (ServletControllerRequest) request;
        javax.servlet.http.HttpServletRequest hreq = (javax.servlet.http.HttpServletRequest) sr.getServletRequest();
        //PersistentSession session = request.getSession();
        java.sql.Connection conn = null;
        	try{
					
					String username = (request.getParameter("username") != null) ? request.getParameter("username") : "";
					String ma_chuyenmon1 = (request.getParameter("ma_chuyenmon") != null) ? request.getParameter("ma_chuyenmon") : "";
					String ma_chuyenmon = UTF8.UTF8(ma_chuyenmon1);
					String ma_trinhdocm1 = (request.getParameter("ma_trinhdocm") != null) ? request.getParameter("ma_trinhdocm") : "";
					String ma_trinhdocm = UTF8.UTF8(ma_trinhdocm1);
					String strSqlAddtdcm = "execute procedure WEB_THEM_CHUYENMON_KHAC('"+username+"', " +
							"'"+ma_chuyenmon+"', '"+ma_trinhdocm+"', ";
					
					String ngaycaptdcm = (request.getParameter("ngaycaptdcm") != null) ? request.getParameter("ngaycaptdcm") : "";
					java.util.Date datengaycaptdcm;
					if(ngaycaptdcm==null || ngaycaptdcm.equals("")){
						strSqlAddtdcm = strSqlAddtdcm + "NULL, ";
					}
					else{
						datengaycaptdcm = SString.parseDate(ngaycaptdcm, "dd/MM/yyyy");
						strSqlAddtdcm = strSqlAddtdcm + "'"+SString.toString(datengaycaptdcm,"MM/dd/yyyy")+"', ";
					}
					String noicaptdcm1 = (request.getParameter("noicaptdcm") != null) ? request.getParameter("noicaptdcm") : "";
					String noicaptdcm = UTF8.UTF8(noicaptdcm1);
					String thanhtichtdcm1 = (request.getParameter("thanhtichtdcm") != null) ? request.getParameter("thanhtichtdcm") : "";
					String thanhtichtdcm = UTF8.UTF8(thanhtichtdcm1);
					strSqlAddtdcm = strSqlAddtdcm + "'"+noicaptdcm+"', '"+thanhtichtdcm+"', NULL)";		
					
					System.out.print(strSqlAddtdcm);
					com.jcorporate.expresso.core.misc.ConfigJdbc configJdbc=com.jcorporate.expresso.core.misc.ConfigManager.getJdbc("default");
				    String dbDriver = configJdbc.getDriver();
				    String connString=configJdbc.getUrl();
				    String user=configJdbc.getLogin();
				    String pwd=configJdbc.getPassword();
				    dbConnManager= hrm.util.DBConnectionManager.getInstance(dbDriver, connString, user, pwd, 50);
			        conn = dbConnManager.getConnection("topmostread");	
				    java.sql.PreparedStatement st=conn.prepareStatement(strSqlAddtdcm);
					//ResultSet rs = st.executeQuery();
		    		//ResultSet rstdhv =
				    
		    		st.execute();
		    		st.close();
					redirectRequest(request, response, hreq.getContextPath() + "/user/updatetrinhdonanglucfrm.jsp");
				}catch(Exception ex){
					redirectRequest(request, response, hreq.getContextPath() + "/user/adderrorfrm.jsp");

				//ex.printStackTrace();
				}finally{
					dbConnManager.freeConnection("topmostread", conn);
				}
			return response;
	}
}
