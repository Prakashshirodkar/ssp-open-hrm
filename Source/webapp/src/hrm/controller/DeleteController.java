package hrm.controller;


//import java.sql.ResultSet;

import hrm.util.*;

import com.jcorporate.expresso.core.controller.*;


public class DeleteController extends DBController {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public DeleteController(){
		State DeletePn = new State ("DeletePn","DeletePn");
		addState(DeletePn);
		
		State DeleteTdnn = new State ("DeleteTdnn","DeleteTdnn");
		addState(DeleteTdnn);
		
		State DeleteTdkn = new State ("DeleteTdkn","DeleteTdkn");
		addState(DeleteTdkn);
		
		State DeleteCmk = new State ("DeleteCmk","DeleteCmk");
		addState(DeleteCmk);
		
		State DeleteUyquyen = new State ("DeleteUyquyen","DeleteUyquyen");
		addState(DeleteUyquyen);
		
		setInitialState("DeletePn");
	}
	
	hrm.util.DBConnectionManager dbConnManager;
	
	protected ControllerResponse runDeletePnState(ControllerRequest request,
			ControllerResponse response) throws ControllerException,
			NonHandleableException {
		ServletControllerRequest sr = (ServletControllerRequest) request;
        javax.servlet.http.HttpServletRequest hreq = (javax.servlet.http.HttpServletRequest) sr.getServletRequest();
        java.sql.Connection conn = null;
				try{
					String strMaso_Phieu1 = (request.getParameter("maso_phieu") != null) ? request.getParameter("maso_phieu") : "";
					String strMaso_Phieu = UTF8.UTF8(strMaso_Phieu1);
					String strSqlDeletePn = "execute procedure WEB_XOA_DANGKY_PHEPNAM('"+strMaso_Phieu+"')";
					//String strSqlDeletePn = "execute procedure WEB_XOA_DANGKY_PHEPNAM('123')";
					//System.out.println(strMaso_Phieu);
					com.jcorporate.expresso.core.misc.ConfigJdbc configJdbc=com.jcorporate.expresso.core.misc.ConfigManager.getJdbc("default");
					String dbDriver = configJdbc.getDriver();
					String connString=configJdbc.getUrl();
					String user=configJdbc.getLogin();
					String pwd=configJdbc.getPassword();
					dbConnManager= hrm.util.DBConnectionManager.getInstance(dbDriver, connString, user, pwd, 50);
				    conn = dbConnManager.getConnection("topmostread");
			    	java.sql.Statement st=conn.createStatement();
			    	st.execute(strSqlDeletePn);
			    	//System.out.print(check);
			    	st.close();
			    	
					redirectRequest(request, response, hreq.getContextPath() + "/user/phepnamfrm.jsp");
				}catch(Exception ex){
					ex.printStackTrace();
				}finally{
					dbConnManager.freeConnection("topmostread", conn);
				}
			return response;
	}
	
