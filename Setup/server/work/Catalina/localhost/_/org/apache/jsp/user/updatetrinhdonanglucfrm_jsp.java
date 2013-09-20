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
import java.util.ArrayList;

public final class updatetrinhdonanglucfrm_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_dependants = new java.util.ArrayList(11);
    _jspx_dependants.add("/user/../standard.jsp");
    _jspx_dependants.add("/user/../dbconnect.jsp");
    _jspx_dependants.add("/user/resource.inc");
    _jspx_dependants.add("/user/redirect_user.jsp");
    _jspx_dependants.add("/user/../header.jsp");
    _jspx_dependants.add("/user/../leftpanel.jsp");
    _jspx_dependants.add("/user/../user/leftcanhan.jsp");
    _jspx_dependants.add("/user/../user/leftthongke.jsp");
    _jspx_dependants.add("/user/../user/leftphepnam.jsp");
    _jspx_dependants.add("/user/updatetrinhdonangluc.jsp");
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
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write('\r');
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
      out.write('\r');
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

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>");
      out.print(_res("udtdnl.title"));
      out.write("</title>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body topmargin=\"0\" leftmargin=\"0\" background=\"");
      out.print(contextPath);
      out.write("/img/bg.png\" style=\"background-attachment: fixed\">\r\n");
      out.write("\r\n");
      out.write("<div align=\"center\">\r\n");
      out.write("\t<table border=\"0\" width=\"1000\" cellspacing=\"0\" cellpadding=\"0\" background=\"");
      out.print(contextPath);
      out.write("/img/bg-page.gif\">\r\n");
      out.write("\t\t<tr>\r\n");
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
      out.write("\t\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td width=\"1000\" height=\"350\" nowrap valign=\"top\">\r\n");
      out.write("\t\t\t\t<table border=\"0\" width=\"997\" cellspacing=\"1\" cellpadding=\"0\" height=\"100%\">\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td width=\"175\" nowrap bgcolor=\"#FFFFFF\" align=\"center\" valign=\"top\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.write('\r');
      out.write('\n');

	String strSqlTtcn1 = ("select * from WEB_XEM_THONGTIN_NHANVIEN('"+username+"')");
	

      out.write("\t\r\n");
      out.write("<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" height=\"5\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("</table>\t\t\t\t\t\t\r\n");
      out.write("<table align=\"center\" border=\"0\" width=\"165\" cellspacing=\"0\" cellpadding=\"0\" background=\"");
      out.print(contextPath);
      out.write("/img/bg-left.gif\" height=\"215px\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td style=\"font-weight: bold;\" height=\"35\" align=\"center\" class=\"des\">\r\n");
      out.write("\t\t\t");
      out.print(_res("lpn.hello"));
      out.write("\r\n");
      out.write("\t\t<br>\r\n");
      out.write("\t\t");

		java.sql.Connection conn1=null;
		try{
			conn1 = dbConnManager.getConnection("topmostread");	
			java.sql.PreparedStatement st1=conn1.prepareStatement(strSqlTtcn1);
			ResultSet rs1 = st1.executeQuery();
			while(rs1.next()){ 
			String hoten = rs1.getString(2) + " " + rs1.getString(3) + " " + rs1.getString(4);
			if(hoten!=null){
      out.write("\r\n");
      out.write("\t\t\t\t");
      out.print(hoten);
} else {
      out.write("\r\n");
      out.write("\t\t\t\tNo Name\r\n");
      out.write("\t\t\t");
}
      out.write("</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td height=\"170\" align=\"center\">\r\n");
      out.write("\t\t<img border=\"1\" ");
if(rs1.getBlob(43)==null || rs1.getBlob(43).equals("null")){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/no_img.jpg\"");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/user/image.jsp\"");
}
      out.write(" width=\"124\" height=\"154\"></td>\t\t\t\t\t\t\t\t\r\n");
      out.write("\t");
 } 
		//rsttcn1.close(); 
		rs1.close();
		st1.close();
	  //conn1.close();
		}catch(Exception e){
		}finally{
			dbConnManager.freeConnection("topmostread", conn1);
		}
      out.write("\r\n");
      out.write("\t</tr>\r\n");
      out.write("    <form name=\"frmLanguage\" action=\"");
      out.print(contextPath);
      out.write("/user/RegistryController.do\" method=\"post\">\r\n");
      out.write("    \t<input type=\"hidden\" name=\"lang\" />\t\r\n");
      out.write("        <input type=\"hidden\" name=\"username\" value=\"");
      out.print(username);
      out.write("\" />\r\n");
      out.write("        <input type=\"hidden\" name=\"state\" value=\"changelang\" />\r\n");
      out.write("    <tr bgcolor=\"#E8F5F7\">\r\n");
      out.write("    \t<td style=\"font-weight: bold;\" height=\"35\" align=\"center\" ><a ");
if(!language.equals("vi")){
      out.write("href=\"javascript:changeLang('vi');\"");
}
      out.write(" class=\"des\" style=\"text-decoration:none;\" title=\"");
      out.print(_res("lang.vn"));
      out.write("\"><img border=\"0\" align=\"absmiddle\" src=\"");
      out.print(contextPath);
      out.write("/img/viet.gif\"/> ");
      out.print(_res("lang.vn"));
      out.write("</a> - <a class=\"des\" title=\"");
      out.print(_res("lang.eng"));
      out.write('"');
