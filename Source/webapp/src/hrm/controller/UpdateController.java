package hrm.controller;

//import java.text.DateFormat;
//import java.util.Date;

import hrm.model.LoginModel;
import hrm.util.*;

import com.jcorporate.expresso.core.controller.*;
import com.jcorporate.expresso.core.controller.session.PersistentSession;
// com.jcorporate.expresso.core.misc.DateTime;

public class UpdateController extends DBController  {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public UpdateController(){
		State updatettcn = new State("updatettcn", "updatettcn");
		addState(updatettcn);
		
		State updatetdhv = new State("updatetdhv","updatetdhv");
		addState(updatetdhv);
		
		State updatepass = new State("updatepass","updatepass");
		addState(updatepass);
		
		State updatetdhvc = new State("updatetdhvc","updatetdhvc");
		addState(updatetdhvc);
		
		State updatetdnn = new State("updatetdnn","updatetdnn");
		addState(updatetdnn);
		
		State updatetdkn = new State("updatetdkn","updatetdkn");
		addState(updatetdkn);
		
		State updatetdcm = new State("updatetdcm","updatetdcm");
		addState(updatetdcm);
		
		setInitialState("updatettcn");
	}
	
	hrm.util.DBConnectionManager dbConnManager;
	
	protected ControllerResponse runUpdatepassState(ControllerRequest request,
			ControllerResponse response) throws ControllerException,
			NonHandleableException {
		ServletControllerRequest sr = (ServletControllerRequest) request;
        javax.servlet.http.HttpServletRequest hreq = (javax.servlet.http.HttpServletRequest) sr.getServletRequest();
        PersistentSession session = request.getSession();
				try{
					System.out.print("Vao state");
					String username = (request.getParameter("username") != null) ? request.getParameter("username") : "";
					String pass = (request.getParameter("newpass") != null) ? request.getParameter("newpass") : "";
					LoginModel model = new LoginModel();//.getLogin(username);
					System.out.println("model model model:" + model);
					MD5 md5 = new MD5(pass);
			        String MD5Password = md5.asHex();
			        System.out.println("username:" + username);
					model.setUser(username);
					model.setPass(MD5Password);
					model.setCheck(1);
					LoginModel.update(model);
					//session.invalidate();
					//session.setPersistentAttribute("logusername", username);
					//session..removePersistentAttribute("logpass");
					session.setPersistentAttribute("logpass", pass);
					redirectRequest(request, response, hreq.getContextPath() + "/user/homefrm.jsp?cm=tintuc");
				}catch(Exception ex){
				ex.printStackTrace();
			}
			return response;
	}
	