	protected ControllerResponse runDeleteTdnnState(ControllerRequest request,
			ControllerResponse response) throws ControllerException,
			NonHandleableException {
		ServletControllerRequest sr = (ServletControllerRequest) request;
        javax.servlet.http.HttpServletRequest hreq = (javax.servlet.http.HttpServletRequest) sr.getServletRequest();
        java.sql.Connection conn = null;
				try{
					String manv = (request.getParameter("manv") != null) ? request.getParameter("manv") : "";
					String strMangoaingu1 = (request.getParameter("ma_nn") != null) ? request.getParameter("ma_nn") : "";
					String strMangoaingu = UTF8.UTF8(strMangoaingu1);
					String strMatrinhdongoaingu1 = (request.getParameter("ma_trinhdonn") != null) ? request.getParameter("ma_trinhdonn") : "";
					String strMatrinhdongoaingu = UTF8.UTF8(strMatrinhdongoaingu1);
					
					String strSqlDeleteTdnn = "execute procedure WEB_XOA_TRINHDO_NGOAINGU('"+manv+"','"+strMangoaingu+"','"+strMatrinhdongoaingu+"')";
					//String strSqlDeletePn = "execute procedure WEB_XOA_DANGKY_PHEPNAM('123')";
					//System.out.println(strMaso_Phieu);
					com.jcorporate.expresso.core.misc.ConfigJdbc configJdbc=com.jcorporate.expresso.core.misc.ConfigManager.getJdbc("default");
					String dbDriver = configJdbc.getDriver();
					String connString=configJdbc.getUrl();
					String user=configJdbc.getLogin();
					String pwd=configJdbc.getPassword();
					dbConnManager= hrm.util.DBConnectionManager.getInstance(dbDriver, connString, user, pwd, 50);
				    conn = dbConnManager.getConnection("topmostread");
			    	java.sql.Statement st=conn.createStatement();
			    	st.execute(strSqlDeleteTdnn);
			    	//System.out.print(check);
			    	st.close();
			    	
					redirectRequest(request, response, hreq.getContextPath() + "/user/updatetrinhdonanglucfrm.jsp");
				}catch(Exception ex){
					ex.printStackTrace();
				}finally{
					dbConnManager.freeConnection("topmostread", conn);
				}
			return response;
	}
	
	protected ControllerResponse runDeleteTdknState(ControllerRequest request,
			ControllerResponse response) throws ControllerException,
			NonHandleableException {
		ServletControllerRequest sr = (ServletControllerRequest) request;
        javax.servlet.http.HttpServletRequest hreq = (javax.servlet.http.HttpServletRequest) sr.getServletRequest();
        java.sql.Connection conn = null;
				try{
					String manv = (request.getParameter("manv") != null) ? request.getParameter("manv") : "";
					String strMakynang1 = (request.getParameter("ma_kn") != null) ? request.getParameter("ma_kn") : "";
					String strMakynang = UTF8.UTF8(strMakynang1);
					String strMatrinhdokynang1 = (request.getParameter("ma_trinhdokn") != null) ? request.getParameter("ma_trinhdokn") : "";
					String strMatrinhdokynang = UTF8.UTF8(strMatrinhdokynang1);
					
					String strSqlDeleteTdnn = "execute procedure WEB_XOA_TRINHDO_KYNANG('"+manv+"','"+strMakynang+"','"+strMatrinhdokynang+"')";
					//String strSqlDeletePn = "execute procedure WEB_XOA_DANGKY_PHEPNAM('123')";
					//System.out.println(strMaso_Phieu);
					com.jcorporate.expresso.core.misc.ConfigJdbc configJdbc=com.jcorporate.expresso.core.misc.ConfigManager.getJdbc("default");
					String dbDriver = configJdbc.getDriver();
					String connString=configJdbc.getUrl();
					String user=configJdbc.getLogin();
					String pwd=configJdbc.getPassword();
					dbConnManager= hrm.util.DBConnectionManager.getInstance(dbDriver, connString, user, pwd, 50);
				    conn = dbConnManager.getConnection("topmostread");
			    	java.sql.Statement st=conn.createStatement();
			    	st.execute(strSqlDeleteTdnn);
			    	//System.out.print(check);
			    	st.close();
			    	
					redirectRequest(request, response, hreq.getContextPath() + "/user/updatetrinhdonanglucfrm.jsp");
				}catch(Exception ex){
					ex.printStackTrace();
				}finally{
					dbConnManager.freeConnection("topmostread", conn);
				}
			return response;
	}
	