if(!language.equals("eng")){
      out.write(" href=\"javascript:changeLang('eng');\"");
}
      out.write(" style=\"text-decoration:none;\"><img border=\"0\" align=\"absmiddle\" src=\"");
      out.print(contextPath);
      out.write("/img/eng.gif\" /> ");
      out.print(_res("lang.eng"));
      out.write("</a></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    </form>\t\t\t\t\t\t\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("\tfunction changeLang(value){\r\n");
      out.write("\t\tdocument.frmLanguage.lang.value = value;\r\n");
      out.write("\t\tdocument.frmLanguage.submit();\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\t\t");
if(cm.equals("canhan")){
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<table border=\"0\" width=\"165\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#E8F5F7\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<table border=\"0\" width=\"90%\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td height=\"28\" style=\"border-bottom: 1px dotted #000000; font-family:Arial, Helvetica, sans-serif; font-size:12\" valign=\"bottom\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<img border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/bullet.gif\" width=\"7\" height=\"7\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<b><font color=\"#007D93\"><a href=\"");
      out.print(contextPath);
      out.write("/user/thongtincanhanfrm.jsp\"><span style=\"text-decoration: none\"><font color=\"#007D93\">");
      out.print(_res("lpn.thongtincanhan"));
      out.write("</font></span></a></b></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td height=\"28\" style=\"border-bottom: 1px dotted #000000; font-family:Arial, Helvetica, sans-serif; font-size:12;\" valign=\"bottom\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<img border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/bullet.gif\" width=\"7\" height=\"7\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<b><a href=\"");
      out.print(contextPath);
      out.write("/user/trinhdonanglucfrm.jsp\"><span style=\"text-decoration: none\"><font color=\"#007D93\">");
      out.print(_res("lpn.trinhdonangluc"));
      out.write("</font></span></a></b></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td height=\"28\" style=\"border-bottom: 1px dotted #000000; font-family:Arial, Helvetica, sans-serif; font-size:12;\" valign=\"bottom\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<img border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/bullet.gif\" width=\"7\" height=\"7\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<b><span style=\"text-decoration: none\"><font color=\"#007D93\">");
      out.print(_res("lpn.capnhat"));
      out.write("</font></span></b></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td height=\"28\" style=\"border-bottom: 1px dotted #000000; font-family:Arial, Helvetica, sans-serif; font-size:12;\" valign=\"bottom\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t&nbsp;&nbsp;&nbsp;&nbsp;<img border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/bullet_green_02.gif\" width=\"7\" height=\"7\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<b><a href=\"");
      out.print(contextPath);
      out.write("/user/updatethongtincanhanfrm.jsp\"><span style=\"text-decoration: none\"><font color=\"#007D93\">");
      out.print(_res("lpn.thongtincanhan"));
      out.write("</font></span></a></b></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td height=\"28\" style=\"border-bottom: 1px dotted #000000; font-family:Arial, Helvetica, sans-serif; font-size:12;\" valign=\"bottom\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t&nbsp;&nbsp;&nbsp;&nbsp;<img border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/bullet_green_02.gif\" width=\"7\" height=\"7\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<b><a href=\"");
      out.print(contextPath);
      out.write("/user/updatetrinhdonanglucfrm.jsp\"><span style=\"text-decoration: none\"><font color=\"#007D93\">");
      out.print(_res("lpn.trinhdonangluc"));
      out.write("</font></span></a></b></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td height=\"25\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t\t");
}
      out.write("\r\n");
      out.write("\t\t");
if(cm.equals("thongke")){
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<table border=\"0\" width=\"165\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#E8F5F7\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<table border=\"0\" width=\"90%\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td height=\"28\" style=\"border-bottom: 1px dotted #000000\" valign=\"bottom\" class=\"des\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<img border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/bullet.gif\" width=\"7\" height=\"7\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<b><font color=\"#007D93\"><a href=\"");
      out.print(contextPath);
      out.write("/user/chamcongthangfrm.jsp\"><span style=\"text-decoration: none\"><font color=\"#007D93\">");
      out.print(_res("ltk.chamcongthang"));
      out.write("</font></span></a></b></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td height=\"28\" style=\"border-bottom: 1px dotted #000000\" valign=\"bottom\" class=\"des\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<img border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/bullet.gif\" width=\"7\" height=\"7\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<b><font color=\"#007D93\"><a href=\"");
      out.print(contextPath);
      out.write("/user/chamcongngayfrm.jsp\"><span style=\"text-decoration: none\"><font color=\"#007D93\">");
      out.print(_res("ltk.chamcongngay"));
      out.write("</font></span></a></b></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td height=\"28\" style=\"border-bottom: 1px dotted #000000\" valign=\"bottom\" class=\"des\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<img border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/bullet.gif\" width=\"7\" height=\"7\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<b><a href=\"");
      out.print(contextPath);
      out.write("/user/phieuluongfrm.jsp\"><span style=\"text-decoration: none\"><font color=\"#007D93\">");
      out.print(_res("ltk.phieuluong"));
      out.write("</font></span></a></b></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td height=\"25\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t");
}
      out.write("\r\n");
      out.write("\t\t");