	protected ControllerResponse runUpdatetdhvcState(ControllerRequest request,
			ControllerResponse response) throws ControllerException,
			NonHandleableException {
		ServletControllerRequest sr = (ServletControllerRequest) request;
        javax.servlet.http.HttpServletRequest hreq = (javax.servlet.http.HttpServletRequest) sr.getServletRequest();
        //PersistentSession session = request.getSession();
				try{
					//request.setAttribute("CharacterEncoding", "UTF-8");
					//System.out.print("sdfsdfsdfd" + request.getAttribute("CharacterEncoding"));
					//System.out.print("sdfsdfsdfd" + request.
					
					String manv = (request.getParameter("manv") != null) ? request.getParameter("manv") : "";
					String strSqlUpdatetdhvc = "execute procedure WEB_SUA_TRINHDO_HOCVAN('"+manv+"', '"+manv+"', ";
					String trinhdohocvan = (request.getParameter("trinhdohocvan") != null) ? request.getParameter("trinhdohocvan") : "";
					if(trinhdohocvan == null || trinhdohocvan.equals(""))
						strSqlUpdatetdhvc = strSqlUpdatetdhvc + "NULL, ";
					else
						strSqlUpdatetdhvc = strSqlUpdatetdhvc + "'"+trinhdohocvan+"', ";
					String trinhdovanhoa = (request.getParameter("trinhdovanhoa") != null) ? request.getParameter("trinhdovanhoa") : "";
					if(trinhdovanhoa == null || trinhdovanhoa.equals(""))
						strSqlUpdatetdhvc = strSqlUpdatetdhvc + "NULL, ";
					else 
						strSqlUpdatetdhvc = strSqlUpdatetdhvc + "'"+trinhdovanhoa+"', ";
					String sotruongcongtac1 = (request.getParameter("sotruongcongtac") != null) ? request.getParameter("sotruongcongtac") : "";
					String sotruongcongtac = UTF8.UTF8(sotruongcongtac1);
					String nghenghiep = (request.getParameter("nghenghiep") != null) ? request.getParameter("nghenghiep") : "";
					if(nghenghiep == null || nghenghiep.equals(""))
						strSqlUpdatetdhvc = strSqlUpdatetdhvc + "'"+sotruongcongtac+"', NULL, ";
					else
						strSqlUpdatetdhvc = strSqlUpdatetdhvc + "'"+sotruongcongtac+"', '"+nghenghiep+"', ";
					String namtotnghiep = (request.getParameter("namtotnghiep") != null) ? request.getParameter("namtotnghiep") : "";
					String congvieclaunhat1 = (request.getParameter("congvieclaunhat") != null) ? request.getParameter("congvieclaunhat") : "";
					String congvieclaunhat = UTF8.UTF8(congvieclaunhat1);
					if(namtotnghiep==null || namtotnghiep.equals(""))
						strSqlUpdatetdhvc = strSqlUpdatetdhvc + "NULL, '"+congvieclaunhat+"')";
					else
						strSqlUpdatetdhvc = strSqlUpdatetdhvc + "'"+Integer.parseInt(namtotnghiep)+"', '"+congvieclaunhat+"')";
			   
			        System.out.print(strSqlUpdatetdhvc);
			        com.jcorporate.expresso.core.misc.ConfigJdbc configJdbc=com.jcorporate.expresso.core.misc.ConfigManager.getJdbc("default");
				    String dbDriver = configJdbc.getDriver();
				    String connString=configJdbc.getUrl();
				    String user=configJdbc.getLogin();
				    String pwd=configJdbc.getPassword();
				    dbConnManager= hrm.util.DBConnectionManager.getInstance(dbDriver, connString, user, pwd, 50);
			        java.sql.Connection conn = dbConnManager.getConnection("topmostread");
		    		java.sql.Statement sttdhv=conn.createStatement();
		    		//ResultSet rstdhv = 
		    		sttdhv.execute(strSqlUpdatetdhvc);
		    		sttdhv.close();
		    		conn.close();
		    		redirectRequest(request, response, hreq.getContextPath() + "/user/updatetrinhdonanglucfrm.jsp");

				}catch(Exception ex){
				ex.printStackTrace();
				}finally{
					dbConnManager.release();
				}
			return response;
	}
	
