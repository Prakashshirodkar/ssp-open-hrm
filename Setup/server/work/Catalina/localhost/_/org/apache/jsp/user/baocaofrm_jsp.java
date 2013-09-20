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

public final class baocaofrm_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_dependants = new java.util.ArrayList(8);
    _jspx_dependants.add("/user/../standard.jsp");
    _jspx_dependants.add("/user/../dbconnect.jsp");
    _jspx_dependants.add("/user/resource.inc");
    _jspx_dependants.add("/user/redirect_user.jsp");
    _jspx_dependants.add("/user/../header.jsp");
    _jspx_dependants.add("/user/../leftadmin.jsp");
    _jspx_dependants.add("/user/baocao.jsp");
    _jspx_dependants.add("/user/../footer.jsp");
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

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("<title>");
      out.print(_res("baocao.title"));
      out.write("</title>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body topmargin=\"0\" leftmargin=\"0\" background=\"");
      out.print(contextPath);
      out.write("/img/bg.png\" style=\"background-attachment: fixed\">\n");
      out.write("\n");
      out.write("<div align=\"center\">\n");
      out.write("\t<table border=\"0\" width=\"1000\" cellspacing=\"0\" cellpadding=\"0\" background=\"");
      out.print(contextPath);
      out.write("/img/bg-page.gif\">\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t");
      out.write("<style>\r\n");
      out.write("\t.menu{\r\n");
      out.write("\t\tfont-family: Arial, Helvetica, sans-serif;\r\n");
      out.write("\t\tfont-size:12;\r\n");
      out.write("\t\tfont-weight:bold;\r\n");
      out.write("\t}\r\n");
      out.write("</style>\r\n");
      out.write("\t\t<td height=\"97\" valign=\"bottom\" background=\"");
      out.print(contextPath);
      out.write("/img/bg-top.gif\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<div align=\"left\">\r\n");
      out.write("\t\t\t\t<object classid=\"clsid:D27CDB6E-AE6D-11CF-96B8-444553540000\" id=\"obj1\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0\" border=\"0\" width=\"579\" height=\"100\">\r\n");
      out.write("\t\t\t\t\t<param name=\"movie\" value=\"");
      out.print(contextPath);
      out.write("/img/ssp_kysuufinal.swf\">\r\n");
      out.write("\t\t\t\t\t<param name=\"quality\" value=\"High\">\r\n");
      out.write("\t\t\t\t\t<embed src=\"");
      out.print(contextPath);
      out.write("/img/ssp_kysuufinal.swf\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" type=\"application/x-shockwave-flash\" name=\"obj1\" width=\"579\" height=\"100\" quality=\"High\"></object>\r\n");
      out.write("\t\t");

			//System.out.println("user acc id: "useraccid);
		
      out.write("\r\n");
      out.write("\t\t\t\t<table border=\"0\" width=\"1000\" cellspacing=\"0\" background=\"");
      out.print(contextPath);
      out.write("/img/top-nav.gif\" cellpadding=\"0\">\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td class=\"menu\" align=\"center\" background=\"");
      out.print(contextPath);
      out.write("/img/");