if(cm.equals("phepnam")){

	String	strSqlTtpn = ("select distinct * from web_dsnv_duocuyquyen");
	java.sql.Connection conn2 = null;
	int check = 0;
	try{
		conn2 = dbConnManager.getConnection("topmostread");	
		java.sql.PreparedStatement st=conn2.prepareStatement(strSqlTtpn);
		ResultSet rs = st.executeQuery();
		while(rs.next()){
			if(rs.getString(1).equals(username))
				check = 1;
		}
		rs.close();
		st.close();
		}catch(Exception e){
		}finally{
			dbConnManager.freeConnection("topmostread", conn2);
		}

      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<table border=\"0\" width=\"165\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#E8F5F7\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<table border=\"0\" width=\"90%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#E8F5F7\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td height=\"28\" style=\"border-bottom: 1px dotted #000000\" valign=\"bottom\" class=\"des\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<img border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/bullet.gif\" width=\"7\" height=\"7\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<b><font color=\"#007D93\"><a href=\"");
      out.print(contextPath);
      out.write("/user/phepnamfrm.jsp\"><span style=\"text-decoration: none\"><font color=\"#007D93\">");
      out.print(_res("lpn.xemphepnam"));
      out.write("</font></span></a></b></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td height=\"28\" style=\"border-bottom: 1px dotted #000000\" valign=\"bottom\" class=\"des\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<img border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/bullet.gif\" width=\"7\" height=\"7\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<b><a href=\"");
      out.print(contextPath);
      out.write("/user/dangkyphepfrm.jsp\"><span style=\"text-decoration: none\"><font color=\"#007D93\">");
      out.print(_res("lpn.dangkyphep"));
      out.write("</font></span></a></b></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("                                            ");
if(check == 1){
      out.write("\r\n");
      out.write("                                            <tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td height=\"28\" style=\"border-bottom: 1px dotted #000000\" valign=\"bottom\" class=\"des\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<img border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/bullet.gif\" width=\"7\" height=\"7\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<b><a href=\"");
      out.print(contextPath);
      out.write("/user/duyetphepfrm.jsp\"><span style=\"text-decoration: none\"><font color=\"#007D93\">");
      out.print(_res("dp.title"));
      out.write("</font></span></a></b></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("                                            <tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td height=\"28\" style=\"border-bottom: 1px dotted #000000\" valign=\"bottom\" class=\"des\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<img border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/bullet.gif\" width=\"7\" height=\"7\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<b><a href=\"");
      out.print(contextPath);
      out.write("/user/uyquyenduyetphepfrm.jsp\"><span style=\"text-decoration: none\"><font color=\"#007D93\">");
      out.print(_res("uqdp.title"));
      out.write("</font></span></a></b></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("                                            ");
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td height=\"25\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t");
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t<td nowrap width=\"822\" bgcolor=\"#FFFFFF\">\r\n");
      out.write("\t\t\t\t\t\t");
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
      out.write("/jscript/jscalendar/calendar-vi.js\"></script>\n");
      out.write("<style type=\"text/css\"> \n");
      out.write("@import url(\"");
      out.print(contextPath);
      out.write("/jscript/jscalendar/calendar-system.css\"); \n");
      out.write("</style>\n");
      out.write("\n");
      out.write("\n");

	//String strSqlTtcn = ("select HO_NHANVIEN, TENDEM_NHANVIEN, TEN_NHANVIEN from WEB_XEM_THONGTIN_NHANVIEN('"+username+"')");
	String sqlcheck = ("select * from HR_CAUHINH_SUATHONGTIN('"+username+"')");
	String ma_ngoaingu1 = "";
	java.sql.Connection conn = null;
	int rowcount = 0;
	try{
	    conn = dbConnManager.getConnection("topmostread");
		conn.setAutoCommit(false);	
		java.sql.PreparedStatement st=conn.prepareStatement(sqlcheck);
		ResultSet rs = st.executeQuery();
		int trinhdovanhoa = 0; int trinhdohocvan = 0; int namtotnghiep = 0; 
		int nghenghiep = 0; int sotruongcongtac = 0; int congvieclaunhat = 0;
		int trinhdongoaingu = 0; int trinhdokynang = 0; int trinhdochuyenmon = 0;
		if(rs.next()){
			trinhdovanhoa=rs.getInt(46); trinhdohocvan=rs.getInt(45); namtotnghiep=rs.getInt(49);
			nghenghiep=rs.getInt(48); sotruongcongtac=rs.getInt(47); congvieclaunhat=rs.getInt(50);
		}
		sqlcheck = ("select TRINHDO_NGOAINGU, TRINHDO_KYNANG, TRINHDO_CHUYENMON from HR_CONFIG_EDIT_EMPLOYEE");
		rs = st.executeQuery(sqlcheck);
		if(rs.next()){
			trinhdongoaingu = rs.getInt(1); trinhdokynang =rs.getInt(2); trinhdochuyenmon = rs.getInt(3);
		}
		//System.out.print(trinhdongoaingu);
		//System.out.print(trinhdokynang);
		//System.out.print(trinhdochuyenmon);
		//java.sql.PreparedStatement st=conn.prepareStatement(strSqlTtcn);
		//ResultSet rs = st.executeQuery();

      out.write("\t\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t\t<table class=\"tablecontent\" align=\"center\">\t\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td><div id=\"headercontent\" class=\"title\">");
      out.print(_res("udtdnl.title"));
      out.write("</div></td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t\t");

					String strSqlTdhvc = ("select * from WEB_XEM_TRINHDO_HOCVAN('"+username+"')");
					String strSqlTdhvctemp = "select * from WEB_XEM_TRINHDO_HOCVAN_BENWEB('"+username+"')";
					
					//java.sql.Statement sttdhvc=conn.createStatement();
					//java.sql.PreparedStatement st=conn.prepareStatement(strSqlTdhvc);
					//ResultSet rs = st.executeQuery();
					//rs = st.executeQuery(strSqlTdhvc);
					rs = st.executeQuery(strSqlTdhvc);
					if(rs.next()){
						java.sql.Statement sttemp=conn.createStatement();
						ResultSet rstemp=sttemp.executeQuery(strSqlTdhvctemp);
						if(rstemp.next()){
				
      out.write("\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td>\t\t\n");
      out.write("\t\t\t\t\t\t<table align=\"center\" width=\"790\" cellpadding=6 cellspacing=1 style=\"border:1px solid #CCCCCC;\">\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td colspan=\"6\" class=\"title1\" bgcolor=\"#007D93\">&nbsp;");
      out.print(_res("tdnl.hocvanchung"));
      out.write("</td>\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t<form name=\"frmUpdate\" action=\"");
      out.print(contextPath);
      out.write("/user/UpdateController.do\" method=\"post\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"state\" value=\"updatetdhvc\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"manv\" value=\"");
      out.print(username);
      out.write("\">\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"126\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.vanhoa"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"266\" bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t");

										String tdvh = rs.getString(4);
										if(tdvh==null || tdvh.equals("null")){
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");
}else {
      out.print(tdvh);
      out.write("\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}
      out.write("\t\t\t\t\t\t\t  \t</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"0\" bgcolor=\"#CCCCCC\">\n");
      out.write("\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"294\" bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<select name=\"trinhdovanhoa\" ");
if(trinhdovanhoa!=1){
      out.write(" style=\"display:none;\"");
}
      out.write(">\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t");

										String strSqlvanhoa = "select ACADEMIC_NO, ACADEMIC_NAME from HR_ACADEMIC";
										java.sql.Statement st1=conn.createStatement();
										ResultSet rs1=st1.executeQuery(strSqlvanhoa);
										if(rstemp.getString(3) == null || rstemp.getString(3).equals("null")){
									
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"\" selected>--------*--------</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t");

											while(rs1.next()){ 
									
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"");
      out.print(rs1.getString(1));
      out.write('"');
      out.write('>');
      out.print(rs1.getString(2));
      out.write("</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}}else {
											while(rs1.next()){
									
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"");
      out.print(rs1.getString(1));
      out.write('"');
      out.write(' ');
if(rstemp.getString(3).equals(rs1.getString(1))){
      out.write(" selected=\"selected\"");
}
      out.write('>');
      out.print(rs1.getString(2));
      out.write("</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}}
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t</select>\n");
      out.write("\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"36\" bgcolor=\"#f8f8f8\" class=\"value\" align=\"center\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(trinhdovanhoa!=1){
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\"\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}else{
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\"");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.hocvan"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t");

									String tdhv = rs.getString(1);
									if(tdhv==null || tdhv.equals("null")){
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(rs.getString(2));
      out.write("\t\n");
      out.write("\t\t\t\t\t\t\t\t");
}
      out.write("\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"294\" bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<select name=\"trinhdohocvan\" ");
if(trinhdohocvan!=1){
      out.write(" style=\"display:none;\"");
}
      out.write(">\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t");

										String strSqlhocvan = "select EDU_LEVEL_NO, EDU_LEVEL_NAME from HR_EDU_LEVEL";
										//java.sql.Statement st1=conn.createStatement();
										rs1=st1.executeQuery(strSqlhocvan);
										if(rstemp.getString(1) == null || rstemp.getString(1).equals("null")){
									
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"\" selected>--------*--------</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t");

											while(rs1.next()){ 
									
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"");
      out.print(rs1.getString(1));
      out.write('"');
      out.write('>');
      out.print(rs1.getString(2));
      out.write("</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}}else {
											while(rs1.next()){
									
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"");
      out.print(rs1.getString(1));
      out.write('"');
      out.write(' ');
if(rstemp.getString(1).equals(rs1.getString(1))){
      out.write(" selected=\"selected\"");
}
      out.write('>');
      out.print(rs1.getString(2));
      out.write("</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}}
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t</select>\n");
      out.write("\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"36\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(trinhdohocvan!=1){
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\"\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}else{
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\"");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.namtotnghiep"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(8)==null || rs.getString(8).equals("null")){
}else{
      out.print(rs.getInt(8) );
}
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<input name=\"namtotnghiep\" ");
if(namtotnghiep!=1){
      out.write(" readonly=\"true\"");
} if(rstemp.getString(8)==null || rstemp.getString(8).equals("null")){
      out.write(" value=\"\"");
}else{
      out.write("value=\"");
      out.print(rstemp.getInt(8));
      out.write('"');
}
      out.write(" size=6 class=\"textbox\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<img ");
if(namtotnghiep!=1){
      out.write(" disabled=\"disabled\"");
}
      out.write(" onclick=\"return showCalendar('btnnamtotnghiep','namtotnghiep', '%Y', false);\" align=\"absmiddle\" id=\"btnnamtotnghiep\" src=\"");
      out.print(contextPath);
      out.write("/img/calendar2/calendar.gif\" alt='");
      out.print(_res("tdnl.namtotnghiep"));
      out.write("'>\t\n");
      out.write("\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"36\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(namtotnghiep!=1){
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\"\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}else{
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\"");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.nghenghiep"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t");

									String nn = rs.getString(6);
									if(nn == null || nn.equals("null")){
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString(7));
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t");
}
      out.write("\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"294\" bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<select name=\"nghenghiep\" ");
if(nghenghiep!=1){
      out.write(" style=\"display:none;\"");
}
      out.write(">\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t");

										String strSqlnghenghiep = "select CAREER_NO, CAREER_NAME from HR_CAREER";
										//java.sql.Statement st1=conn.createStatement();
										rs1=st1.executeQuery(strSqlnghenghiep);
										if(rstemp.getString(6) == null || rstemp.getString(6).equals("null")){
									
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"\" selected>--------*--------</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t");

											while(rs1.next()){ 
									
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"");
      out.print(rs1.getString(1));
      out.write('"');
      out.write('>');
      out.print(rs1.getString(2));
      out.write("</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}}else {
											while(rs1.next()){
									
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"");
      out.print(rs1.getString(1));
      out.write('"');
      out.write(' ');
if(rstemp.getString(6).equals(rs1.getString(1))){
      out.write(" selected=\"selected\"");
}
      out.write('>');
      out.print(rs1.getString(2));
      out.write("</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}}rs1.close();st1.close();
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t</select>\n");
      out.write("\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"36\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(nghenghiep!=1){
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\"\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}else{
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\"");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.sotruong"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t");

									String stct = rs.getString(5);
									if(stct==null || stct.equals("null")){
      out.write(" \n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString(5) );
      out.write(' ');
}
      out.write("\t\t\t\t\t\t\t  \t</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\" align=\"left\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"sotruongcongtac\" ");
if(rstemp.getString(5)==null || rstemp.getString(5).equals("null"))
									{
      out.write(" value=\"\"");
} else {
      out.write("value=\"");
      out.print(rstemp.getString(5));
      out.write('"');
} if(sotruongcongtac!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  />\n");
      out.write("\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t \t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(sotruongcongtac!=1){
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\"\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}else{
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\"");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.launhat"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t");

									String cvln = rs.getString(9);
									if(cvln==null || cvln.equals("null")){
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t ");
} 
									else {
      out.print(rs.getString(9));
      out.write("  \n");
      out.write("\t\t\t\t\t\t\t\t");
}
      out.write("\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\" align=\"left\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"congvieclaunhat\" ");
if(rstemp.getString(9)==null || rstemp.getString(9).equals("null"))
									{
      out.write(" value=\"\"");
} else {
      out.write("value=\"");
      out.print(rstemp.getString(9));
      out.write('"');
} if(congvieclaunhat!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  />\n");
      out.write("\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t \t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(congvieclaunhat!=1){
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\"\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}else{
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\"");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t<tr><td bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\" colspan=\"5\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<input name=\"update\"  type=\"button\" ");
if(trinhdovanhoa==1 || trinhdohocvan==1 || namtotnghiep==1 || nghenghiep==1 || sotruongcongtac==1 || congvieclaunhat==1){
}else{
      out.write(" disabled=\"disabled\"");
}
      out.write(" value=\"");
      out.print(_res("udtdnl.submit"));
      out.write("\" Onclick=\"javascript:funcPostData()\">\n");
      out.write("\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t\t\t");
}rstemp.close();sttemp.close();}
      out.write("\n");
      out.write("\t\t\t\t\t\t</table>\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t</tr>\t\t\t\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t  \t<td>\n");
      out.write("\t\t\t\t  \t<table width=\"790\" align=\"center\" border=\"0\" cellspacing=\"1\" cellpadding=\"2\" bgcolor=\"#007D93\">\n");
      out.write("                    <tr>\n");
      out.write("                      \t<td colspan=\"6\" align=\"left\" class=\"title1\" bgcolor=\"#007D93\">&nbsp;");
      out.print(_res("tdnl.ngoaingu"));
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("\t\t\t\t\t<form name=\"frmDeleteTdnn\" action=\"");
      out.print(contextPath);
      out.write("/user/DeleteController.do\" method=\"post\">\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" name=\"state\" value=\"DeleteTdnn\">\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" name=\"ma_nn\">\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" name=\"ma_trinhdonn\">\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" name=\"manv\" value=\"");
      out.print(username);
      out.write("\">\n");
      out.write("                    <tr>\n");
      out.write("                      \t<td width=\"13%\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.tenngoaingu"));
      out.write("</td>\n");
      out.write("                      \t<td width=\"11%\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.trinhdo"));
      out.write("</td>\n");
      out.write("                      \t<td width=\"11%\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.ngaycap"));
      out.write("</td>\n");
      out.write("                      \t<td width=\"39%\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.noicap"));
      out.write("</td>\n");
      out.write("                      \t<td width=\"17%\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.thanhtich"));
      out.write("</td>\n");
      out.write("                      \t<td width=\"9%\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"des\"></td>\n");
      out.write("                    </tr>\n");
      out.write("\t\t\t\t\t\n");
      out.write("                    ");

							String strSqlTdnn = ("select * from WEB_XEM_TRINHDO_NGOAINGU('"+username+"')");
							//java.sql.Statement sttdnn=conn.createStatement();
							rs = st.executeQuery(strSqlTdnn);
							int i = 0;
							while(rs.next()){
								i ++;
							}

							if(i !=0){
								rs = st.executeQuery(strSqlTdnn);
								//System.out.print("resultset sdfsdfdsf:" + resulttdnn);
								while (rs.next()){
								ma_ngoaingu1=rs.getString(1);
						
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                      \t<td bgcolor=\"#FFF7E7\" class=\"value\">");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                      \t<td bgcolor=\"#FFF7E7\" class=\"value\">");
      out.print(rs.getString(4));
      out.write("</td>\n");
      out.write("                      \t<td bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t  ");
if(rs.getDate(5)!=null){
      out.write("\n");
      out.write("                      \t");
      out.print(SString.toString(rs.getDate(5),"dd/MM/yyyy"));
      out.write("\n");
      out.write("                      ");
} else {
}
      out.write("\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("                      \t\n");
      out.write("\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">");
if(rs.getString(6)==null || rs.getString(6).equals("null")){
      out.write("\n");
      out.write("                         ");
} else {
      out.write("\n");
      out.write("                        \t");
      out.print(rs.getString(6));
      out.write("\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("                      \t<td bgcolor=\"#FFF7E7\" class=\"value\">");
if(rs.getString(7)==null || rs.getString(7).equals("null")){
      out.write("\n");
      out.write("                          ");
} else {
      out.write("\n");
      out.write("                        ");
      out.print(rs.getString(7));
      out.write("\n");
      out.write("                        ");
}
      out.write("</td>\n");
      out.write("                      \t<td bgcolor=\"#FFF7E7\" class=\"value\" align=\"center\">\n");
      out.write("\t\t\t\t\t  ");
if(trinhdongoaingu==1){
					  		if(rs.getInt(9)==0){
      out.write("\n");
      out.write("\t\t\t\t\t  \t\t<a class=\"links\" href=\"javascript:funcDeleteTdnn('");
      out.print(rs.getString(1));
      out.write('\'');
      out.write(',');
      out.write('\'');
      out.print(rs.getString(3));
      out.write("');\" title=\"");
      out.print(_res("udtdnl.delete"));
      out.write("\">\n");
      out.write("\t\t\t\t\t\t\t\t<img border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/delete.gif\" /></a> - \n");
      out.write("\t\t\t\t\t\t\t<a class=\"links\" href=\"");
      out.print(contextPath);
      out.write("/user/i_edittrinhdonnfrm.jsp?ma_ngoaingu=");
      out.print(rs.getString(1));
      out.write("&ma_trinhdonn=");
      out.print(rs.getString(3));
      out.write("\" title=\"");
      out.print(_res("udtdnl.update"));
      out.write("\">\n");
      out.write("\t\t\t\t\t\t\t\t<img border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/edit.gif\" /></a>\n");
      out.write("\t\t\t\t\t  ");
}}
      out.write("\n");
      out.write("\t\t\t\t\t  \t</td>\n");
      out.write("                   </tr>\n");
      out.write("                    ");
}} else {
      out.write("\n");
      out.write("                   <tr>\n");
      out.write("                      \t<td bgcolor=\"#FFF7E7\" class=\"value\">&nbsp;</td>\n");
      out.write("                      \t<td bgcolor=\"#FFF7E7\" class=\"value\"></td>\n");
      out.write("                      \t<td bgcolor=\"#FFF7E7\" class=\"value\"></td>\n");
      out.write("                      \t<td bgcolor=\"#FFF7E7\" class=\"value\"></td>\n");
      out.write("                      \t<td bgcolor=\"#FFF7E7\" class=\"value\"></td>\n");
      out.write("                      \t<td bgcolor=\"#FFF7E7\" class=\"value\"></td>\n");
      out.write("                    </tr>\n");
      out.write("                    ");
}
      out.write("\n");
      out.write("\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td colspan=\"6\">\n");
      out.write("\t\t\t\t\t\t\t<div width=\"790\" align=\"center\" id=\"divEditTdnn\" style=\"display:none\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t");
if(trinhdongoaingu==1){
      out.write("\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\" colspan=\"6\" class=\"des\">\n");
      out.write("\t\t\t\t\t\t\t");
      out.print(_res("udtdnl.addtdnn"));
      out.write(" &nbsp;\n");
      out.write("\t\t\t\t\t\t\t<a href=\"javascript:showHidedivtask('divAddTdnn','imgTdnn')\">\n");
      out.write("\t\t\t\t\t\t\t<img border=\"0\" id=\"imgTdnn\" src=\"");
      out.print(contextPath);
      out.write("/img/down.gif\"></a>\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td colspan=\"6\" bgcolor=\"#FFFFFF\">\n");
      out.write("\t\t\t\t\t\t<div width=\"790\" align=\"center\" id=\"divAddTdnn\" style=\"display:none\">\n");
      out.write("\t\t\t\t\t\t\t<table align=\"center\" width=\"770\" border=\"0\" cellpadding=6 cellspacing=1 style=\"border:1px solid #CCCCCC;\" >\n");
      out.write("\t\t\t\t\t\t\t<form name=\"addTdnn\" action=\"");
      out.print(contextPath);
      out.write("/user/RegistryController.do\" method=\"post\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"state\" value=\"addTdnn\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"username\" value=\"");
      out.print(username);
      out.write("\" />\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t<td width=\"97\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.tenngoaingu"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t<td width=\"227\" bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");

											String strSqlLanguage = "select * from HR_LANGUAGE";
											//String strSqlLanguage_Level = "select * from HR_LANGUAGE_LEVEL where HR_LANGUAGE_LEVEL";
											rs=st.executeQuery(strSqlLanguage);
											String ma_ngoaingu=null;
										
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<select name=\"ma_ngoaingu\" onChange=\"javascript:callTrinhdonn();\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t");

											int l=0;
											while(rs.next()){
											if(l==0){ma_ngoaingu = rs.getString(1);}
											
      out.write("\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<option value=\"");
      out.print(rs.getString(1));
      out.write('"');
      out.write('>');
      out.print(rs.getString(2));
      out.write("</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t");

											 l++;
											 }
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</select>\n");
      out.write("\t\t\t\t\t\t\t\t  \t</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t<td width=\"103\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.trinhdo"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t<td width=\"288\" bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");

											String strSqlLanguage_Level = "select * from HR_LANGUAGE_LEVEL where HR_LANGUAGE_LEVEL.language_no = '"+ma_ngoaingu+"'";
											rs=st.executeQuery(strSqlLanguage_Level);
										
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div id=\"div_trinhdonn\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<select name=\"ma_trinhdonn\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t");
while(rs.next()){
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<option value=\"");
      out.print(rs.getString(2));
      out.write('"');
      out.write('>');
      out.print(rs.getString(3));
      out.write("</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t");
}
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</select>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t  </td>\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.ngaycap"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t<td width=\"288\" bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input name=\"ngaycaptdnn\" value=\"");
      out.print(SString.toString(new java.util.Date(),"dd/MM/yyyy"));
      out.write("\" size=6 class=\"textbox\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<img onclick=\"return showCalendar('btngaycaptdnn','ngaycaptdnn', '%d/%m/%Y', false);\" align=\"absmiddle\" id=\"btngaycaptdnn\" src=\"");
      out.print(contextPath);
      out.write("/img/calendar2/calendar.gif\" alt='ngaycap'></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.noicap"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"noicaptdnn\" size=\"40\">\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.thanhtich"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"thanhtichtdnn\">\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\"></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\"></td>\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" colspan=\"4\"><input name=\"buttontdnn\" type=\"button\" value=\"");
      out.print(_res("udtdnl.add"));
      out.write("\" Onclick=\"javascript:funcPostDataTdnn();\"></td>\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t\t\t</table>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t");
}
      out.write("\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("                  </table>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td>\n");
      out.write("\t\t\t\t\t\t<table width=\"790\" align=\"center\" border=\"0\" cellspacing=\"1\" cellpadding=\"2\" bgcolor=\"#007D93\">\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td colspan=\"6\" align=\"left\" class=\"title1\" bgcolor=\"#007D93\">&nbsp;");
      out.print(_res("tdnl.kynang"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t<form name=\"frmDeleteTdkn\" action=\"");
      out.print(contextPath);
      out.write("/user/DeleteController.do\" method=\"post\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"state\" value=\"DeleteTdkn\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"ma_kn\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"ma_trinhdokn\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"manv\" value=\"");
      out.print(username);
      out.write("\">\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"13%\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.tenkynang"));
      out.write("</td>\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"11%\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.trinhdo"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"11%\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.ngaycap"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"39%\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.noicap"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"17%\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.thanhtich"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"9%\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"des\"></td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t");

							String strSqlTdkn = ("select * from WEB_XEM_TRINHDO_KYNANG('"+username+"')");
							//java.sql.Statement sttdkn=conn.createStatement();
							rs = st.executeQuery(strSqlTdkn);
							int j = 0;
							while(rs.next()){
								j++;
							}
							if(j!=0){
								rs = st.executeQuery(strSqlTdkn);
								while (rs.next()){
						
      out.write("\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">");
      out.print(rs.getString(2) );
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">");
      out.print(rs.getString(4) );
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t");
if(rs.getDate(5)!=null){
      out.print(SString.toString(rs.getDate(5),"dd/MM/yyyy"));
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t");
} else {
}
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(6)==null || rs.getString(6).equals("null")){
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t ");
} else {
      out.print(rs.getString(6));
}
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(7)==null || rs.getString(7).equals("null")){
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t ");
} else {
      out.print(rs.getString(7));
}
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\" align=\"center\">\n");
      out.write("\t\t\t\t\t\t\t\t");
if(trinhdokynang==1){
									if(rs.getInt(9)==0){
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"links\" href=\"javascript:funcDeleteTdkn('");
      out.print(rs.getString(1));
      out.write('\'');
      out.write(',');
      out.write('\'');
      out.print(rs.getString(3));
      out.write("');\" title=\"");
      out.print(_res("udtdnl.delete"));
      out.write("\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<img border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/delete.gif\" /></a> - \n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"links\" href=\"");
      out.print(contextPath);
      out.write("/user/i_edittrinhdoknfrm.jsp?ma_kynang=");
      out.print(rs.getString(1));
      out.write("&ma_trinhdokn=");
      out.print(rs.getString(3));
      out.write("\" title=\"");
      out.print(_res("udtdnl.update"));
      out.write("\">\n");
      out.write("\t\t\t\t\t\t\t\t<img border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/edit.gif\" /></a>\n");
      out.write("\t\t\t\t\t\t\t\t");
}}
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t");
}} else {
      out.write("\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">&nbsp;</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\"></td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\t\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\t\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\"></td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t");
}
      out.write("\n");
      out.write("\t\t\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t\t\t");