	protected ControllerResponse runUpdatettcnState(ControllerRequest request,
			ControllerResponse response) throws ControllerException, NonHandleableException
			{
				ServletControllerRequest sr = (ServletControllerRequest) request;
		        javax.servlet.http.HttpServletRequest hreq = (javax.servlet.http.HttpServletRequest) sr.getServletRequest();
		        java.sql.Connection conn = null;
		        try{
		        	String sqlupdatettnv="";
		        	
			        String manv = (request.getParameter("manv") != null) ? request.getParameter("manv") : "";
			        String honv1 = (request.getParameter("honv") != null) ? request.getParameter("honv") : "";
			        String honv = UTF8.UTF8(honv1);
			        System.out.print(honv);
			        String tendemnv1 = (request.getParameter("tendemnv") != null) ? request.getParameter("tendemnv") : "";
			        String tendemnv = UTF8.UTF8(tendemnv1);
			        String tennv1 = (request.getParameter("tennv") != null) ? request.getParameter("tennv") : "";
			        String tennv = UTF8.UTF8(tennv1);
			        String gioitinhnv = (request.getParameter("gioitinhnv") != null) ? request.getParameter("gioitinhnv") : "";
			        System.out.print(gioitinhnv);
			        if(gioitinhnv == null || gioitinhnv.equals(""))
			        	sqlupdatettnv = "execute procedure WEB_SUA_THONGTIN_NHANVIEN('"+manv+"', '"+manv+"', " +
		        		"'"+honv+"', '"+tendemnv+"', '"+tennv+"', NULL, ";
			        else
				        sqlupdatettnv = "execute procedure WEB_SUA_THONGTIN_NHANVIEN('"+manv+"', '"+manv+"', " +
		        		"'"+honv+"', '"+tendemnv+"', '"+tennv+"', '"+Integer.parseInt(gioitinhnv)+"', ";
			        
			        String ngaysinhnv = (request.getParameter("ngaysinhnv") != null) ? request.getParameter("ngaysinhnv") : "";
			        //System.out.print("ngay sinh :" + ngaysinhnv);
			        java.util.Date datengaysinhnv;
			        if(ngaysinhnv==null || ngaysinhnv.equals("")){
			        	sqlupdatettnv=sqlupdatettnv + "NULL, ";
			        	//System.out.print("ngaysinh2");
			        }
			        else {
			        	datengaysinhnv = SString.parseDate(ngaysinhnv, "dd/MM/yyyy");
			        	//System.out.print("datengaysinh:"+datengaysinhnv);
			        	sqlupdatettnv=sqlupdatettnv + "'"+SString.toString(datengaysinhnv, "MM/dd/yyyy")+"', ";
			        }
			        	
			        String honnhannv = (request.getParameter("honnhannv") != null) ? request.getParameter("honnhannv") : "";
			        if(honnhannv == null || honnhannv.equals(""))
			        	sqlupdatettnv = sqlupdatettnv + "NULL, ";
			        else
			        	sqlupdatettnv = sqlupdatettnv + "'"+honnhannv+"', ";
			        
			        String cmndnv = (request.getParameter("cmndnv") != null) ? request.getParameter("cmndnv") : "";
			        String ngaycapcmndnv = (request.getParameter("ngaycapcmndnv") != null) ? request.getParameter("ngaycapcmndnv") : "";
			        java.util.Date datengccmndnv;
			        if(cmndnv == null || cmndnv.equals("")){
			        	sqlupdatettnv = sqlupdatettnv + "NULL, NULL, ";
			        }
			        else{
			        	datengccmndnv = SString.parseDate(ngaycapcmndnv, "dd/MM/yyyy");
			        	sqlupdatettnv = sqlupdatettnv + "'"+cmndnv+"', '"+SString.toString(datengccmndnv, "MM/dd/yyyy")+"', ";
			        }
			        String noicapcmndnv1 = (request.getParameter("noicapcmndnv") != null) ? request.getParameter("noicapcmndnv") : "";
			        String noicapcmndnv = UTF8.UTF8(noicapcmndnv1);
			        String madantocnv = (request.getParameter("dantocnv") != null) ? request.getParameter("dantocnv") : "";
			        if(madantocnv == null || madantocnv.equals(""))
			        	sqlupdatettnv = sqlupdatettnv + "'"+noicapcmndnv+"', NULL, ";
			        else
			        	sqlupdatettnv = sqlupdatettnv + "'"+noicapcmndnv+"', '"+madantocnv+"', ";
			        String matientenv = (request.getParameter("matientenv") != null) ? request.getParameter("matientenv") : "";
			        if(matientenv == null || matientenv.equals("")){
			        	sqlupdatettnv = sqlupdatettnv + "NULL, ";
			        }
			        else {
			        	sqlupdatettnv = sqlupdatettnv + "'"+matientenv+"', ";
			        }
			        String maquoctichnv = (request.getParameter("quoctichnv") != null) ? request.getParameter("quoctichnv") : "";
			        if(maquoctichnv==null || maquoctichnv.equals(""))
			        	sqlupdatettnv = sqlupdatettnv + "NULL, ";
			        else
			        	sqlupdatettnv = sqlupdatettnv + "'"+maquoctichnv+"', ";
			        
			        String matongiaonv = (request.getParameter("tongiaonv") != null) ? request.getParameter("tongiaonv") : "";
			        if(matongiaonv == null || matongiaonv.equals("")){
			        	sqlupdatettnv = sqlupdatettnv + "NULL, ";
			        }
			        else {
			        	sqlupdatettnv = sqlupdatettnv + "'"+matongiaonv+"', ";
			        }
			        String noisinhnv1 = (request.getParameter("noisinhnv") != null) ? request.getParameter("noisinhnv") : "";
			        String noisinhnv = UTF8.UTF8(noisinhnv1);
			        String quequannv1 = (request.getParameter("quequannv") != null) ? request.getParameter("quequannv") : "";
			        String quequannv = UTF8.UTF8(quequannv1);
			        String diachilienlacnv1 = (request.getParameter("dclienhenv") != null) ? request.getParameter("dclienhenv") : "";
			        String diachilienlacnv = UTF8.UTF8(diachilienlacnv1);
			        String diachitamtrunv1 = (request.getParameter("dctamtrunv") != null) ? request.getParameter("dctamtrunv") : "";
			        String diachitamtrunv = UTF8.UTF8(diachitamtrunv1);
			        String diachithuongtrunv1 = (request.getParameter("dcthuongtrunv") != null) ? request.getParameter("dcthuongtrunv") : "";
			        String diachithuongtrunv = UTF8.UTF8(diachithuongtrunv1);
			        String dienthoailienlacnv = (request.getParameter("dienthoainv") != null) ? request.getParameter("dienthoainv") : "";
			        String dienthoaididongnv = (request.getParameter("mobilenv") != null) ? request.getParameter("mobilenv") : "";
			        String emailnv = (request.getParameter("emailnv") != null) ? request.getParameter("emailnv") : "";
			        String websitenv = (request.getParameter("websitenv") != null) ? request.getParameter("websitenv") : "";
			        sqlupdatettnv = sqlupdatettnv + "'"+noisinhnv+"', '"+quequannv+"', '"+diachilienlacnv+"', " +
			        		"'"+diachitamtrunv+"', '"+diachithuongtrunv+"', '"+dienthoailienlacnv+"', " +
			        		"'"+dienthoaididongnv+"', '"+emailnv+"', '"+websitenv+"', ";
			        String mathanhphanxuatthannv = (request.getParameter("xuatthannv") != null) ? request.getParameter("xuatthannv") : "";
			        if(mathanhphanxuatthannv == null || mathanhphanxuatthannv.equals(""))
			        	sqlupdatettnv = sqlupdatettnv + "NULL, ";
			        else 
			        	sqlupdatettnv = sqlupdatettnv + "'"+mathanhphanxuatthannv+"', ";
			        String sotaikhoannv = (request.getParameter("taikhoannv") != null) ? request.getParameter("taikhoannv") : "";
			        String nganhangnv1 = (request.getParameter("nganhangnv") != null) ? request.getParameter("nganhangnv") : "";
			        String nganhangnv = UTF8.UTF8(nganhangnv1);
			        sqlupdatettnv = sqlupdatettnv + "'"+sotaikhoannv+"', '"+nganhangnv+"', ";
			        String sohochieunv = (request.getParameter("passportnv") != null) ? request.getParameter("passportnv") : "";
			        String ngaycaphochieunv = (request.getParameter("ngaycappassport") != null) ? request.getParameter("ngaycappassport") : "";
			        java.util.Date datengaycaphochieunv;
			        if(sohochieunv == null || sohochieunv.equals(""))
			        	sqlupdatettnv = sqlupdatettnv + "NULL, NULL, ";
			        else {
			        	datengaycaphochieunv = SString.parseDate(ngaycaphochieunv, "dd/MM/yyyy");
			        	sqlupdatettnv = sqlupdatettnv + "'"+sohochieunv+"', '"+SString.toString(datengaycaphochieunv, "MM/dd/yyyy")+"', ";
			        }
			        	
			        String noicaphochieunv1 = (request.getParameter("noicappassport") != null) ? request.getParameter("noicappassport") : "";
			        String noicaphcnv = UTF8.UTF8(noicaphochieunv1);
			        String masothuenv = (request.getParameter("masothuenv") != null) ? request.getParameter("masothuenv") : "";
			        String coquanthuequanlynv1 = (request.getParameter("coquanthuenv") != null) ? request.getParameter("coquanthuenv") : "";
			        String coquanthuequanlynv = UTF8.UTF8(coquanthuequanlynv1);
			        String chieucaonv = (request.getParameter("chieucaonv") != null) ? request.getParameter("chieucaonv") : "";
			        String cannangnv = (request.getParameter("cannangnv") != null) ? request.getParameter("cannangnv") : "";
			        String dauvetdacbietnv1 = (request.getParameter("dauvetdacbietnv") != null) ? request.getParameter("dauvetdacbietnv") : "";
			        String dauvetdacbietnv = UTF8.UTF8(dauvetdacbietnv1);
			        
			        sqlupdatettnv = sqlupdatettnv + "'"+noicaphcnv+"', '"+masothuenv+"', " +
		        		"'"+coquanthuequanlynv+"', '"+Double.parseDouble(chieucaonv)+"', " +
		        		"'"+Double.parseDouble(cannangnv)+"', '"+dauvetdacbietnv+"', "; 
			        
			        String ngayvaodangnv = (request.getParameter("ngayvaodangnv") != null) ? request.getParameter("ngayvaodangnv") : "";
			        java.util.Date datengayvaodangnv ;
			        String machucvudangnv = (request.getParameter("macvdangnv") != null) ? request.getParameter("macvdangnv") : "";
			        if(machucvudangnv == null || machucvudangnv.equals("")){
			        	sqlupdatettnv = sqlupdatettnv + "NULL, NULL, " ;
			        }
			        else {			        	
			        	datengayvaodangnv = SString.parseDate(ngayvaodangnv, "dd/MM/yyyy");
		        		sqlupdatettnv = sqlupdatettnv + "'"+SString.toString(datengayvaodangnv, "MM/dd/yyyy")+"', '"+machucvudangnv+"', ";
			        }
			        
			        String ngayvaodoannv = (request.getParameter("ngayvaodoannv") != null) ? request.getParameter("ngayvaodoannv") : "";
			        java.util.Date datengayvaodoannv;
			        String machucvudoannv = (request.getParameter("macvdoannv") != null) ? request.getParameter("macvdoannv") : "";
			        if(machucvudoannv == null || machucvudoannv.equals("")){
			        	sqlupdatettnv = sqlupdatettnv + "NULL, NULL, ";
			        }
			        else {
			        	datengayvaodoannv = SString.parseDate(ngayvaodoannv, "dd/MM/yyyy");
			        	sqlupdatettnv = sqlupdatettnv + "'"+SString.toString(datengayvaodoannv, "MM/dd/yyyy")+"', '"+machucvudoannv+"', ";
			        }
			        
			        String ngayvaocongdoannv = (request.getParameter("ngayvaocongdoannv") != null) ? request.getParameter("ngayvaocongdoannv") : "";
			        java.util.Date datengayvaocongdoannv;			         	
			        String machucvucdoannv = (request.getParameter("macvcongdoannv") != null) ? request.getParameter("macvcongdoannv") : "";
			        if(machucvucdoannv == null || machucvucdoannv.equals("")){
			        	sqlupdatettnv = sqlupdatettnv + "NULL, NULL)";
			        }
			        else {
			        	datengayvaocongdoannv = SString.parseDate(ngayvaocongdoannv, "dd/MM/yyyy");
			        	sqlupdatettnv = sqlupdatettnv + "'"+SString.toString(datengayvaocongdoannv, "MM/dd/yyyy")+"', '"+machucvucdoannv+"')";
			        }
			        
			        System.out.println(sqlupdatettnv);
			        
			        com.jcorporate.expresso.core.misc.ConfigJdbc configJdbc=com.jcorporate.expresso.core.misc.ConfigManager.getJdbc("default");
				    String dbDriver = configJdbc.getDriver();
				    String connString=configJdbc.getUrl();
				    String user=configJdbc.getLogin();
				    String pwd=configJdbc.getPassword();
				    dbConnManager= hrm.util.DBConnectionManager.getInstance(dbDriver, connString, user, pwd, 50);
			        conn = dbConnManager.getConnection("topmostread");
		    		java.sql.Statement stttcn=conn.createStatement();		    		
		    		stttcn.execute(sqlupdatettnv);
		    		stttcn.close();
		    	
		    		redirectRequest(request, response, hreq.getContextPath() + "/user/updatethongtincanhanfrm.jsp");

				}catch(Exception ex){
					ex.printStackTrace();
				}finally{
					dbConnManager.freeConnection("topmostread", conn);
				}
			return response;
		}

