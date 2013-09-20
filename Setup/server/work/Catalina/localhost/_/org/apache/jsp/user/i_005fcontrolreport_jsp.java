package org.apache.jsp.user;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.io.*;
import hrm.util.*;
import hrm.model.*;
import java.lang.String.*;
import com.jcorporate.expresso.core.db.*;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

public final class i_005fcontrolreport_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 hrm.util.DBConnectionManager dbConnManager;
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
 

	ResourceBundle rs = null;
	String _res(String key){
		try{
			return new String(rs.getString(key).getBytes("ISO-8859-1"), "UTF-8");
		}catch (Exception ex){
			return key;
		}				
	}
	String _res(String key, Object[] values, boolean enableFormat){
		try{
	   		String resString = new String(rs.getString(key).getBytes("ISO-8859-1"), "UTF-8");
		    if(! enableFormat){
	   			return  resString;
	 	    } else {
				java.text.MessageFormat fmt = new java.text.MessageFormat(resString);
			    return fmt.format(values);
			}
		} catch(Exception ex){
			ex.printStackTrace();
			return key;
		}	
	}

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(4);
    _jspx_dependants.add("/user/../standard.jsp");
    _jspx_dependants.add("/user/../dbconnect.jsp");
    _jspx_dependants.add("/user/resource.inc");
    _jspx_dependants.add("/user/redirect_user.jsp");
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

	String contextPath = request.getContextPath();
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Cache-Control", "no-cache");
	
	//xu ly trang thai menu top
	String cm = (request.getParameter("cm")!=null)?request.getParameter("cm"):(String)session.getAttribute("cm");
	if(cm==null || cm=="") cm = "tintuc";
	session.setAttribute("cm", cm);
	if(cm.equals("logout")){
		session.removeAttribute("cm");
		session.removeAttribute("logusername");
		session.removeAttribute("logpass");	
		session.removeAttribute("language");	
	}
	//System.out.println(cm);

      out.write("\r\n");
      out.write("<link REL=STYLESHEET TYPE=\"text/css\" href=\"");
      out.print(contextPath);
      out.write("/style/webhrm.css\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write('\n');
      out.write('\r');
      out.write('\n');

	String language = String.valueOf(session.getAttribute("language"));
	//System.out.println("language: "+ language);
	if(language == null || language.equals("null"))
		language = "vi";
	String country = "";
	Locale mylocale = new Locale(language, country);
	try{
		rs = ResourceBundle.getBundle("hrm/resource/MessagesBundle", mylocale);
	}catch (Exception e){
		System.out.println("[Get Resource ERROR] " + e.getMessage());
	}

      out.write("\r\n");
      out.write("\r\n");
      out.write('\n');

	String username = String.valueOf(session.getAttribute("logusername"));
	String pass = String.valueOf(session.getAttribute("logpass"));	
	String useraccid = String.valueOf(session.getAttribute("useraccid"));
	//System.out.println("user acc id: "+useraccid);
	String url = "";
	//System.out.println(contextPath);
	if(username.equals("null") && pass.equals("null"))
	{
		url = contextPath+"/login.jsp";
		response.sendRedirect(url);
	}

      out.write('\n');
      out.write('\n');

	String report_id = request.getParameter("report_id");
	String strSqlReportName = "select report_name, sqlselect from web_danhsach_baocao ('"+username+"','"+language+"') where reportid ='"+report_id+"'";
	String reportname = "";
	String sqlreport = "";
	String strSqlControl = "select * from web_report_params('"+report_id+"','"+language+"') order by param_index asc";									
	java.sql.Connection conn = null;
	String nam = SString.toString(new java.util.Date(), "yyyy");
	String thang = SString.toString(new java.util.Date(),"M");
	int i = 0;
	try{
	    conn = dbConnManager.getConnection("topmostread");
		conn.setAutoCommit(false);
		java.sql.PreparedStatement st=conn.prepareStatement(strSqlReportName);
		ResultSet rs = st.executeQuery();
		if(rs.next()){
			reportname = rs.getString(1);
			sqlreport = rs.getString(2);
		}
		//System.out.print(sqlreport);
		/*rs = st.executeQuery(strSqlControl);
		while(rs.next()){
			String rs.getString(3) = request.getParameter(""+rs.getString(3)+"");
			System.out.println(rs.getString(3));
		}*/
		rs = st.executeQuery(strSqlControl);

      out.write("\t\n");
      out.write("\t<table class=\"tablecontent\" align=\"center\">\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t<td><div id=\"headercontent\" class=\"title\">");
      out.print(reportname);
      out.write(" <img align=\"absmiddle\" id=\"imgcontrol\" onclick=\"javascript:showDivControl()\" onmouseover=\"javascript:showIconOnMouseOver()\" onmouseout=\"javascript:showIconOnMouseOut()\" border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/up1.png\"/></div></td>\n");
      out.write("\t\t</tr>\n");
      out.write("\t\t<form name=\"frmView\" action=\"");
      out.print(contextPath);
      out.write("/user/i_viewbaocao.jsp\" method=\"post\">\n");
      out.write("\t\t<tr valign=\"top\">\n");
      out.write("\t\t\t<td valign=\"top\">\n");
      out.write("\t\t\t\t<div id=\"divcontrollist\" style=\"display:block;\">\n");
      out.write("\t\t\t\t<table align=\"center\" width=\"790\" border=\"0\" cellspacing=\"1\" cellpadding=\"2\" style=\"border:1px solid #CCCCCC;\">\n");
      out.write("\t\t\t\t\t");

						String listParam = "";
						while(rs.next()){
							i++;
							listParam = listParam + rs.getString(3) + "<!*-*!>";
					
      out.write("\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td width=\"180\" class=\"des\" align=\"left\" bgcolor=\"#f8f8f8\">\t\n");
      out.write("\t\t\t\t\t\t\t&nbsp;&nbsp;");
      out.print(rs.getString(5));
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t<td class=\"value\" align=\"left\" bgcolor=\"#FFF7E7\" >\n");
      out.write("\t\t\t\t\t\t\t");
if(rs.getInt(6)==0){
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"text\" name=\"");
      out.print(rs.getString(3));
      out.write("\" id=\"");
      out.print(rs.getString(3));
      out.write("\" readonly=\"true\" class=\"value\" size=7 value=\"");
      out.print(SString.toString(new java.util.Date(), "dd/MM/yyyy"));
      out.write("\" />\n");
      out.write("                  \t\t\t\t<img onclick=\"return showCalendar('bt");
      out.print(rs.getString(3));
      out.write('\'');
      out.write(',');
      out.write('\'');
      out.print(rs.getString(3));
      out.write("', '%d/%m/%Y', false);\" align=\"absmiddle\" id=\"bt");
      out.print(rs.getString(3));
      out.write("\" src=\"");
      out.print(contextPath);
      out.write("/img/calendar2/calendar.gif\" alt='");
      out.print(_res("cct.ngay"));
      out.write("'>\n");
      out.write("\t\t\t\t\t\t\t");
} else if(rs.getInt(6)==1){
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"checkbox\" class=\"value\" checked name=\"");
      out.print(rs.getString(3));
      out.write("\" />\n");
      out.write("\t\t\t\t\t\t\t");
} else if(rs.getInt(6)==2){
									//String checknam = rs.getString(5).replaceAll(_res("bc.nam"),"check");
									//checknam = checknam.replaceAll(_res("bc.nam1"),"check");
									//System.out.println("check: "+ checknam);
							
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"div");
      out.print(rs.getString(3));
      out.write("\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"text\" class=\"value\" name=\"");
      out.print(rs.getString(3));
      out.write("\" readonly=\"true\" id=\"");
      out.print(rs.getString(3));
      out.write("\" size=6 ");