	protected ControllerResponse runDeleteCmkState(ControllerRequest request,
			ControllerResponse response) throws ControllerException,
			NonHandleableException {
		ServletControllerRequest sr = (ServletControllerRequest) request;
        javax.servlet.http.HttpServletRequest hreq = (javax.servlet.http.HttpServletRequest) sr.getServletRequest();
        java.sql.Connection conn = null;
				try{
					String manv = (request.getParameter("manv") != null) ? request.getParameter("manv") : "";
					String strMachuyenmon1 = (request.getParameter("ma_cm") != null) ? request.getParameter("ma_cm") : "";
					String strMachuyenmon = UTF8.UTF8(strMachuyenmon1);
					String strMatrinhdochuyenmon1 = (request.getParameter("ma_trinhdocm") != null) ? request.getParameter("ma_trinhdocm") : "";
					String strMatrinhdochuyenmon = UTF8.UTF8(strMatrinhdochuyenmon1);
					
					String strSqlDeleteTdnn = "execute procedure WEB_XOA_CHUYENMON_KHAC('"+manv+"','"+strMachuyenmon+"','"+strMatrinhdochuyenmon+"')";
					//String strSqlDeletePn = "execute procedure WEB_XOA_DANGKY_PHEPNAM('123')";
					//System.out.println(strMaso_Phieu);
					com.jcorporate.expresso.core.misc.ConfigJdbc configJdbc=com.jcorporate.expresso.core.misc.ConfigManager.getJdbc("default");
					String dbDriver = configJdbc.getDriver();
					String connString=configJdbc.getUrl();
					String user=configJdbc.getLogin();
					String pwd=configJdbc.getPassword();
					dbConnManager= hrm.util.DBConnectionManager.getInstance(dbDriver, connString, user, pwd, 50);
				    conn = dbConnManager.getConnection("topmostread");
			    	java.sql.Statement st=conn.createStatement();
			    	st.execute(strSqlDeleteTdnn);
			    	//System.out.print(check);
			    	st.close();
			    	
					redirectRequest(request, response, hreq.getContextPath() + "/user/updatetrinhdonanglucfrm.jsp");
				}catch(Exception ex){
					ex.printStackTrace();
				}finally{
					dbConnManager.freeConnection("topmostread", conn);
				}
			return response;
	}
	
	protected ControllerResponse runDeleteUyquyenState(ControllerRequest request,
			ControllerResponse response) throws ControllerException,
			NonHandleableException {
		ServletControllerRequest sr = (ServletControllerRequest) request;
        javax.servlet.http.HttpServletRequest hreq = (javax.servlet.http.HttpServletRequest) sr.getServletRequest();
        java.sql.Connection conn = null;
				try{
					String manv_duoc_uyquyen = (request.getParameter("manv_duoc_uyquyen") != null) ? request.getParameter("manv_duoc_uyquyen") : "";
					String datefrom = (request.getParameter("tungay_uyquyen") != null) ? request.getParameter("tungay_uyquyen") : "";
					java.util.Date tungay = SString.parseDate(datefrom,"dd/MM/yyyy");
					String strSqlDeleteUyquyen = "execute procedure WEB_XOA_THONGTIN_UYQUYEN('"+manv_duoc_uyquyen+"','"+SString.toString(tungay,"MM/dd/yyyy")+"')";
					com.jcorporate.expresso.core.misc.ConfigJdbc configJdbc=com.jcorporate.expresso.core.misc.ConfigManager.getJdbc("default");
					String dbDriver = configJdbc.getDriver();
					String connString=configJdbc.getUrl();
					String user=configJdbc.getLogin();
					String pwd=configJdbc.getPassword();
					dbConnManager= hrm.util.DBConnectionManager.getInstance(dbDriver, connString, user, pwd, 50);
				    conn = dbConnManager.getConnection("topmostread");
			    	java.sql.Statement st=conn.createStatement();
			    	st.execute(strSqlDeleteUyquyen);
			    	st.close();
					redirectRequest(request, response, hreq.getContextPath() + "/user/uyquyenduyetphepfrm.jsp");
				}catch(Exception ex){
					ex.printStackTrace();
				}finally{
					dbConnManager.freeConnection("topmostread", conn);
				}
			return response;
	}
}