	protected ControllerResponse runUpdatetdnnState(ControllerRequest request,
			ControllerResponse response) throws ControllerException,
			NonHandleableException {
		ServletControllerRequest sr = (ServletControllerRequest) request;
        javax.servlet.http.HttpServletRequest hreq = (javax.servlet.http.HttpServletRequest) sr.getServletRequest();
				try{
					String manv = (request.getParameter("manv") != null) ? request.getParameter("manv") : "";
					String ma_ngoaingu = (request.getParameter("ma_ngoaingu") != null) ? request.getParameter("ma_ngoaingu") : ""; 
					String ma_trinhdonn = (request.getParameter("ma_trinhdonn") != null) ? request.getParameter("ma_trinhdonn") : "";
					
					String strSqlUpdatetdnn = "execute procedure WEB_SUA_TRINHDO_NGOAINGU('"+manv+"', " +
							"'"+ma_ngoaingu+"', '"+ma_ngoaingu+"', '"+ma_trinhdonn+"', '"+ma_trinhdonn+"', ";
					
					String ngaycaptdnn = (request.getParameter("ngaycaptdnn") != null) ? request.getParameter("ngaycaptdnn") : "";
					java.util.Date datengaycaptdnn;
					if(ngaycaptdnn==null || ngaycaptdnn.equals(""))
						strSqlUpdatetdnn = strSqlUpdatetdnn + "NULL, ";
					else{ 
						datengaycaptdnn = SString.parseDate(ngaycaptdnn,"dd/MM/yyyy");
						strSqlUpdatetdnn = strSqlUpdatetdnn + "'"+SString.toString(datengaycaptdnn,"MM/dd/yyyy")+"', ";
					}
					String noicaptrinhdonn1 = (request.getParameter("noicaptrinhdonn") != null) ? request.getParameter("noicaptrinhdonn") : "";
					String noicaptrinhdonn = UTF8.UTF8(noicaptrinhdonn1);
					String thanhtichtrinhdonn1 =  (request.getParameter("thanhtichtrinhdonn") != null) ? request.getParameter("thanhtichtrinhdonn") : "";
					String thanhtichtrinhdonn = UTF8.UTF8(thanhtichtrinhdonn1);
					strSqlUpdatetdnn = strSqlUpdatetdnn + "'"+noicaptrinhdonn+"', '"+thanhtichtrinhdonn+"', NULL)";
			   
			        System.out.print(strSqlUpdatetdnn);
			        com.jcorporate.expresso.core.misc.ConfigJdbc configJdbc=com.jcorporate.expresso.core.misc.ConfigManager.getJdbc("default");
				    String dbDriver = configJdbc.getDriver();
				    String connString=configJdbc.getUrl();
				    String user=configJdbc.getLogin();
				    String pwd=configJdbc.getPassword();
				    dbConnManager= hrm.util.DBConnectionManager.getInstance(dbDriver, connString, user, pwd, 50);
			        java.sql.Connection conn = dbConnManager.getConnection("topmostread");
		    		java.sql.Statement st=conn.createStatement();
		    		//ResultSet rstdhv = 
		    		st.execute(strSqlUpdatetdnn);
		    		st.close();
		    		conn.close();
		    		redirectRequest(request, response, hreq.getContextPath() + "/user/updatetrinhdonanglucfrm.jsp");

				}catch(Exception ex){
				ex.printStackTrace();
				}finally{
					dbConnManager.release();
				}
			return response;
	}
	