if(trinhdokynang==1){
      out.write("\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\" colspan=\"6\" class=\"des\">\n");
      out.write("\t\t\t\t\t\t\t\t\t");
      out.print(_res("udtdnl.addtdkn"));
      out.write(" &nbsp;\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"javascript:showHidedivtask('divAddTdkn','imgTdkn')\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<img border=\"0\" id=\"imgTdkn\" src=\"");
      out.print(contextPath);
      out.write("/img/down.gif\"></a>\n");
      out.write("\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td colspan=\"6\" bgcolor=\"#FFFFFF\">\n");
      out.write("\t\t\t\t\t\t\t\t<div width=\"790\" align=\"center\" id=\"divAddTdkn\" style=\"display:none\">\n");
      out.write("\t\t\t\t\t\t\t\t<table align=\"center\" width=\"770\" border=\"0\" cellpadding=6 cellspacing=1 style=\"border:1px solid #CCCCCC;\" >\n");
      out.write("\t\t\t\t\t\t\t\t\t<form name=\"addTdkn\" action=\"");
      out.print(contextPath);
      out.write("/user/RegistryController.do\" method=\"post\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"state\" value=\"addTdkn\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"username\" value=\"");
      out.print(username);
      out.write("\" />\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td width=\"97\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.tenkynang"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td width=\"227\" bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t");

													String strSqlSkill = "select * from HR_SKILL";
													//String strSqlLanguage_Level = "select * from HR_LANGUAGE_LEVEL where HR_LANGUAGE_LEVEL";
													rs=st.executeQuery(strSqlSkill);
													String ma_kynang=null;
												
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<select name=\"ma_kynang\" onChange=\"javascript:callTrinhdokn();\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t");

													int m=0;
													while(rs.next()){
													if(m==0){ma_kynang = rs.getString(1);}
													
      out.write("\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<option value=\"");
      out.print(rs.getString(1));
      out.write('"');
      out.write('>');
      out.print(rs.getString(2));
      out.write("</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t");

													 m++;
													 }
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</select>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t  \t</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td width=\"103\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.trinhdo"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td width=\"288\" bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t");

													String strSqlSkill_Level = "select * from HR_SKILL_LEVEL where HR_SKILL_LEVEL.skill_no = '"+ma_kynang+"'";
													rs=st.executeQuery(strSqlSkill_Level);
												
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div id=\"div_trinhdokn\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<select name=\"ma_trinhdokn\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t");
while(rs.next()){
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<option value=\"");
      out.print(rs.getString(2));
      out.write('"');
      out.write('>');
      out.print(rs.getString(3));
      out.write("</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t");
}
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</select>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t  </td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.ngaycap"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td width=\"288\" bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"ngaycaptdkn\" value=\"");
      out.print(SString.toString(new java.util.Date(),"dd/MM/yyyy"));
      out.write("\" size=6 class=\"textbox\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<img onclick=\"return showCalendar('btngaycaptdnn','ngaycaptdnn', '%d/%m/%Y', false);\" align=\"absmiddle\" id=\"btngaycaptdnn\" src=\"");
      out.print(contextPath);
      out.write("/img/calendar2/calendar.gif\" alt='ngaycap'></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.noicap"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"noicaptdkn\" size=\"40\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.thanhtich"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"thanhtichtdkn\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\"></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\"></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" colspan=\"4\"><input name=\"buttontdkn\" type=\"button\" value=\"");
      out.print(_res("udtdnl.add"));
      out.write("\" Onclick=\"javascript:funcPostDataTdkn();\"></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t\t\t\t\t</table>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t");
}
      out.write("\n");
      out.write("\t\t\t\t\t\t</table>\n");
      out.write("\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td>\n");
      out.write("\t\t\t\t\t\t<table width=\"790\" align=\"center\" border=\"0\" cellspacing=\"1\" cellpadding=\"2\" bgcolor=\"#007D93\">\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td colspan=\"6\" align=\"left\" class=\"title1\" bgcolor=\"#007D93\" >");
      out.print(_res("tdnl.chuyenmonkhac"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t<form name=\"frmDeleteCm\" action=\"");
      out.print(contextPath);
      out.write("/user/DeleteController.do\" method=\"post\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"state\" value=\"DeleteCmk\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"ma_cm\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"ma_trinhdocm\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"manv\" value=\"");
      out.print(username);
      out.write("\">\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"13%\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.tenchuyenmon"));
      out.write("</td>\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"11%\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.trinhdo"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"11%\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.ngaycap"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"39%\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.noicap"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"17%\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.thanhtich"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"9%\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"des\"></td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t");

							String strSqlCmk = ("select * from WEB_XEM_CHUYENMON_KHAC('"+username+"')");
							//java.sql.Statement sttcmk=conn.createStatement();
							rs = st.executeQuery(strSqlCmk);
							int k = 0;
							while(rs.next()){
								k++;
							}
							if(k!=0){
								rs = st.executeQuery(strSqlCmk);
								while (rs.next()){
						
      out.write("\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">");
      out.print(rs.getString(2) );
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">");
      out.print(rs.getString(4) );
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t");
if(rs.getDate(5)!=null){
      out.print(SString.toString(rs.getDate(5),"dd/MM/yyyy"));
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t");
} else {
}
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(6)==null || rs.getString(6).equals("null")){
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t ");
} else {
      out.print(rs.getString(6));
}
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(7)==null || rs.getString(7).equals("null")){
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t ");
} else {
      out.print(rs.getString(7));
}
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\" align=\"center\">\n");
      out.write("\t\t\t\t\t\t\t\t\t");

										if(trinhdochuyenmon==1){
											if(rs.getInt(9)==0){
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"links\" href=\"javascript:funcDeleteCm('");
      out.print(rs.getString(1));
      out.write('\'');
      out.write(',');
      out.write('\'');
      out.print(rs.getString(3));
      out.write("');\" title=\"");
      out.print(_res("udtdnl.delete"));
      out.write("\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<img border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/delete.gif\" /></a> - \n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"links\" href=\"");
      out.print(contextPath);
      out.write("/user/i_edittrinhdocmfrm.jsp?ma_chuyenmon=");
      out.print(rs.getString(1));
      out.write("&ma_trinhdocm=");
      out.print(rs.getString(3));
      out.write("\" title=\"");
      out.print(_res("udtdnl.update"));
      out.write("\">\n");
      out.write("\t\t\t\t\t\t\t\t<img border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/edit.gif\" /></a>\n");
      out.write("\t\t\t\t\t\t\t\t");
}}
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t");
} } else {
							
      out.write("\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">&nbsp;</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\"></td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\t\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\t\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\"></td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t");
}
      out.write("\n");
      out.write("\t\t\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t");