if(cm!=null && !cm.equals("tintuc")){out.print("top-nav-off.gif");}else{out.print("top-nav-on.gif");}
      out.write("\" width=\"8%\" nowrap>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"");
      out.print(contextPath);
      out.write("/user/homefrm.jsp?cm=tintuc\"><span style=\"text-decoration: none\"><font color=\"#FFFFFF\"><b><strong>");
      out.print(_res("hd.tintuc"));
      out.write("</strong></b></font></span></a></td>\r\n");
      out.write("\t\t\t\t\t\t<td width=\"1\" nowrap></td>\r\n");
      out.write("\t\t\t\t\t\t<td class=\"menu\" align=\"center\" background=\"");
      out.print(contextPath);
      out.write("/img/");
if(cm!=null && !cm.equals("canhan")){out.print("top-nav-off.gif");}else{out.print("top-nav-on.gif");}
      out.write("\" width=\"14%\" nowrap>\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<a href=\"");
      out.print(contextPath);
      out.write("/user/thongtincanhanfrm.jsp?cm=canhan\"><span style=\"text-decoration: none\"><font color=\"#FFFFFF\"><b>");
      out.print(_res("hd.hoso"));
      out.write("</b></font></span></a></td>\r\n");
      out.write("\t\t\t\t\t\t<td width=\"1\" nowrap></td>\r\n");
      out.write("\t\t\t\t\t\t<td nowrap class=\"menu\"  align=\"center\" background=\"");
      out.print(contextPath);
      out.write("/img/");
if(cm!=null && !cm.equals("thongke")){out.print("top-nav-off.gif");}else{out.print("top-nav-on.gif");}
      out.write("\"  width=\"9%\">\r\n");
      out.write("\t\t\t\t\t\t<a href=\"");
      out.print(contextPath);
      out.write("/user/chamcongthangfrm.jsp?cm=thongke\"><span style=\"text-decoration: none\"><font color=\"#FFFFFF\"><b>");
      out.print(_res("hd.thongke"));
      out.write("</b></font></span></a></td>\r\n");
      out.write("\t\t\t\t\t\t<td width=\"1\" nowrap></td>\r\n");
      out.write("\t\t\t\t\t\t<td class=\"menu\"  align=\"center\" background=\"");
      out.print(contextPath);
      out.write("/img/");
if(cm!=null && !cm.equals("phepnam")){out.print("top-nav-off.gif");}else{out.print("top-nav-on.gif");}
      out.write("\"  width=\"9%\" nowrap>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"");
      out.print(contextPath);
      out.write("/user/phepnamfrm.jsp?cm=phepnam\"><span style=\"text-decoration: none\"><font color=\"#FFFFFF\"><b>");
      out.print(_res("hd.phepnam"));
      out.write("</b></font></span></a></td>\r\n");
      out.write("\t\t\t\t\t\t<td width=\"1\" nowrap></td>\r\n");
      out.write("\t\t\t\t\t\t");

							//System.out.println(useraccid);
							if(!useraccid.equals("null")){
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<td class=\"menu\"  align=\"center\" background=\"");
      out.print(contextPath);
      out.write("/img/");
if(cm!=null && !cm.equals("baocao")){out.print("top-nav-off.gif");}else{out.print("top-nav-on.gif");}
      out.write("\"  width=\"8%\" nowrap>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"");
      out.print(contextPath);
      out.write("/user/baocaofrm.jsp?cm=baocao\"><span style=\"text-decoration: none\"><font color=\"#FFFFFF\"><b>");
      out.print(_res("hd.baocao"));
      out.write("</b></font></span></a></td>\r\n");
      out.write("\t\t\t\t\t\t<td width=\"1\" nowrap></td>\r\n");
      out.write("\t\t\t\t\t\t");
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<td class=\"menu\" align=\"center\" background=\"");
      out.print(contextPath);
      out.write("/img/");
if(cm!=null && !cm.equals("doi")){out.print("top-nav-off.gif");}else{out.print("top-nav-on.gif");}
      out.write("\"  width=\"14%\" nowrap>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"");
      out.print(contextPath);
      out.write("/user/changepassfrm.jsp?cm=doi\"><span style=\"text-decoration: none\"><font color=\"#FFFFFF\"><b>");
      out.print(_res("hd.doi"));
      out.write("</b></font></span></a></td>\r\n");
      out.write("\t\t\t\t\t\t<td width=\"1\" nowrap></td>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<td class=\"menu\" align=\"center\" background=\"");
      out.print(contextPath);
      out.write("/img/");
if(cm!=null && !cm.equals("thoat")){out.print("top-nav-off.gif");}else{out.print("top-nav-on.gif");}
      out.write("\"  width=\"6%\" nowrap>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"");
      out.print(contextPath);
      out.write("/login.jsp?cm=logout\"><span style=\"text-decoration: none\"><font color=\"#FFFFFF\"><b>");
      out.print(_res("hd.thoat"));
      out.write("</b></font></span></a></td>\r\n");
      out.write("\t\t\t\t\t\t<td width=\"1\" nowrap></td>\r\n");
      out.write("\t\t\t\t\t\t<td height=\"28\" width=\"39%\" nowrap>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#31CFFF\" colspan=\"99\" nowrap height=\"5\"></td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t</td>");
      out.write("\n");
      out.write("\t\t\t\n");
      out.write("\t\t</tr>\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t<td width=\"1000\" height=\"350\" nowrap valign=\"top\">\n");
      out.write("\t\t\t\t<table border=\"0\" width=\"997\" cellspacing=\"1\" cellpadding=\"0\" height=\"100%\">\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td width=\"175\" nowrap bgcolor=\"#FFFFFF\" align=\"center\" valign=\"top\">\n");
      out.write("\t\t\t\t\t\t");

	System.out.println(language);
	String strSqlReportCha = "SELECT reportid, report_name FROM web_danhsach_baocao ('"+username+"','"+language+"') where preportid is null and (INVISIBLE <> 1) order by preportid asc, display_index asc";
	String strSqlReport = "";
	java.sql.Connection conn = null;
	
	try{
	    conn = dbConnManager.getConnection("topmostread");
		conn.setAutoCommit(false);	
		java.sql.PreparedStatement st=conn.prepareStatement(strSqlReportCha);
		ResultSet rs = st.executeQuery();
		

      out.write("\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("<table align=\"center\" border=\"0\" width=\"165\" cellpadding=6 cellspacing=1 bgcolor=\"#f8f8f8\" height=\"215px\">\n");
      out.write("\t<tr>\n");
      out.write("\t\t<td>\n");
      out.write("\t\t\t<div style=\"width:160px; height:350px; overflow:auto;\">\n");
      out.write("\t\t\t<table width=\"450\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
      out.write("\t\t\t\t");
while(rs.next()){
      out.write("\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td class=\"des\" style=\"font-weight:bold;\">");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t\t");

					strSqlReport = "SELECT reportid, report_name FROM web_danhsach_baocao ('"+username+"','"+language+"') where preportid = '"+rs.getInt(1)+"' and (INVISIBLE <> 1) order by preportid asc, display_index asc";
					java.sql.Statement sttemp=conn.createStatement();
					ResultSet rstemp=sttemp.executeQuery(strSqlReport);;
					//rs=st.executeQuery(strSqlReport);
				while(rstemp.next()){
      out.write("\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td class=\"desbc\" align=\"left\">&nbsp;&nbsp;\n");
      out.write("\t\t\t\t\t\t<a style=\"text-decoration:none; font-family:Arial, Helvetica, sans-serif; font-size:11; color:#003399;\" href=\"javascript:showHidedivlistreport('div");
      out.print(rstemp.getInt(1));
      out.write('\'');
      out.write(',');
      out.write('\'');
      out.print(rstemp.getInt(1));
      out.write("','img");
      out.print(rstemp.getInt(1));
      out.write("','tempimg");
      out.print(rstemp.getInt(1));
      out.write("')\">\n");
      out.write("\t\t\t\t\t\t\t<img align=\"absmiddle\" id=\"tempimg");
      out.print(rstemp.getInt(1));
      out.write("\" border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/them3.gif\" />\n");
      out.write("\t\t\t\t\t\t\t<img align=\"absmiddle\" id=\"img");
      out.print(rstemp.getInt(1));
      out.write("\" border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/them.gif\" />\n");
      out.write("\t\t\t\t\t\t");
      out.print(rstemp.getString(2));
      out.write("</a>\n");
      out.write("\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td class=\"desbc\">\n");
      out.write("\t\t\t\t\t\t<div style=\"display:none;\" id=\"div");
      out.print(rstemp.getInt(1));
      out.write("\">\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t");
}rstemp.close();sttemp.close();}conn.commit();
				strSqlReport = "SELECT reportid, report_name FROM web_danhsach_baocao ('"+username+"','"+language+"') where preportid='-1' order by preportid asc, display_index asc"; 
				rs = st.executeQuery(strSqlReport);
				while(rs.next()){
			
      out.write("\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td>\n");
      out.write("\t\t\t\t\t\t<img align=\"absmiddle\" src=\"");
      out.print(contextPath);
      out.write("/img/fileupload.gif\" />\n");
      out.write("\t\t\t\t\t\t<a style=\"border:1; text-decoration:none; font-family:Arial, Helvetica, sans-serif; font-size:11; color:#003399;\" href=\"javascript:showHidedivcontrol('divcontrol','");
      out.print(rs.getInt(1));
      out.write("')\">");
      out.print(rs.getString(2));
      out.write("</a>\n");
      out.write("\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t");
}rs.close(); st.close();
      out.write("\n");
      out.write("\t\t\t</table>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</td>\n");
      out.write("\t</tr>\n");
      out.write("\t</tr>\t\t\t\t\t\n");
      out.write("</table>\n");

	}catch(Exception e){
	      //e.printStackTrace();
	      //out.println(e.getMessage());
	}finally{
		if(conn != null)
			conn.setAutoCommit(true);
		dbConnManager.freeConnection("topmostread", conn);
	}

      out.write('\n');
      out.write("\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t<td nowrap width=\"822\" bgcolor=\"#FFFFFF\" valign=\"top\">\n");
      out.write("\t\t\t\t\t\t");
      out.write("\n");
      out.write("<script language=\"JavaScript\" src=\"");
      out.print(contextPath);
      out.write("/jscript/changeimage.js\"></script>\n");
      out.write("<script language=\"JavaScript\" src=\"");
      out.print(contextPath);
      out.write("/jscript/common_utils.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath);
      out.write("/jscript/dateutil_vi.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath);
      out.write("/jscript/jscalendar/calendar.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath);
      out.write("/jscript/jscalendar/calendar-setup.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath);
      out.write("/jscript/jscalendar/calendar-");
      out.print(language);
      out.write(".js\"></script>\n");
      out.write("<style type=\"text/css\"> \n");
      out.write("@import url(\"");
      out.print(contextPath);
      out.write("/jscript/jscalendar/calendar-system.css\"); \n");
      out.write("</style>\n");
      out.write("\t<table align=\"center\" width=\"790\">\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t<td>\n");
      out.write("\t\t\t<div id=\"divcontrol\">\n");
      out.write("\t\t\t\t<table class=\"tablecontent\" align=\"center\">\n");
      out.write("\t\t\t\t\t<tr valign=\"top\">\n");
      out.write("\t\t\t\t\t\t<td valign=\"top\"><div id=\"headercontent\" class=\"title\">");
      out.print(_res("bc.title"));
      out.write("</div></td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t</table>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t</td>\n");
      out.write("\t\t</tr>\n");
      out.write("\t\t<tr valign=\"top\">\n");
      out.write("\t\t\t<td align=\"center\" valign=\"top\">\n");
      out.write("\t\t\t<div align=\"center\" id=\"divviewbc\" style=\"vertical-align:top; display:none; border:1px solid #CCCCCC; height:290px; width:790px; overflow:auto;\">\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t</td>\n");
      out.write("\t\t</tr>\n");
      out.write("\t</table>\n");
      out.write("\t\t\t\n");
      out.write("<script language=\"javascript\">\n");
      out.write("\n");
      out.write("\tfunction loadFragmentInToElement(fragment_url, element_id, page) {\n");
      out.write("      var element = document.getElementById(element_id);\n");
      out.write("      var xmlhttp;\n");
      out.write("\n");
      out.write("\t\telement.innerHTML = '<div align=center><em><img src=\"");
      out.print(contextPath);
      out.write("/img/loading.gif\"></em></div>';\n");
      out.write("        if (window.XMLHttpRequest) {\n");
      out.write("          xmlhttp = new XMLHttpRequest();\n");
      out.write("          // branch for IE/Windows ActiveX version\n");
      out.write("      } else if (window.ActiveXObject) {\n");
      out.write("          xmlhttp = new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("      }\n");
      out.write("      xmlhttp.open(\"GET\", fragment_url,true);\n");
      out.write("      xmlhttp.onreadystatechange = function() {\n");
      out.write("          if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {\n");
      out.write("              element.innerHTML = xmlhttp.responseText;\n");
      out.write("              currentpage = page;\n");
      out.write("          }\n");
      out.write("      }\n");
      out.write("      xmlhttp.send(null);\n");
      out.write("  \t}\n");
      out.write("\t\n");
      out.write("\tfunction loadFragmentInToElement1(fragment_url, element_id, page) {\n");
      out.write("      var element = document.getElementById(element_id);\n");
      out.write("      var xmlhttp;\n");
      out.write("\n");
      out.write("\t\telement.innerHTML = '<div><em><img src=\"");
      out.print(contextPath);
      out.write("/img/loading.gif\"></em></div>';\n");
      out.write("        if (window.XMLHttpRequest) {\n");
      out.write("          xmlhttp = new XMLHttpRequest();\n");
      out.write("          // branch for IE/Windows ActiveX version\n");
      out.write("      } else if (window.ActiveXObject) {\n");
      out.write("          xmlhttp = new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("      }\n");
      out.write("      xmlhttp.open(\"GET\", fragment_url,true);\n");
      out.write("      xmlhttp.onreadystatechange = function() {\n");
      out.write("          if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {\n");
      out.write("              element.innerHTML = xmlhttp.responseText;\n");
      out.write("              currentpage = page;\n");
      out.write("          }\n");
      out.write("      }\n");
      out.write("      xmlhttp.send(null);\n");
      out.write("  \t}\n");
      out.write("  \n");
      out.write("\t\n");
      out.write("  \n");
      out.write("  \tfunction showHidedivlistreport(div,reportid,img,tempimg){\n");
      out.write("\t\tvar image=document.getElementById(img);\n");
      out.write("\t\tvar tempimage=document.getElementById(tempimg);\n");
      out.write("\t\tvar divtemp=document.getElementById(div).style.display;\n");
      out.write("\t\t//var ma_ngoaingu = document.addTdnn.ma_ngoaingu.value;\n");
      out.write("\t\tif(divtemp == 'none'){\n");
      out.write("\t\t\ttempimage.src=\"");
      out.print(contextPath);
      out.write("/img/them5.gif\";\n");
      out.write("\t\t\timage.src=\"");
      out.print(contextPath);
      out.write("/img/them4.gif\";\n");
      out.write("\t\t\tdocument.getElementById(div).style.display=\"block\";\n");
      out.write("\t\t}else{\n");
      out.write("\t\t\ttempimage.src=\"");
      out.print(contextPath);
      out.write("/img/them3.gif\";\n");
      out.write("\t\t\timage.src=\"");
      out.print(contextPath);
      out.write("/img/them.gif\";\n");
      out.write("\t\t\tdocument.getElementById(div).style.display=\"none\";\n");
      out.write("\t\t}\n");
      out.write("\t\tloadFragmentInToElement1(\"i_listreport.jsp?random=Math().random()&report_id=\"+reportid, div);\n");
      out.write("\t}\n");
      out.write("  \tfunction showIconOnMouseOver(){\n");
      out.write("\t\tif(document.getElementById('divcontrollist').style.display=='none')\n");
      out.write("\t\t\tdocument.getElementById('imgcontrol').src=\"");
      out.print(contextPath);
      out.write("/img/downonmouse.png\";\n");
      out.write("\t\telse\n");
      out.write("\t\t\tdocument.getElementById('imgcontrol').src=\"");
      out.print(contextPath);
      out.write("/img/uponmouse.png\";\n");
      out.write("\t}\n");
      out.write("\tfunction showIconOnMouseOut(){\n");
      out.write("\t\tif(document.getElementById('divcontrollist').style.display=='none')\n");
      out.write("\t\t\tdocument.getElementById('imgcontrol').src=\"");
      out.print(contextPath);
      out.write("/img/down1.png\";\n");
      out.write("\t\telse\n");
      out.write("\t\t\tdocument.getElementById('imgcontrol').src=\"");
      out.print(contextPath);
      out.write("/img/up1.png\";\n");
      out.write("\t}\n");
      out.write("\tfunction showDivControl(){\n");
      out.write("\t\tif(document.getElementById('divcontrollist').style.display=='none'){\n");
      out.write("\t\t\tdocument.getElementById('imgcontrol').src=\"");
      out.print(contextPath);
      out.write("/img/up1.png\";\n");
      out.write("\t\t\tdocument.getElementById('divcontrollist').style.display='block';\n");
      out.write("\t\t}else{\n");
      out.write("\t\t\tdocument.getElementById('imgcontrol').src=\"");
      out.print(contextPath);
      out.write("/img/down1.png\";\n");
      out.write("\t\t\tdocument.getElementById('divcontrollist').style.display='none';\n");
      out.write("\t\t}\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write(" \tfunction showHidedivcontrol(div,reportid){\n");
      out.write("\t\tdocument.getElementById('divviewbc').style.display=\"none\";\n");
      out.write("\t\tloadFragmentInToElement(\"i_controlreport.jsp?random=Math().random()&report_id=\"+reportid, div);\n");
      out.write("\t}\n");
      out.write("\tfunction functUpValue(div,id){\n");
      out.write("\t\tvar value = document.getElementById(id).value;\n");
      out.write("\t\tloadFragmentInToElement(\"i_valueup.jsp?random=Math().random()&id=\"+id+\"&value=\"+value, div);\n");
      out.write("\t}\n");
      out.write("\tfunction functDownValue(div,id){\n");
      out.write("\t\tvar value = document.getElementById(id).value;\n");
      out.write("\t\tloadFragmentInToElement(\"i_valuedown.jsp?random=Math().random()&id=\"+id+\"&value=\"+value, div);\n");
      out.write("\t}\n");
      out.write("\tfunction funcViewBaocao(report_id,listParamName){\n");
      out.write("\t\tdocument.getElementById('divviewbc').style.display=\"block\";\n");
      out.write("\t\tvar listParamValue = '';\n");
      out.write("\t\tvar arrListParamName = listParamName.split('<!*-*!>');\n");
      out.write("\t\tfor(i=0;i<arrListParamName.length;i++){\n");
      out.write("\t\t\tif(arrListParamName[i]!=''){\n");
      out.write("\t\t\t\t//alert(document.frmView[list[i]].value);\n");
      out.write("\t\t\t\tvar temp=\"\";\n");
      out.write("\t\t\t\tif(checkDate(document.frmView[arrListParamName[i]], true)=='TRUE')\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\tvar arrtemp = document.frmView[arrListParamName[i]].value.split('/');\n");
      out.write("\t\t\t\t\ttemp = arrtemp[1] + '/' + arrtemp[0] + '/' + arrtemp[2];\n");
      out.write("\t\t\t\t\tlistParamValue = listParamValue + temp + '<!*-*!>';\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t\telse{\n");
      out.write("\t\t\t\t\tif(document.frmView[arrListParamName[i]].type=='checkbox')\n");
      out.write("\t\t\t\t\t\tlistParamValue = listParamValue + document.frmView[arrListParamName[i]].checked + '<!*-*!>';\n");
      out.write("\t\t\t\t\telse\n");
      out.write("\t\t\t\t\t\tlistParamValue = listParamValue + document.frmView[arrListParamName[i]].value + '<!*-*!>';\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t}\n");
      out.write("\t\t}\n");
      out.write("\t\t//alert(listParamValue);\n");
      out.write("\t\t//alert(listParamName);\n");
      out.write("\t\t//var url = ('i_viewbaocao.jsp?listParamName='+listParamName+'&report_id='+report_id+'&listParamValue='+listParamValue);\n");
      out.write("\t\t\n");
      out.write("\t\tloadFragmentInToElement(\"i_viewbaocao.jsp?random=Math().random()&listParamName=\"+listParamName+\"&report_id=\"+report_id+\"&listParamValue=\"+listParamValue, \"divviewbc\" );\n");
      out.write("\t\t\n");
      out.write("\t\tdocument.getElementById('imgcontrol').src=\"");
      out.print(contextPath);
      out.write("/img/down1.png\";\n");
      out.write("\t\tdocument.getElementById('divcontrollist').style.display=\"none\";\n");
      out.write("\t\twindow.scroll(0,0);\n");
      out.write("\t}\n");
      out.write("\n");
      out.write(" </script>");
      out.write("\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t</table>\t\n");
      out.write("\t\t\t</td>\n");
      out.write("\t\t</tr>\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t\t");
      out.write("\t\r\n");
      out.write("\t\t<td background=\"");
      out.print(contextPath);
      out.write("/img/bg-foster.gif\" style=\"font-family:Arial, Helvetica, sans-serif; font-size:12; color:#FFFFFF;\" nowrap height=\"26\" align=\"right\">\r\n");
      out.write("\t\t\t");
      out.print(_res("ft.company"));
      out.write("\r\n");
      out.write("\t\t</td>\t\r\n");
      out.write("\n");
      out.write("\t\t</tr>\n");
      out.write("\t</table>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
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