	protected ControllerResponse runUpdatetdknState(ControllerRequest request,
			ControllerResponse response) throws ControllerException,
			NonHandleableException {
		ServletControllerRequest sr = (ServletControllerRequest) request;
        javax.servlet.http.HttpServletRequest hreq = (javax.servlet.http.HttpServletRequest) sr.getServletRequest();
				try{
					String manv = (request.getParameter("manv") != null) ? request.getParameter("manv") : "";
					String ma_kynang = (request.getParameter("ma_kynang") != null) ? request.getParameter("ma_kynang") : ""; 
					String ma_trinhdokn = (request.getParameter("ma_trinhdokn") != null) ? request.getParameter("ma_trinhdokn") : "";
					
					String strSqlUpdatetdkn = "execute procedure WEB_SUA_TRINHDO_KYNANG('"+manv+"', " +
							"'"+ma_kynang+"', '"+ma_kynang+"', '"+ma_trinhdokn+"', '"+ma_trinhdokn+"', ";
					
					String ngaycaptdkn = (request.getParameter("ngaycaptdkn") != null) ? request.getParameter("ngaycaptdkn") : "";
					java.util.Date datengaycaptdkn;
					if(ngaycaptdkn==null || ngaycaptdkn.equals(""))
						strSqlUpdatetdkn = strSqlUpdatetdkn + "NULL, ";
					else{ 
						datengaycaptdkn = SString.parseDate(ngaycaptdkn,"dd/MM/yyyy");
						strSqlUpdatetdkn = strSqlUpdatetdkn + "'"+SString.toString(datengaycaptdkn,"MM/dd/yyyy")+"', ";
					}
					String noicaptrinhdokn1 = (request.getParameter("noicaptrinhdokn") != null) ? request.getParameter("noicaptrinhdokn") : "";
					String noicaptrinhdokn = UTF8.UTF8(noicaptrinhdokn1);
					String thanhtichtrinhdokn1 =  (request.getParameter("thanhtichtrinhdokn") != null) ? request.getParameter("thanhtichtrinhdokn") : "";
					String thanhtichtrinhdokn = UTF8.UTF8(thanhtichtrinhdokn1);
					strSqlUpdatetdkn = strSqlUpdatetdkn + "'"+noicaptrinhdokn+"', '"+thanhtichtrinhdokn+"', NULL)";
			   
			        System.out.print(strSqlUpdatetdkn);
			        com.jcorporate.expresso.core.misc.ConfigJdbc configJdbc=com.jcorporate.expresso.core.misc.ConfigManager.getJdbc("default");
				    String dbDriver = configJdbc.getDriver();
				    String connString=configJdbc.getUrl();
				    String user=configJdbc.getLogin();
				    String pwd=configJdbc.getPassword();
				    dbConnManager= hrm.util.DBConnectionManager.getInstance(dbDriver, connString, user, pwd, 50);
			        java.sql.Connection conn = dbConnManager.getConnection("topmostread");
		    		java.sql.Statement st=conn.createStatement();
		    		//ResultSet rstdhv = 
		    		st.execute(strSqlUpdatetdkn);
		    		st.close();
		    		conn.close();
		    		redirectRequest(request, response, hreq.getContextPath() + "/user/updatetrinhdonanglucfrm.jsp");

				}catch(Exception ex){
				ex.printStackTrace();
				}finally{
					dbConnManager.release();
				}
			return response;
	}
	