if(trinhdochuyenmon==1){
      out.write("\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\" colspan=\"6\" class=\"des\">\n");
      out.write("\t\t\t\t\t\t\t\t\t");
      out.print(_res("udtdnl.addtdcm"));
      out.write(" &nbsp;\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"javascript:showHidedivtask('divAddTdcm','imgTdcm')\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<img border=\"0\" id=\"imgTdcm\" src=\"");
      out.print(contextPath);
      out.write("/img/down.gif\"></a>\n");
      out.write("\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td colspan=\"6\" bgcolor=\"#FFFFFF\">\n");
      out.write("\t\t\t\t\t\t<div width=\"790\" align=\"center\" id=\"divAddTdcm\" style=\"display:none\">\n");
      out.write("\t\t\t\t\t\t\t<table align=\"center\" width=\"770\" border=\"0\" cellpadding=6 cellspacing=1 style=\"border:1px solid #CCCCCC;\" >\n");
      out.write("\t\t\t\t\t\t\t\t\t<form name=\"addTdcm\" action=\"");
      out.print(contextPath);
      out.write("/user/RegistryController.do\" method=\"post\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"state\" value=\"addTdcm\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"username\" value=\"");
      out.print(username);
      out.write("\" />\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td width=\"97\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.tenchuyenmon"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td width=\"227\" bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t");

													String strSqlChuyenmon = "select * from HR_EDU_FIELD";
													//String strSqlLanguage_Level = "select * from HR_LANGUAGE_LEVEL where HR_LANGUAGE_LEVEL";
													rs=st.executeQuery(strSqlChuyenmon);
													String ma_chuyenmon=null;
												
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<select name=\"ma_chuyenmon\" onChange=\"javascript:callTrinhdocm();\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t");

													int n=0;
													while(rs.next()){
													if(n==0){ma_chuyenmon = rs.getString(1);}
													
      out.write("\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<option value=\"");
      out.print(rs.getString(1));
      out.write('"');
      out.write('>');
      out.print(rs.getString(2));
      out.write("</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t");

													 n++;
													 }
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</select>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t  \t</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td width=\"103\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.trinhdo"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td width=\"288\" bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t");

													String strSqlChuyenmon_Level = "select * from HR_FIELD_LEVEL where HR_FIELD_LEVEL.edu_field_no = '"+ma_chuyenmon+"'";
													rs=st.executeQuery(strSqlChuyenmon_Level);
												
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div id=\"div_trinhdocm\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<select name=\"ma_trinhdocm\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t");
while(rs.next()){
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<option value=\"");
      out.print(rs.getString(2));
      out.write('"');
      out.write('>');
      out.print(rs.getString(3));
      out.write("</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t");
}
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</select>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t  </td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.ngaycap"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td width=\"288\" bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"ngaycaptdcm\" value=\"");
      out.print(SString.toString(new java.util.Date(),"dd/MM/yyyy"));
      out.write("\" size=6 class=\"textbox\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<img onclick=\"return showCalendar('btngaycaptdnn','ngaycaptdnn', '%d/%m/%Y', false);\" align=\"absmiddle\" id=\"btngaycaptdnn\" src=\"");
      out.print(contextPath);
      out.write("/img/calendar2/calendar.gif\" alt='ngaycap'></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.noicap"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"noicaptdcm\" size=\"40\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("tdnl.thanhtich"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"thanhtichtdcm\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\"></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\"></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" colspan=\"4\"><input name=\"buttontdcm\" type=\"button\" value=\"");
      out.print(_res("udtdnl.add"));
      out.write("\" Onclick=\"javascript:funcPostDataTdcm();\"></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t\t\t\t\t</table>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t");
}
      out.write("\n");
      out.write("\t\t\t\t\t\t</table>\t\n");
      out.write("\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td>&nbsp;</td>\n");
      out.write("\t\t\t\t</tr>\t\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t</table>\n");
      out.write("\t  \n");
      out.write("\n");

	rs.close();
								st.close();
								conn.commit();
	}catch(Exception e){
	      //e.printStackTrace();
	      //out.println(e.getMessage());
	}finally{
		if(conn != null)
			conn.setAutoCommit(true);
		dbConnManager.freeConnection("topmostread", conn);
	}

      out.write("\n");
      out.write("\n");
      out.write("<script language=\"javascript\">\n");
      out.write("\n");
      out.write("function loadFragmentInToElement(fragment_url, element_id, page) {\n");
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
      out.write("  }\n");
      out.write("\n");
      out.write("\n");
      out.write("function is_int(fieldVal)\n");
      out.write("{\n");
      out.write(" var intMASK = /^(d{1,10})$/ ;\n");
      out.write(" var matchArray = fieldVal.match(intMASK);\n");
      out.write("\n");
      out.write(" if (matchArray==null)\n");
      out.write(" {\n");
      out.write("  alert(\"Not an Integer\");\n");
      out.write("  return false;\n");
      out.write(" }\n");
      out.write("\n");
      out.write(" return true;\n");
      out.write("}\n");
      out.write("\n");
      out.write("function doIt()\n");
      out.write("{\n");
      out.write("var val = document.form1.id.value;\n");
      out.write("return is_int(val);\n");
      out.write("} \n");
      out.write("\n");
      out.write("\n");
      out.write("function funcPostDataTdcm(){\n");
      out.write("\t\t var dm = document.addTdcm;\n");
      out.write("\t\t if(dm.noicaptdcm.value!='' && dm.noicaptdcm.value.length>42){\n");
      out.write("\t\t \talert('");
      out.print(_res("udtdnl.alert.lengthnoicaptrinhdo"));
      out.write("')\n");
      out.write("\t\t\tdm.noicaptdcm.focus();\n");
      out.write("\t\t }\n");
      out.write("\t\t else if(dm.thanhtichtdcm.value!='' && dm.thanhtichtdcm.value.length>42){\n");
      out.write("\t\t \talert('");
      out.print(_res("udtdnl.alert.lengththanhtich"));
      out.write("')\n");
      out.write("\t\t\tdm.thanhtichtdcm.focus();\n");
      out.write("\t\t }\n");
      out.write("\t\t else if (dm.ngaycaptdcm.value!=''){\n");
      out.write("\t\t \tif(checkDate(dm.ngaycaptdcm, true)!='TRUE'){\n");
      out.write("\t\t  \t\talert('");
      out.print(_res("msg_datefrom2"));
      out.write("');\n");
      out.write("\t\t\t\tdm.ngaycaptdcm.focus();\n");
      out.write("\t\t  \t}\n");
      out.write("\t\t   \telse{\n");
      out.write("\t\t\tdm.submit();\n");
      out.write("\t\t\t}\n");
      out.write("\t\t}\n");
      out.write("\t\telse{\n");
      out.write("\t\t\tdm.submit();\n");
      out.write("\t\t}\n");
      out.write("}function funcPostDataTdkn(){\n");
      out.write("\t\t var dm = document.addTdkn;\n");
      out.write("\t\t if(dm.noicaptdkn.value!='' && dm.noicaptdkn.value.length>42){\n");
      out.write("\t\t \talert('");
      out.print(_res("udtdnl.alert.lengthnoicaptrinhdo"));
      out.write("')\n");
      out.write("\t\t\tdm.noicaptdkn.focus();\n");
      out.write("\t\t }\n");
      out.write("\t\t else if(dm.thanhtichtdkn.value!='' && dm.thanhtichtdkn.value.length>42){\n");
      out.write("\t\t \talert('");
      out.print(_res("udtdnl.alert.lengththanhtich"));
      out.write("')\n");
      out.write("\t\t\tdm.thanhtichtdkn.focus();\n");
      out.write("\t\t }\n");
      out.write("\t\t else if (dm.ngaycaptdkn.value!=''){\n");
      out.write("\t\t \tif(checkDate(dm.ngaycaptdkn, true)!='TRUE'){\n");
      out.write("\t\t  \t\talert('");
      out.print(_res("msg_datefrom2"));
      out.write("');\n");
      out.write("\t\t\t\tdm.ngaycaptdkn.focus();\n");
      out.write("\t\t  \t}\n");
      out.write("\t\t   \telse{\n");
      out.write("\t\t\tdm.submit();\n");
      out.write("\t\t\t}\n");
      out.write("\t\t}\n");
      out.write("\t\telse{\n");
      out.write("\t\t\tdm.submit();\n");
      out.write("\t\t}\n");
      out.write("}\n");
      out.write("\n");
      out.write("function funcPostDataTdnn(){\n");
      out.write("\t\t var dm = document.addTdnn;\n");
      out.write("\t\t if(dm.noicaptdnn.value!='' && dm.noicaptdnn.value.length>42){\n");
      out.write("\t\t \talert('");
      out.print(_res("udtdnl.alert.lengthnoicaptrinhdo"));
      out.write("')\n");
      out.write("\t\t\tdm.noicaptdnn.focus();\n");
      out.write("\t\t }\n");
      out.write("\t\t else if(dm.thanhtichtdnn.value!='' && dm.thanhtichtdnn.value.length>42){\n");
      out.write("\t\t \talert('");
      out.print(_res("udtdnl.alert.lengththanhtich"));
      out.write("')\n");
      out.write("\t\t\tdm.thanhtichtdnn.focus();\n");
      out.write("\t\t }\n");
      out.write("\t\t else if (dm.ngaycaptdnn.value!=''){\n");
      out.write("\t\t \tif(checkDate(dm.ngaycaptdnn, true)!='TRUE'){\n");
      out.write("\t\t  \t\talert('");
      out.print(_res("msg_datefrom2"));
      out.write("');\n");
      out.write("\t\t\t\tdm.ngaycaptdnn.focus();\n");
      out.write("\t\t  \t}\n");
      out.write("\t\t   \telse{\n");
      out.write("\t\t\tdm.submit();\n");
      out.write("\t\t\t}\n");
      out.write("\t\t}\n");
      out.write("\t\telse{\n");
      out.write("\t\t\tdm.submit();\n");
      out.write("\t\t}\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("function funcPostData(){\n");
      out.write("\t\t  var dm = document.frmUpdate;\n");
      out.write("\t\t  var nam = dm.namtotnghiep.value\n");
      out.write("\t\t \tif (dm.sotruongcongtac.value!='' && dm.sotruongcongtac.value.length>85){\n");
      out.write("\t\t\t\talert('");
      out.print(_res("udtdnl.alert.lengthsotruongcongtac"));
      out.write("');\n");
      out.write("\t\t\t\tdm.sotruongcongtac.focus();\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\telse if(dm.congvieclaunhat.value!='' && dm.congvieclaunhat.value.length>85){\n");
      out.write("\t\t\t\talert('");
      out.print(_res("udtdnl.alert.lengthcongvieclaunhat"));
      out.write("');\n");
      out.write("\t\t\t\tdm.congvieclaunhat.focus();\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\telse if(nam!=\"\"){\n");
      out.write("\t\t\t\tif (nam.length!=4){\n");
      out.write("\t\t\t\t\talert('");
      out.print(_res("udtdnl.alert.lengthnamtotnghiep"));
      out.write("');\n");
      out.write("\t\t\t\t\tdm.namtotnghiep.focus();\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\telse if(isNaN(nam)){\n");
      out.write("\t\t\t\t\talert('");
      out.print(_res("udtdnl.alert.checknamtotnghiep"));
      out.write("');\n");
      out.write("\t\t\t\t\tdm.namtotnghiep.focus();\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t\telse{\n");
      out.write("\t\t\t\t\tdm.submit();\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\t\n");
      out.write("\t\t\telse{\n");
      out.write("\t\t\t\tdm.submit();\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\t\t\t  \n");
      out.write("\t }\n");
      out.write("\n");
      out.write("\tfunction showHidedivtask(div,image){\n");
      out.write("\t\tvar image=document.getElementById(image);\n");
      out.write("\t\tvar temp=document.getElementById(div).style.display;\n");
      out.write("\t\tif(temp == 'none'){\n");
      out.write("\t\t\timage.src=\"");
      out.print(contextPath);
      out.write("/img/up.gif\";\n");
      out.write("\t\t\tdocument.getElementById(div).style.display=\"block\";\n");
      out.write("\t\t}else{\n");
      out.write("\t\t\timage.src=\"");
      out.print(contextPath);
      out.write("/img/down.gif\";\n");
      out.write("\t\t\tdocument.getElementById(div).style.display=\"none\";\n");
      out.write("\t}\n");
      out.write("}\n");
      out.write("\n");
      out.write("\tfunction funcDeleteTdnn(value1,value2){\n");
      out.write("\t\tvar dm = document.frmDeleteTdnn;\n");
      out.write("\t\tvar x=window.confirm('");
      out.print(_res("pn.confirmxoa"));
      out.write("');\n");
      out.write("\t\tif(x){\n");
      out.write("\t\t\tdm.ma_nn.value = value1;\n");
      out.write("\t\t\tdm.ma_trinhdonn.value = value2;\n");
      out.write("\t\t\tdm.submit();\n");
      out.write("\t\t}\n");
      out.write("\t}\n");
      out.write("\tfunction funcDeleteTdkn(value1,value2){\n");
      out.write("\t\tvar dm = document.frmDeleteTdkn;\n");
      out.write("\t\tvar x=window.confirm('");
      out.print(_res("pn.confirmxoa"));
      out.write("');\n");
      out.write("\t\tif(x){\n");
      out.write("\t\t\tdm.ma_kn.value = value1;\n");
      out.write("\t\t\tdm.ma_trinhdokn.value = value2;\n");
      out.write("\t\t\tdm.submit();\n");
      out.write("\t\t}\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\tfunction funcDeleteCm(value1,value2){\n");
      out.write("\t\tvar dm = document.frmDeleteCm;\n");
      out.write("\t\tvar x=window.confirm('");
      out.print(_res("pn.confirmxoa"));
      out.write("');\n");
      out.write("\t\tif(x){\n");
      out.write("\t\t\tdm.ma_cm.value = value1;\n");
      out.write("\t\t\tdm.ma_trinhdocm.value = value2;\n");
      out.write("\t\t\tdm.submit();\n");
      out.write("\t\t}\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\tfunction callTrinhdonn(){\n");
      out.write("\t\tvar ma_ngoaingu = document.addTdnn.ma_ngoaingu.value;\n");
      out.write("\t\tloadFragmentInToElement(\"i_addtrinhdonn.jsp?ma_ngoaingu=\"+ma_ngoaingu, \"div_trinhdonn\");\n");
      out.write("\t\t//alert(ma_ngoaingu);\n");
      out.write("\t}\n");
      out.write("\tfunction callTrinhdokn(){\n");
      out.write("\t\tvar ma_kynang = document.addTdkn.ma_kynang.value;\n");
      out.write("\t\tloadFragmentInToElement(\"i_addtrinhdokn.jsp?ma_kynang=\"+ma_kynang, \"div_trinhdokn\");\n");
      out.write("\t\t//alert(ma_ngoaingu);\n");
      out.write("\t}\n");
      out.write("\tfunction callTrinhdocm(){\n");
      out.write("\t\tvar ma_chuyenmon = document.addTdcm.ma_chuyenmon.value;\n");
      out.write("\t\tloadFragmentInToElement(\"i_addtrinhdocm.jsp?ma_chuyenmon=\"+ma_chuyenmon, \"div_trinhdocm\");\n");
      out.write("\t\t//alert(ma_ngoaingu);\n");
      out.write("\t}\n");
      out.write("\tfunction callEditTrinhdonn(ma_ngoaingu1,ma_trinhdonn1){\n");
      out.write("\t\t//var ma_chuyenmon = document.addTdcm.ma_chuyenmon.value;\n");
      out.write("\t\tdocument.getElementById('divEditTdnn').style.display=\"block\";\n");
      out.write("\t\tloadFragmentInToElement(\"i_edittrinhdongoaingu.jsp?ma_ngoaingu=\"+ma_ngoaingu1+\"&ma_trinhdonn=\"+ma_trinhdonn1, \"divEditTdnn\");\n");
      out.write("\t\t//alert(ma_ngoaingu);\n");
      out.write("\t}\n");
      out.write("</script>");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t</table>\t\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t");
      out.write("\t\r\n");
      out.write("\t\t<td background=\"");
      out.print(contextPath);
      out.write("/img/bg-foster.gif\" style=\"font-family:Arial, Helvetica, sans-serif; font-size:12; color:#FFFFFF;\" nowrap height=\"26\" align=\"right\">\r\n");
      out.write("\t\t\t");
      out.print(_res("ft.company"));
      out.write("\r\n");
      out.write("\t\t</td>\t\r\n");
      out.write("\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t</table>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
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
