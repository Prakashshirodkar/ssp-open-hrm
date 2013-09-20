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

public final class thongtincanhanfrm_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_dependants.add("/user/thongtincanhan.jsp");
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
      out.print(_res("ttcn.title"));
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
      out.write("\r\n");
      out.write("\t\t\t\r\n");
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

	String strSqlTtcn = ("select * from WEB_XEM_THONGTIN_NHANVIEN('"+username+"')");
	java.sql.Connection conn = null;
	try{
	    conn = dbConnManager.getConnection("topmostread");
		//java.sql.Statement st=conn.createStatement();
		java.sql.PreparedStatement st=conn.prepareStatement(strSqlTtcn);
		ResultSet rs = st.executeQuery();
		//File f;
	if(rs.next()){
		String hoten = rs.getString(2) + " " + rs.getString(3) + " " + rs.getString(4);
		int gioitinh = rs.getInt(5);
		//f = rs.getBlob(43);
		//byte[] b = rs.getBlob(43).getBytes(1, (int)rs.getBlob(43).length());
		//String txt = new String(b);
		//out.print(txt);

      out.write("\t\r\n");
      out.write("\t\t\t<table class=\"tablecontent\" align=\"center\">\t\t\t\t\t\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<div id=\"headercontent\" class=\"title\">");
      out.print(_res("ttcn.hosonhanvien"));
      out.write("</div>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<table align=\"center\" width=\"790\" cellpadding=6 cellspacing=1 style=\"border:1px solid #CCCCCC;\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td colspan=\"4\" class=\"title1\">&nbsp;");
      out.print(_res("ttcn.thongtinchung"));
      out.write("</td>\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr height=\"25px;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"18%\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.manhanvien"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t  \t<td width=\"25%\" bgcolor=\"#FFF7E7\" class=\"value\">");
      out.print(rs.getString(1));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"16%\" bgcolor=\"#f8f8f8\" class=\"des\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"41%\" bgcolor=\"#FFF7E7\" class=\"value\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr height=\"25px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.tennhanvien"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">");
      out.print(hoten );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.gioitinh"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(5)==null || rs.getString(5).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {if(gioitinh ==1){ 
      out.print(_res("ttcn.nam"));
} else {
      out.print(_res("ttcn.nu"));
}}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr height=\"25px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.ngaysinh"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getDate(6)==null){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(SString.toString(rs.getDate(6),"dd/MM/yyyy"));
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.honnhan"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(7)==null || rs.getString(7).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(rs.getString(8) );
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr height=\"25px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("regular_temporary"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t   \t");
if(rs.getInt("REGULAR_TEMPORARY")==1){
      out.print(_res("regular"));
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}else{
      out.print(_res("temporary"));
}
      out.write("\r\n");
      out.write("                                </td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("fulltime_parttime"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("                                \t");
if(rs.getInt("FULLTIME_PARTTIME")==1){
      out.print(_res("fulltime"));
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}else{
      out.print(_res("parttime"));
}
      out.write("\r\n");
      out.write("                                </td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr height=\"25px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("work_place"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("WORK_PLACE")==null || rs.getString("WORK_PLACE").equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString("WORK_PLACE") );
      out.write(' ');
}
      out.write(" \r\n");
      out.write("                                </td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr height=\"25px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.socmnd"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(9)==null || rs.getString(9).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString(9) );
      out.write(' ');
}
      out.write(" -\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getDate(10)==null){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(SString.toString(rs.getDate(10),"dd/MM/yyyy") );
      out.write(' ');
}
      out.write("\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.noicap"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(11)==null || rs.getString(11).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString(11) );
      out.write(' ');
}
      out.write(" \r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr height=\"25px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.passport"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(37)==null || rs.getString(37).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString(37) );
}
      out.write("\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.noicap"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("noicap_hochieu")==null || rs.getString("noicap_hochieu").equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString("noicap_hochieu"));
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("                            <tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr height=\"25px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("passport_issued_date"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getDate("ngaycap_hochieu")==null){
      out.write("\r\n");
      out.write("                                    \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(SString.toString(rs.getDate("ngaycap_hochieu"),"dd/MM/yyyy") );
}
      out.write("\t \t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("passport_expired_date"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getDate("ngay_hethan_hochieu")==null){
      out.write("\r\n");
      out.write("                                    \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(SString.toString(rs.getDate("ngay_hethan_hochieu"),"dd/MM/yyyy") );
}
      out.write("\t \t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("                            <tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr height=\"25px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("visa_number"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("visa_no")==null || rs.getString("visa_no").equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString("visa_no"));
      out.write(' ');
}
      out.write("\t \t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("visa_place_issued"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("VISA_PLACE")==null || rs.getString("VISA_PLACE").equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString("VISA_PLACE"));
      out.write(' ');
}
      out.write("\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("                            <tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr height=\"25px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("visa_issued_date"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getDate("VISA_DATE")==null){
      out.write("\r\n");
      out.write("                                    \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(SString.toString(rs.getDate("VISA_DATE"),"dd/MM/yyyy") );
}
      out.write("\t \t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("visa_expired_date"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getDate("VISA_EXPIRED")==null){
      out.write("\r\n");
      out.write("                                    \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(SString.toString(rs.getDate("VISA_EXPIRED"),"dd/MM/yyyy") );
}
      out.write("\t \t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr >\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td>\t\t\r\n");
      out.write("\t\t\t\t\t\t<table align=\"center\" width=\"790\" cellpadding=6 cellspacing=1 style=\"border:1px solid #CCCCCC;\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td colspan=\"4\" class=\"title1\">&nbsp;");
      out.print(_res("ttcn.thanhphanxuatthan"));
      out.write("</td>\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"18%\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.quoctich"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"25%\" bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(17)==null || rs.getString(17).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString(17));
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"16%\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.noisinh"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"41%\" bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(20)==null || rs.getString(20).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString(20));
}
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.dantoc"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(13)==null || rs.getString(13).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString(13));
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.tongiao"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("                                ");
if(rs.getString(18)==null || rs.getString(18).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString(19));
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\t\t\t\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<table width=\"790\" cellpadding=6 cellspacing=1 align=\"center\" style=\"border:1px solid #CCCCCC;\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td colspan=\"4\" class=\"title1\">&nbsp;");
      out.print(_res("ttcn.thongtinlienlac"));
      out.write("</span></td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"18%\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.sodienthoai"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"25%\" bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(25)==null || rs.getString(25).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString(25) );
      out.write(' ');
      out.write(' ');
}
      out.write(" \r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"16%\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.diachilienhe"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"41%\" bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(22)==null || rs.getString(22).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString(22) );
      out.write(' ');
      out.write(' ');
}
      out.write(" \r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.mobile"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(26)==null || rs.getString(26).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString(26) );
      out.write(' ');
      out.write(' ');
}
      out.write(" \r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.diachitamtru"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(23)==null || rs.getString(23).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString(23) );
      out.write(' ');
      out.write(' ');
}
      out.write(" \r\n");
      out.write("\t\t\t\t\t\t\t\t </td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.email"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(27)==null || rs.getString(27).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString(27) );
      out.write(' ');
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("email_personal"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("EMAIL_PERSONAL")==null || rs.getString("EMAIL_PERSONAL").equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString("EMAIL_PERSONAL") );
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<table width=\"790\" cellpadding=6 cellspacing=1 align=\"center\" style=\"border:1px solid #CCCCCC;\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td colspan=\"4\" class=\"title1\">&nbsp;");
      out.print(_res("ttcn.hoatdong"));
      out.write("</td>\t\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.ngayvaocongty"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getDate(57) == null || rs.getDate(57).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(SString.toString(rs.getDate(57),"dd/MM/yyyy"));
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.chucvu"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(59) == null || rs.getString(59).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(rs.getString(59));
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("                            <tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\r\n");
      out.write("                            <tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"18%\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("org_level"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"25%\" bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("CAPBAC") == null || rs.getString("CAPBAC").equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(rs.getString("CAPBAC"));
}
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"16%\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("job_grade"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"41%\" bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("MUCDO_KN") == null || rs.getString("MUCDO_KN").equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(rs.getString("MUCDO_KN"));
}
      out.write("\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<table width=\"790\" cellpadding=6 cellspacing=1 align=\"center\" style=\"border:1px solid #CCCCCC;\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td colspan=\"4\" class=\"title1\">&nbsp;");
      out.print(_res("ttcn.taichinh"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"18%\" bgcolor=\"#f8f8f8\" class=\"des\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"25%\" bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"16%\" bgcolor=\"#f8f8f8\" class=\"des\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"41%\" bgcolor=\"#FFF7E7\" class=\"value\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("name_acc_1"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("ACCOUNT_NAME") == null || rs.getString(33).equals("ACCOUNT_NAME")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(rs.getString("ACCOUNT_NAME"));
      out.write(' ');
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("number_acc_1"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("so_taikhoan")==null || rs.getString("so_taikhoan").equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString("so_taikhoan") );
      out.write(' ');
}
      out.write(" -\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("ngan_hang")==null || rs.getString("ngan_hang").equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString("ngan_hang") );
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("                            <tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("name_acc_2"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("ACCOUNT_NAME_2") == null || rs.getString("ACCOUNT_NAME_2").equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(rs.getString("ACCOUNT_NAME_2"));
      out.write(' ');
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("number_acc_2"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("ACCOUNT_ID_2")==null || rs.getString("ACCOUNT_ID_2").equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString("ACCOUNT_ID_2") );
      out.write(' ');
}
      out.write(" -\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("ACCOUNT_BANK_2")==null || rs.getString("ACCOUNT_BANK_2").equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString("ACCOUNT_BANK_2") );
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.mathue"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(41) == null || rs.getString(41).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(rs.getString(41));
      out.write(' ');
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.coquanthue"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(42) == null || rs.getString(42).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(rs.getString(42));
      out.write(' ');
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<table width=\"790\" cellpadding=6 cellspacing=1 align=\"center\" style=\"border:1px solid #CCCCCC;\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td colspan=\"4\" class=\"title1\">&nbsp;");
      out.print(_res("housing"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"18%\" bgcolor=\"#f8f8f8\" class=\"des\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"25%\" bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"16%\" bgcolor=\"#f8f8f8\" class=\"des\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"41%\" bgcolor=\"#FFF7E7\" class=\"value\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("housing_from_date"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getDate("HOUSING_FROM_DATE") == null || rs.getDate("HOUSING_FROM_DATE").equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(SString.toString(rs.getDate("HOUSING_FROM_DATE"),"dd/MM/yyyy"));
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("housing_to_date"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getDate("HOUSING_TO_DATE") == null || rs.getDate(57).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(SString.toString(rs.getDate("HOUSING_TO_DATE"),"dd/MM/yyyy"));
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("                            <tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("housing_rental"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
      out.print(rs.getDouble("HOUSING_RENTAL"));
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<table width=\"790\" cellpadding=6 cellspacing=1 align=\"center\" style=\"border:1px solid #CCCCCC;\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td colspan=\"4\" class=\"title1\">&nbsp;");
      out.print(_res("emergency_contact"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"18%\" bgcolor=\"#f8f8f8\" class=\"des\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"25%\" bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"16%\" bgcolor=\"#f8f8f8\" class=\"des\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"41%\" bgcolor=\"#FFF7E7\" class=\"value\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("contact_fullname"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("CONTACT_FULLNAME") == null || rs.getString("CONTACT_FULLNAME").equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(rs.getString("CONTACT_FULLNAME"));
      out.write(' ');
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("contact_permanent_add"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("CONTACT_PERMANENT_ADD") == null || rs.getString("CONTACT_PERMANENT_ADD").equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(rs.getString("CONTACT_PERMANENT_ADD"));
      out.write(' ');
      out.write(' ');
}
      out.write(" \r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("                            <tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"4\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("contact_relationship"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("CONTACT_RELATIONSHIP") == null || rs.getString("CONTACT_RELATIONSHIP").equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(rs.getString("CONTACT_RELATIONSHIP"));
      out.write(' ');
      out.write(' ');
}
      out.write(" - \r\n");
      out.write("                                    ");
if(rs.getString("CONTACT_PHONE_NO") == null || rs.getString("CONTACT_PHONE_NO").equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(rs.getString("CONTACT_PHONE_NO"));
      out.write(' ');
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("contact_address_cont"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("CONTACT_ADDRESS_CONT") == null || rs.getString("CONTACT_ADDRESS_CONT").equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(rs.getString("CONTACT_ADDRESS_CONT"));
      out.write(' ');
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\t \r\n");

	}
		rs.close();
		st.close();
		//conn.close();
	}catch(IOException ex ){
	      //e.printStackTrace();
	      //out.println(e.getMessage());
	}finally{
		dbConnManager.freeConnection("topmostread", conn);
	}

      out.write("\r\n");
      out.write("\r\n");
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