	protected ControllerResponse runUpdatetdcmState(ControllerRequest request,
			ControllerResponse response) throws ControllerException,
			NonHandleableException {
		ServletControllerRequest sr = (ServletControllerRequest) request;
        javax.servlet.http.HttpServletRequest hreq = (javax.servlet.http.HttpServletRequest) sr.getServletRequest();
				try{
					String manv = (request.getParameter("manv") != null) ? request.getParameter("manv") : "";
					String ma_chuyenmon = (request.getParameter("ma_chuyenmon") != null) ? request.getParameter("ma_chuyenmon") : ""; 
					String ma_trinhdocm = (request.getParameter("ma_trinhdocm") != null) ? request.getParameter("ma_trinhdocm") : "";
					
					String strSqlUpdatetdcm = "execute procedure WEB_SUA_CHUYENMON_KHAC('"+manv+"', " +
							"'"+ma_chuyenmon+"', '"+ma_chuyenmon+"', '"+ma_trinhdocm+"', '"+ma_trinhdocm+"', ";
					
					String ngaycaptdcm = (request.getParameter("ngaycaptdcm") != null) ? request.getParameter("ngaycaptdcm") : "";
					java.util.Date datengaycaptdcm;
					if(ngaycaptdcm==null || ngaycaptdcm.equals(""))
						strSqlUpdatetdcm = strSqlUpdatetdcm + "NULL, ";
					else{ 
						datengaycaptdcm = SString.parseDate(ngaycaptdcm,"dd/MM/yyyy");
						strSqlUpdatetdcm = strSqlUpdatetdcm + "'"+SString.toString(datengaycaptdcm,"MM/dd/yyyy")+"', ";
					}
					String noicaptrinhdocm1 = (request.getParameter("noicaptrinhdocm") != null) ? request.getParameter("noicaptrinhdocm") : "";
					String noicaptrinhdocm = UTF8.UTF8(noicaptrinhdocm1);
					String thanhtichtrinhdocm1 =  (request.getParameter("thanhtichtrinhdocm") != null) ? request.getParameter("thanhtichtrinhdocm") : "";
					String thanhtichtrinhdocm = UTF8.UTF8(thanhtichtrinhdocm1);
					strSqlUpdatetdcm = strSqlUpdatetdcm + "'"+noicaptrinhdocm+"', '"+thanhtichtrinhdocm+"', NULL)";
			   
			        System.out.print(strSqlUpdatetdcm);
			        com.jcorporate.expresso.core.misc.ConfigJdbc configJdbc=com.jcorporate.expresso.core.misc.ConfigManager.getJdbc("default");
				    String dbDriver = configJdbc.getDriver();
				    String connString=configJdbc.getUrl();
				    String user=configJdbc.getLogin();
				    String pwd=configJdbc.getPassword();
				    dbConnManager= hrm.util.DBConnectionManager.getInstance(dbDriver, connString, user, pwd, 50);
			        java.sql.Connection conn = dbConnManager.getConnection("topmostread");
		    		java.sql.Statement st=conn.createStatement();
		    		//ResultSet rstdhv = 
		    		st.execute(strSqlUpdatetdcm);
		    		st.close();
		    		conn.close();
		    		redirectRequest(request, response, hreq.getContextPath() + "/user/updatetrinhdonanglucfrm.jsp");

				}catch(Exception ex){
				ex.printStackTrace();
				}finally{
					dbConnManager.release();
				}
			return response;
	}
}