if(rs.getString(12).toUpperCase().equals("CURRENT_YEAR")){
      out.write("value=\"");
      out.print(nam);
      out.write('"');
} else {
      out.write(" value=\"");
      out.print(thang);
      out.write('"');
      out.write(' ');
}
      out.write(" >\n");
      out.write("\t\t\t\t\t\t\t\t<a style=\"text-decoration:none;\" href=\"javascript:functUpValue('div");
      out.print(rs.getString(3));
      out.write('\'');
      out.write(',');
      out.write('\'');
      out.print(rs.getString(3));
      out.write("')\">\n");
      out.write("\t\t\t\t\t\t\t\t<img border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/up.gif\" /></a>\n");
      out.write("\t\t\t\t\t\t\t\t<a style=\"text-decoration:none;\" href=\"javascript:functDownValue('div");
      out.print(rs.getString(3));
      out.write('\'');
      out.write(',');
      out.write('\'');
      out.print(rs.getString(3));
      out.write("')\">\n");
      out.write("\t\t\t\t\t\t\t\t<img border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/down.gif\" /></a>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t");
} else if(rs.getInt(6)==4){if(rs.getString(8)==null || rs.getString(8).equals("null")){
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"text\" name=\"");
      out.print(rs.getString(3));
      out.write("\" value=\"0\" class=\"value\" size=\"");
      out.print(rs.getInt(14));
      out.write("px\"/>\n");
      out.write("\t\t\t\t\t\t\t");
} else {
								int lookup_id = rs.getInt(8);
								String strSqlGetSQLlookup = "select SQLSELECT from SYS_REPORT_LIST where reportid = '"+lookup_id+"'";
								java.sql.Statement st1=conn.createStatement();
								ResultSet rs1=st1.executeQuery(strSqlGetSQLlookup);
								rs1.next();
								String strSqlListlookup = rs1.getString(1);
								String strSqlListlookuptemp = strSqlListlookup.replaceAll(":username","'sspadmin'");
								strSqlListlookuptemp = strSqlListlookuptemp.replaceAll(":xem_theo_nam","'"+SString.toString(new java.util.Date(), "yyyy")+"'");
								int check = 0;
								if(!strSqlListlookup.equals(strSqlListlookuptemp)){
									rs1 = st1.executeQuery(strSqlListlookuptemp);
									check = 1;
								}
								else{
									rs1 = st1.executeQuery(strSqlListlookup);
									check = 0;
								}
							
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t<select name=\"");
      out.print(rs.getString(3));
      out.write("\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"null\">");
      out.print(_res("bc.all"));
      out.write("</option>\n");
      out.write("\t\t\t\t\t\t\t");

								while(rs1.next()){
									if(check == 1){
							
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"");
      out.print(rs1.getString(1));
      out.write('"');
      out.write('>');
      out.print(rs1.getString(3));
      out.write("</option>\n");
      out.write("\t\t\t\t\t\t\t");
} else {
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"");
      out.print(rs1.getString(1));
      out.write('"');
      out.write('>');
      out.print(rs1.getString(2));
      out.write("</option>\n");
      out.write("\t\t\t\t\t\t\t");
}
								//sqlreport = sqlreport.replaceAll(":"+rs.getString(3)+"", );
							}rs1.close();st1.close();
      out.write("\n");
      out.write("\t\t\t\t\t\t  \t\t</select>\n");
      out.write("\t\t\t\t\t\t\t");
}}
      out.write("\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"2\"></td></tr>\n");
      out.write("\t\t\t\t\t");
}rs.close(); st.close();conn.commit();
      out.write("\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td colspan=\"2\" class=\"des\" align=\"left\" bgcolor=\"#f8f8f8\">\n");
      out.write("\t\t\t\t\t\t\t<input type=\"button\" name=\"button\" value=\"");
      out.print(_res("cct.submit"));
      out.write("\" onclick=\"javascript:funcViewBaocao('");
      out.print(report_id);
      out.write('\'');
      out.write(',');
      out.write('\'');
      out.print(listParam);
      out.write("');\" />\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t</table>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</td>\n");
      out.write("\t\t</tr>\n");
      out.write("\t\t<input type=\"hidden\" name=\"report_id\" value=\"");
      out.print(report_id);
      out.write("\" />\n");
      out.write("\t\t<input type=\"hidden\" name=\"listParam\" value=\"");
      out.print(listParam);
      out.write("\" />\n");
      out.write("\t\t</form>\n");
      out.write("\t</table>\n");
      out.write("\t\n");

	}catch(Exception e){
	      e.printStackTrace();
	      System.out.println(e.getMessage());
	}finally{
		if(conn != null)
			conn.setAutoCommit(true);
		dbConnManager.freeConnection("topmostread", conn);
	}

      out.write('\n');
      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
