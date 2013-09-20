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

public final class updatethongtincanhanfrm_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_dependants.add("/user/updatethongtincanhan.jsp");
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
      out.print(_res("udttcn.title"));
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
      out.write("/jscript/changeimage.js\"></script>\r\n");
      out.write("<script language=\"JavaScript\" src=\"");
      out.print(contextPath);
      out.write("/jscript/common_utils.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath);
      out.write("/jscript/dateutil_vi.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath);
      out.write("/jscript/jscalendar/calendar.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath);
      out.write("/jscript/jscalendar/calendar-setup.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath);
      out.write("/jscript/jscalendar/calendar-");
      out.print(language);
      out.write(".js\"></script>\r\n");
      out.write("<style type=\"text/css\"> @import url(\"");
      out.print(contextPath);
      out.write("/jscript/jscalendar/calendar-system.css\"); \r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<script language=\"JavaScript\" src=\"");
      out.print(contextPath);
      out.write("/user/showhidettcn.js\"></script>\r\n");
      out.write("\r\n");

	//String sqlcheck = ("select * from HR_CONFIG_EDIT_EMPLOYEE");
	String sqlcheck = ("select * from HR_CAUHINH_SUATHONGTIN('"+username+"')");
	String sqlttcn = ("select * from WEB_XEM_THONGTIN_NHANVIEN('"+username+"')");
	String sqlttcn_temp = ("select * from WEB_XEM_THONGTIN_NHANVIEN_TEMP('"+username+"')");
	java.sql.Connection conn = null;
	//Hr_NationModel model = new Hr_NationModel();
	//List arr = Hr_NationModel.getDsNation();
	//Iterator list = arr.iterator();
	int manhanvien = 0; int masothenhanvien = 0;
		int ho = 0; int tendem = 0; int ten = 0; int gioitinh1 = 0; int ngaysinh = 0;
		int honnhan = 0; int chieucao = 0; int cannang = 0; int dauvetdacbiet = 0;
		int cmnd = 0; int ngaycapcmnd = 0; int noicapcmnd = 0; int passport = 0; int ngaycappassport = 0;
		int noicappassport = 0; int quoctich = 0; int dantoc = 0; int tongiao = 0; int noisinh = 0; int quequan = 0; 
		int xuatthan = 0; int dienthoai = 0; int mobile = 0; int email = 0; int website = 0; 
		int dcthuongtru = 0; int dctamtru = 0; int dclienhe = 0; int ngayvaodang = 0; int machucvudang = 0;
		int ngayvaodoan = 0; int machucvudoan = 0; int ngayvaocdoan = 0; int machucvucdoan = 0; int matiente = 0;
		int taikhoan = 0; int nganhang = 0; int masothue = 0; int coquanthue = 0;
		int passport_expired_date = 0; int visa_number = 0; int visa_place_issued = 0; int visa_issued_date = 0; 
		int visa_expired_date = 0; int regular_temporary = 0; int fulltime_parttime = 0; int work_place = 0;
		int email_personal = 0; int org_level = 0; int job_grade = 0; int name_acc_1 = 0; 
		int name_acc_2 = 0; int number_acc_2 = 0; int bank_acc_2 = 0; int housing_from_date = 0;
		int housing_to_date = 0; int housing_rental = 0; int contact_fullname = 0; int contact_relationship = 0;
		int contact_permanent_add = 0; int contact_address_cont = 0; int contact_phone = 0;
	
	try{
	    conn = dbConnManager.getConnection("topmostread");
		conn.setAutoCommit(false);
		java.sql.Statement st=conn.createStatement();
		//java.sql.PreparedStatement st=conn.prepareStatement(sqlcheck);
		//ResultSet rs = st.executeQuery();
		ResultSet rs = st.executeQuery(sqlcheck);
		
		if(rs.next()){
			ho = rs.getInt(3); tendem = rs.getInt(2); ten = rs.getInt(1);
			gioitinh1 = rs.getInt(4); ngaysinh = rs.getInt(5); honnhan = rs.getInt(6);
			chieucao = rs.getInt(34); cannang = rs.getInt(35); dauvetdacbiet = rs.getInt(36);
			cmnd = rs.getInt(7); ngaycapcmnd = rs.getInt(8); noicapcmnd = rs.getInt(9);
			passport = rs.getInt(28); ngaycappassport = rs.getInt(29); noicappassport = rs.getInt(30);
			quoctich = rs.getInt(12); dantoc = rs.getInt(10); tongiao = rs.getInt(13); noisinh = rs.getInt(14);
			quequan = rs.getInt(15); xuatthan = rs.getInt(24); dcthuongtru = rs.getInt(18); dctamtru = rs.getInt(17);
			dclienhe = rs.getInt(16); dienthoai = rs.getInt(19); mobile = rs.getInt(20); email = rs.getInt(21);
			website = rs.getInt(23); ngayvaodang = rs.getInt(38); machucvudang = rs.getInt(39);
			ngayvaodoan = rs.getInt(40); machucvudoan = rs.getInt(41); ngayvaocdoan = rs.getInt(42); machucvucdoan = rs.getInt(43);
			matiente = rs.getInt(11); taikhoan = rs.getInt(25); nganhang = rs.getInt(26); masothue = rs.getInt(33);
			coquanthue = rs.getInt(34);
			regular_temporary = rs.getInt("REGULAR_TEMPORARY"); fulltime_parttime = rs.getInt("FULLTIME_PARTTIME");
			work_place = rs.getInt("WORK_PLACE"); passport_expired_date = rs.getInt("PASSPORT_EXPIRED");
			visa_number = rs.getInt("VISA_NO"); visa_place_issued = rs.getInt("VISA_PLACE");
			visa_issued_date = rs.getInt("VISA_DATE"); visa_expired_date = rs.getInt("VISA_EXPIRED");
			email_personal = rs.getInt("EMAIL_PERSONAL"); org_level = rs.getInt("CAPBAC");
			job_grade = rs.getInt("MUCDO_KN"); name_acc_1 = rs.getInt("ACCOUNT_NAME");
			name_acc_2 = rs.getInt("ACCOUNT_NAME_2"); number_acc_2 = rs.getInt("ACCOUNT_ID_2");
			bank_acc_2 = rs.getInt("ACCOUNT_BANK_2"); housing_from_date = rs.getInt("HOUSING_FROM_DATE");
			housing_to_date = rs.getInt("HOUSING_TO_DATE"); housing_rental = rs.getInt("HOUSING_RENTAL");
			contact_fullname = rs.getInt("CONTACT_FULLNAME"); contact_relationship = rs.getInt("CONTACT_RELATIONSHIP");
			contact_permanent_add = rs.getInt("CONTACT_PERMANENT_ADD"); contact_address_cont = rs.getInt("CONTACT_ADDRESS_CONT");
			contact_phone = rs.getInt("CONTACT_PHONE_NO");
		}
		//rs.close();
		//System.out.print(ho);
		//ResultSet rs = st.executeQuery(sqlttcn);
		rs = st.executeQuery(sqlttcn);
		//File f;
	if(rs.next()){
		java.sql.Statement sttemp=conn.createStatement();
		ResultSet rstemp=sttemp.executeQuery(sqlttcn_temp);
		String hoten = rs.getString(2) + " " + rs.getString(3) + " " + rs.getString(4);
		int gioitinh = rs.getInt(5);
		if(rstemp.next()){
		//f = rs.getBlob(43);
		//byte[] b = rs.getBlob(43).getBytes(1, (int)rs.getBlob(43).length());
		//String txt = new String(b);
		//out.print(txt);

      out.write("\t\r\n");
      out.write("\t\t<form name=\"frmUpdate\" action=\"");
      out.print(contextPath);
      out.write("/user/UpdateController.do\" method=\"post\">\r\n");
      out.write("\t\t\t<input type=\"hidden\" name=\"state\" value=\"updatettcn\">\r\n");
      out.write("\t\t\t<input name=\"manv\" type=\"hidden\" value=\"");
      out.print(rs.getString(1));
      out.write("\" />\r\n");
      out.write("\t\t\t<input type=\"hidden\" name=\"websitenv\" ");
if(rs.getString(29)==null || rs.getString(29).equals("null"))
									{
      out.write(" value=\"\"");
} else {
      out.write("value=\"");
      out.print(rs.getString(29));
      out.write('"');
}
      out.write("/>\r\n");
      out.write("\t\t\t<input name=\"quequannv\" type=\"hidden\" value=\"null\" />\r\n");
      out.write("\t\t\t<table class=\"tablecontent\" align=\"center\">\t\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td><div id=\"headercontent\" class=\"title\">");
      out.print(_res("ttcn.updatehosonhanvien"));
      out.write("</div></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<table width=\"790\" cellpadding=6 cellspacing=1 style=\"border:1px solid #CCCCCC;\" align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr height=\"25px;\">\r\n");
      out.write("\t\t\t\t\t\t\t  \t<td width=\"124\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.manhanvien"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t  \t  \t<td width=\"269\" bgcolor=\"#FFF7E7\" class=\"value\">");
      out.print(rs.getString(1));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"0\" bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"293\" bgcolor=\"#FFF7E7\" class=\"value\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"36\" bgcolor=\"#f8f8f8\" class=\"value\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr height=\"25px;\">\t\r\n");
      out.write("\t\t\t\t\t\t\t  \t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.masothenhanvien"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(30) == null || rs.getString(30).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString(30));
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t  \t</td>\r\n");
      out.write("\t\t\t\t\t\t\t  \t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t  \t<td bgcolor=\"#FFF7E7\" class=\"value\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"value\">&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr height=\"25px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.tennhanvien"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">");
      out.print(hoten );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input size=\"7\" type=\"text\" name=\"honv\" ");
if(rstemp.getString(4)==null || rstemp.getString(4).equals("null")){
      out.write(" value=\"\" ");
} else {
      out.write(" value=\"");
      out.print(rstemp.getString(4));
      out.write('"');
      out.write(' ');
}
      out.write(' ');
if(ho!=1){
      out.write(" readonly=\"true\" ");
}
      out.write("> -  \r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input size=\"7\" type=\"text\" name=\"tendemnv\" ");
if(rstemp.getString(3)==null || rstemp.getString(3).equals("null")){
      out.write(" value=\"\" ");
} else {
      out.write(" value=\"");
      out.print(rstemp.getString(3));
      out.write('"');
      out.write(' ');
}
      out.write(' ');
if(tendem!=1){
      out.write(" readonly=\"true\" ");
}
      out.write("> - \r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input size=\"7\" type=\"text\" name=\"tennv\" ");
if(rstemp.getString(2)==null || rstemp.getString(2).equals("null")){
      out.write(" value=\"\" ");
} else {
      out.write(" value=\"");
      out.print(rstemp.getString(2));
      out.write('"');
      out.write(' ');
}
      out.write(' ');
if(ten!=1){
      out.write(" readonly=\"true\" ");
}
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\"><img ");
if(ho!=1 && tendem!=1 && ten!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" ");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write("> </td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr height=\"25px;\">\t\r\n");
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
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td  bgcolor=\"#FFF7E7\" class=\"value\" >\r\n");
      out.write("\t\t\t\t\t\t\t\t");
if(rstemp.getString(5)==null || rstemp.getString(5).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<select name=\"gioitinhnv\" ");
if(gioitinh1!=1){
      out.write(" style=\"display:none;\"");
}
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t  <option value=\"\"");
out.print(" selected ");
      out.write(">------*------</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t  <option value=\"1\">Nam</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t  <option value=\"0\">N&#7919;</option>\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t\t\t");
} else {
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<select name=\"gioitinhnv\" ");
if(gioitinh1!=1){
      out.write(" style=\"display:none;\"");
}
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t  <option value=\"1\" ");
if(rstemp.getInt(5)==1){out.print(" selected ");}
      out.write(">Nam</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t  <option value=\"0\" ");
if(rstemp.getInt(5)==0){out.print(" selected ");}
      out.write(">N&#7919;</option>\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t\t\t");
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\"  bgcolor=\"#f8f8f8\" class=\"value\" >\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(gioitinh1!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" ");
} 
									else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
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
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"293\" bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" size=\"7\" name=\"ngaysinhnv\" ");
if(rstemp.getDate(6)==null){
      out.write(" value=\"\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write("value=\"");
      out.print(SString.toString(rstemp.getDate(6),"dd/MM/yyyy"));
      out.write('"');
} if(ngaysinh!=1){
      out.write(" readonly=\"true\"");
}
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(ngaysinh!=1){
      out.write(" disabled=\"disabled\" ");
}
      out.write(" name=\"btngaysinhnv\" onclick=\"return showCalendar('btngaysinhnv','ngaysinhnv', '%d/%m/%Y', false);\" align=\"absmiddle\" id=\"btngaysinhnv\" src=\"");
      out.print(contextPath);
      out.write("/img/calendar2/calendar.gif\" alt='");
      out.print(_res("ttcn.ngaysinh"));
      out.write("'>\r\n");
      out.write("\t\t\t\t\t\t\t  </td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(ngaysinh!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" ");
} 
									else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr height=\"25px;\">\r\n");
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
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rstemp.getString(7)==null || rstemp.getString(7).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<select name=\"honnhannv\" ");
if(honnhan!=1){
      out.write("style=\"display:none;\"");
}
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"\" ");
out.print(" selected ");
      out.write(">------------*------------</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t  \t<option value=\"COGIADINH\">C&oacute; gia &#273;&igrave;nh</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t  \t<option value=\"DOCTHAN\">&#272;&#7897;c th&acirc;n</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t  \t<option value=\"KHAC\">Kh&aacute;c</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t  \t<option value=\"LIDI\">Li d&#7883;</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t\t\t");
} else {
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<select name=\"honnhannv\" ");
if(honnhan!=1){
      out.write("style=\"display:none;\"");
}
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t  <option value=\"COGIADINH\" ");
if(rstemp.getString(7).equals("COGIADINH")){out.print(" selected ");}
      out.write(">C&oacute; gia &#273;&igrave;nh</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t  <option value=\"DOCTHAN\" ");
if(rstemp.getString(7).equals("DOCTHAN")){out.print(" selected ");}
      out.write(">&#272;&#7897;c th&acirc;n</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t  <option value=\"KHAC\" ");
if(rstemp.getString(7).equals("KHAC")){out.print(" selected ");}
      out.write(">Kh&aacute;c</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t  <option value=\"LIDI\" ");
if(rstemp.getString(7).equals("LIDI")){out.print(" selected ");}
      out.write(">Li d&#7883;</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t\t\t");
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(honnhan!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write("> </td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr height=\"25px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("regular_temporary"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getInt("REGULAR_TEMPORARY")==1){
      out.print(_res("regular"));
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}else{
      out.print(_res("temporary"));
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("                                \t");
if(rstemp.getString("REGULAR_TEMPORARY")==null || rstemp.getString("REGULAR_TEMPORARY").equals("null")){
      out.write("\r\n");
      out.write("                                    \t<select name=\"regular_temporary\" ");
if(regular_temporary!=1){
      out.write(" style=\"display:none;\"");
}
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t  \t\t<option value=\"\"");
out.print(" selected ");
      out.write(">------*------</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t  \t\t<option value=\"1\">");
      out.print(_res("regular"));
      out.write("</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t  \t\t<option value=\"0\">");
      out.print(_res("temporary"));
      out.write("</option>\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</select>\r\n");
      out.write("                                    ");
}else{
      out.write("\r\n");
      out.write("                                        <select name=\"regular_temporary\" ");
if(regular_temporary!=1){
      out.write("style=\"display:none;\"");
}
      out.write(">\r\n");
      out.write("                                          <option value=\"1\" ");
if(rs.getInt("REGULAR_TEMPORARY")==1){out.print(" selected ");}
      out.write('>');
      out.print(_res("regular"));
      out.write("</option>\r\n");
      out.write("                                          <option value=\"0\" ");
if(rs.getInt("REGULAR_TEMPORARY")==0){out.print(" selected ");}
      out.write('>');
      out.print(_res("temporary"));
      out.write("</option>\r\n");
      out.write("                                        </select>\r\n");
      out.write("                                    ");
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(regular_temporary!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr height=\"25px;\">\r\n");
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
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("                                \t");
if(rstemp.getString("FULLTIME_PARTTIME")==null || rstemp.getString("FULLTIME_PARTTIME").equals("null")){
      out.write("\r\n");
      out.write("                                    \t<select name=\"fulltime_parttime\" ");
if(fulltime_parttime!=1){
      out.write("style=\"display:none;\"");
}
      out.write(">\r\n");
      out.write("                                        \t<option value=\"\"");
out.print(" selected ");
      out.write(">------*------</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t  \t\t<option value=\"1\">");
      out.print(_res("fulltime"));
      out.write("</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t  \t\t<option value=\"0\">");
      out.print(_res("parttime"));
      out.write("</option>\r\n");
      out.write("                                        </select>\r\n");
      out.write("                                    ");
}else{
      out.write("\r\n");
      out.write("                                        <select name=\"fulltime_parttime\" ");
if(fulltime_parttime!=1){
      out.write("style=\"display:none;\"");
}
      out.write(">\r\n");
      out.write("                                          <option value=\"1\" ");
if(rs.getInt("FULLTIME_PARTTIME")==1){out.print(" selected ");}
      out.write('>');
      out.print(_res("fulltime"));
      out.write("</option>\r\n");
      out.write("                                          <option value=\"0\" ");
if(rs.getInt("FULLTIME_PARTTIME")==0){out.print(" selected ");}
      out.write('>');
      out.print(_res("parttime"));
      out.write("</option>\r\n");
      out.write("                                        </select>\r\n");
      out.write("                                    ");
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("                                \t<img ");
if(fulltime_parttime!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
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
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"work_place\" ");
if(rstemp.getString("WORK_PLACE")==null || rstemp.getString("WORK_PLACE").equals("null"))
									{
      out.write(" value=\"\"");
} else {
      out.write("value=\"");
      out.print(rstemp.getString("WORK_PLACE"));
      out.write('"');
} if(work_place!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  /></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(work_place!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
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
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" size=\"7\" name=\"cmndnv\" ");
if(rstemp.getString(9)==null || rstemp.getString(9).equals("null")){
      out.write(" value=\"\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");
} else {
      out.write("value=\"");
      out.print(rstemp.getString(9) );
      out.write('"');
} if(cmnd!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  /> - \r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" size=\"7\" name=\"ngaycapcmndnv\" ");
if(rstemp.getDate(10)==null){
      out.write(" value=\"\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");
} else {
      out.write("value=\"");
      out.print(SString.toString(rstemp.getDate(10),"dd/MM/yyyy"));
      out.write('"');
} if(ngaycapcmnd!=1){
      out.write(" readonly=\"true\"");
}
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if (ngaycapcmnd!=1){
      out.write(" disabled=\"disabled\"");
}
      out.write(" name=\"btngccmnd\" onclick=\"return showCalendar('btngccmnd','ngaycapcmndnv', '%d/%m/%Y', false);\" align=\"absmiddle\" id=\"btngccmnd\" src=\"");
      out.print(contextPath);
      out.write("/img/calendar2/calendar.gif\" alt='");
      out.print(_res("tdnl.ngaycap"));
      out.write("'>\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(ngaycapcmnd!=1 && cmnd!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr height=\"25px;\">\r\n");
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
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"noicapcmndnv\" ");
if(rstemp.getString(11)==null || rstemp.getString(11).equals("null")){
      out.write(" value=\"\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");
} else {
      out.write("value=\"");
      out.print(rstemp.getString(11));
      out.write('"');
} if(noicapcmnd!=1){
      out.write(" readonly=\"true\"");
}
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(noicapcmnd!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
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
      out.write("\t \t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"passportnv\" ");
if(rstemp.getString(37)==null || rstemp.getString(37).equals("null")){
      out.write(" value=\"\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");
} else {
      out.write("value=\"");
      out.print(rstemp.getString(37) );
      out.write('"');
} if(passport!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  />\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(passport!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("                            <tr height=\"25px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("issuea_expired_date"));
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
      out.write(" - \r\n");
      out.write("                                    ");
if(rs.getDate("ngay_hethan_hochieu")==null){
      out.write("\r\n");
      out.write("                                    \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(SString.toString(rs.getDate("ngay_hethan_hochieu"),"dd/MM/yyyy") );
}
      out.write("\t \t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" size=\"7\" name=\"passport_issued_date\" ");
if(rstemp.getDate("ngaycap_hochieu")==null){
      out.write(" value=\"\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write("value=\"");
      out.print(SString.toString(rstemp.getDate("ngaycap_hochieu"),"dd/MM/yyyy"));
      out.write('"');
} if(ngaycappassport!=1){
      out.write("readonly=\"true\"");
}
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(ngaycappassport!=1){
      out.write("disabled=\"disabled\"");
}
      out.write(" name=\"btpassport_issued_date\" onclick=\"return showCalendar('btpassport_issued_date','passport_issued_date', '%d/%m/%Y', false);\" align=\"absmiddle\" id=\"btpassport_issued_date\" src=\"");
      out.print(contextPath);
      out.write("/img/calendar2/calendar.gif\" alt='");
      out.print(_res("tdnl.ngaycap"));
      out.write("'> - \r\n");
      out.write("                                    <input type=\"text\" size=\"7\" name=\"passport_expired_date\" ");
if(rstemp.getDate("ngay_hethan_hochieu")==null){
      out.write(" value=\"\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write("value=\"");
      out.print(SString.toString(rstemp.getDate("ngay_hethan_hochieu"),"dd/MM/yyyy"));
      out.write('"');
} if(passport_expired_date!=1){
      out.write("readonly=\"true\"");
}
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(passport_expired_date!=1){
      out.write("disabled=\"disabled\"");
}
      out.write(" name=\"btpassport_expired_date\" onclick=\"return showCalendar('btpassport_expired_date','passport_expired_date', '%d/%m/%Y', false);\" align=\"absmiddle\" id=\"btpassport_expired_date\" src=\"");
      out.print(contextPath);
      out.write("/img/calendar2/calendar.gif\" alt='");
      out.print(_res("passport_expired_date"));
      out.write("'>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(ngaycappassport!=1&&passport_expired_date!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr height=\"25px;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.noicap"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(39)==null || rs.getString(39).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString(39));
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"noicappassport\" ");
if(rstemp.getString(39)==null || rstemp.getString(39).equals("null")){
      out.write(" value=\"\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");
} else {
      out.write("value=\"");
      out.print(rstemp.getString(39));
      out.write('"');
} if(noicappassport!=1){
      out.write(" readonly=\"true\"");
}
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(noicappassport!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("                            <tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
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
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"visa_no\" ");
if(rstemp.getString("visa_no")==null || rstemp.getString("visa_no").equals("null")){
      out.write(" value=\"\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");
} else {
      out.write("value=\"");
      out.print(rstemp.getString("visa_no") );
      out.write('"');
} if(visa_number!=1){
      out.write("readonly=\"true\"");
}
      out.write("  />\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(visa_number!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("                            <tr height=\"25px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("issuea_expired_date"));
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
      out.write(" - \r\n");
      out.write("                                    ");
if(rs.getDate("VISA_EXPIRED")==null){
      out.write("\r\n");
      out.write("                                    \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(SString.toString(rs.getDate("VISA_EXPIRED"),"dd/MM/yyyy") );
}
      out.write("\t \t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" size=\"7\" name=\"visa_issued_date\" ");
if(rstemp.getDate("VISA_DATE")==null){
      out.write(" value=\"\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write("value=\"");
      out.print(SString.toString(rstemp.getDate("VISA_DATE"),"dd/MM/yyyy"));
      out.write('"');
} if(visa_issued_date!=1){
      out.write("readonly=\"true\"");
}
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(visa_issued_date!=1){
      out.write("disabled=\"disabled\"");
}
      out.write(" name=\"btvisa_issued_date\" onclick=\"return showCalendar('btvisa_issued_date','visa_issued_date', '%d/%m/%Y', false);\" align=\"absmiddle\" id=\"btvisa_issued_date\" src=\"");
      out.print(contextPath);
      out.write("/img/calendar2/calendar.gif\" alt='");
      out.print(_res("tdnl.ngaycap"));
      out.write("'> - \r\n");
      out.write("                                    <input type=\"text\" size=\"7\" name=\"visa_expired_date\" ");
if(rstemp.getDate("VISA_EXPIRED")==null){
      out.write(" value=\"\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write("value=\"");
      out.print(SString.toString(rstemp.getDate("VISA_EXPIRED"),"dd/MM/yyyy"));
      out.write('"');
} if(visa_expired_date!=1){
      out.write("readonly=\"true\"");
}
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(visa_expired_date!=1){
      out.write("disabled=\"disabled\"");
}
      out.write(" name=\"btvisa_expired_date\" onclick=\"return showCalendar('btvisa_expired_date','visa_expired_date', '%d/%m/%Y', false);\" align=\"absmiddle\" id=\"btvisa_expired_date\" src=\"");
      out.print(contextPath);
      out.write("/img/calendar2/calendar.gif\" alt='");
      out.print(_res("passport_expired_date"));
      out.write("'>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(visa_issued_date!=1&&visa_expired_date!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr height=\"25px;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.noicap"));
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
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"visa_place\" ");
if(rstemp.getString("VISA_PLACE")==null || rstemp.getString("VISA_PLACE").equals("null")){
      out.write(" value=\"\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");
} else {
      out.write("value=\"");
      out.print(rstemp.getString("VISA_PLACE"));
      out.write('"');
} if(visa_place_issued!=1){
      out.write("readonly=\"true\"");
}
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(visa_place_issued!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr >\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td>\t\t\r\n");
      out.write("\t\t\t\t\t\t<table align=\"center\" width=\"790\" cellpadding=6 cellspacing=1 style=\"border:1px solid #CCCCCC;\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td colspan=\"5\" class=\"title1\" bgcolor=\"#007D93\">&nbsp;");
      out.print(_res("ttcn.thanhphanxuatthan"));
      out.write("</td>\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"126\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.quoctich"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"266\" bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(17)==null || rs.getString(17).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t  ");
} else {
      out.print(rs.getString(17));
}
      out.write("\t\t\t\t\t\t\t  </td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"0\" bgcolor=\"#CCCCCC\">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"294\" bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<select name=\"quoctichnv\" ");
if(quoctich!=1){
      out.write(" style=\"display:none;\"");
}
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");

										String strSqlNation = ("select NATION_NO, NATION_NAME from HR_NATION order by  HR_NATION.nation_no asc");
										java.sql.Statement st1=conn.createStatement();
										ResultSet rs1=st1.executeQuery(strSqlNation);
										if(rstemp.getString(17)==null || rstemp.getString(17).equals("null")){
									
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"\" selected>--------*--------</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");

											while(rs1.next()){ 
									
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"");
      out.print(rs1.getString(1));
      out.write('"');
      out.write('>');
      out.print(rs1.getString(2));
      out.write("</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}} else { 
											while(rs1.next()){ 
									
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"");
      out.print(rs1.getString(1));
      out.write('"');
      out.write(' ');
if(rstemp.getString(16).equals(rs1.getString(1))){out.print(" selected ");}
      out.write('>');
      out.print(rs1.getString(2));
      out.write("</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t \t\t  </select>\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t  </td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"36\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(quoctich!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
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
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<select name=\"dantocnv\" ");
if(dantoc!=1){
      out.write(" style=\"display:none;\"");
}
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");

										String strSqlRace = ("select RACE_NO, RACE_NAME from HR_RACE order by  HR_RACE.race_no asc");
										//java.sql.Statement st2=conn.createStatement();
										//ResultSet rs1=st2.executeQuery(strSqlRace);
										rs1=st1.executeQuery(strSqlRace);
										if(rstemp.getString(12)==null || rstemp.getString(12).equals("null")){
									
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"\" selected>--------*--------</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");

											while(rs1.next()){ 
									
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"");
      out.print(rs1.getString(1));
      out.write('"');
      out.write('>');
      out.print(rs1.getString(2));
      out.write("</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}} else { 
											while(rs1.next()){ 
									
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"");
      out.print(rs1.getString(1));
      out.write('"');
      out.write(' ');
if(rstemp.getString(12).equals(rs1.getString(1))){out.print(" selected ");}
      out.write('>');
      out.print(rs1.getString(2));
      out.write("</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(dantoc!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.tongiao"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(19)==null || rs.getString(19).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString(19));
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<select name=\"tongiaonv\" ");
if(tongiao!=1){
      out.write(" style=\"display:none;\"");
}
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");

										String strSqlReligion = ("select RELIGION_NO, RELIGION_NAME from HR_RELIGION order by  HR_RELIGION.RELIGION_NO asc");
										//java.sql.Statement st3=conn.createStatement();
										//ResultSet rs1=st3.executeQuery(strSqlReligion);
										rs1=st1.executeQuery(strSqlReligion);
										if(rstemp.getString(18)==null || rstemp.getString(18).equals("null")){
									
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"\" selected>--------*--------</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");

											while(rs1.next()){ 
									
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"");
      out.print(rs1.getString(1));
      out.write('"');
      out.write('>');
      out.print(rs1.getString(2));
      out.write("</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}} else { 
											while(rs1.next()){ 
									
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"");
      out.print(rs1.getString(1));
      out.write('"');
      out.write(' ');
if(rstemp.getString(18).equals(rs1.getString(1))){out.print(" selected ");}
      out.write('>');
      out.print(rs1.getString(2));
      out.write("</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(tongiao!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.noisinh"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(20)==null || rs.getString(20).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString(20));
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t  \t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\" align=\"left\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input size=\"40\" type=\"text\" name=\"noisinhnv\" ");
if(rstemp.getString(20)==null || rstemp.getString(20).equals("null")){
      out.write(" value=\"\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");
} else {
      out.write("value=\"");
      out.print(rstemp.getString(20));
      out.write('"');
} if(noisinh!=1){
      out.write(" readonly=\"true\"");
}
      out.write(">\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t \t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(noisinh!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t \t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\t\t\t\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<table width=\"790\" cellpadding=6 cellspacing=1 align=\"center\" style=\"border:1px solid #CCCCCC;\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td colspan=\"5\" class=\"title1\" bgcolor=\"#007D93\">&nbsp;");
      out.print(_res("ttcn.thongtinlienlac"));
      out.write("</span></td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"126\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.sodienthoai"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"266\" bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
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
      out.write("\t\t\t\t\t\t\t  </td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"0\" bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"294\" bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t  <input type=\"text\" name=\"dienthoainv\" ");
if(rstemp.getString(25)==null || rstemp.getString(25).equals("null"))
									{
      out.write(" value=\"\"");
} else {
      out.write("value=\"");
      out.print(rstemp.getString(25));
      out.write('"');
} if(dienthoai!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  /></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"36\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(dienthoai!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\r\n");
      out.write("                                </td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
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
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"mobilenv\" ");
if(rstemp.getString(26)==null || rstemp.getString(26).equals("null"))
									{
      out.write(" value=\"\"");
} else {
      out.write("value=\"");
      out.print(rstemp.getString(26));
      out.write('"');
} if(mobile!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  /></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(mobile!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\r\n");
      out.write("                                 </td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
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
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"emailnv\" ");
if(rstemp.getString(27)==null || rstemp.getString(27).equals("null"))
									{
      out.write(" value=\"\"");
} else {
      out.write("value=\"");
      out.print(rstemp.getString(27));
      out.write('"');
} if(email!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  /></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(email!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\r\n");
      out.write("                                </td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"126\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("email_personal"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"266\" bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("EMAIL_PERSONAL")==null || rs.getString("EMAIL_PERSONAL").equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString("EMAIL_PERSONAL") );
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t  </td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"email_personal\" ");
if(rstemp.getString("EMAIL_PERSONAL")==null || rstemp.getString("EMAIL_PERSONAL").equals("null"))
									{
      out.write(" value=\"\"");
} else {
      out.write("value=\"");
      out.print(rstemp.getString("EMAIL_PERSONAL"));
      out.write('"');
} if(email_personal!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  /></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(email_personal!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\r\n");
      out.write("                                </td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
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
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input size=\"40\" type=\"text\" name=\"dctamtrunv\" ");
if(rstemp.getString(23)==null || rstemp.getString(23).equals("null"))
									{
      out.write(" value=\"\"");
} else {
      out.write("value=\"");
      out.print(rstemp.getString(23));
      out.write('"');
} if(dctamtru!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  /></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(dctamtru!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.diachilienhe"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
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
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input size=\"40\" type=\"text\" name=\"dclienhenv\" ");
if(rstemp.getString(22)==null || rstemp.getString(22).equals("null"))
									{
      out.write(" value=\"\"");
} else {
      out.write("value=\"");
      out.print(rstemp.getString(22));
      out.write('"');
} if(dclienhe!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  /></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(dclienhe!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<table width=\"790\" cellpadding=6 cellspacing=1 align=\"center\" style=\"border:1px solid #CCCCCC;\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td colspan=\"5\" class=\"title1\" bgcolor=\"#007D93\">&nbsp;");
      out.print(_res("ttcn.taichinh"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"126\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("name_acc_1"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"266\" bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("ACCOUNT_NAME") == null || rs.getString("ACCOUNT_NAME").equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(rs.getString("ACCOUNT_NAME"));
      out.write(' ');
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t  \t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"0\" bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"294\" bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("                                \t<input type=\"text\" name=\"name_acc_1\" ");
if(rstemp.getString("ACCOUNT_NAME")==null || rstemp.getString("ACCOUNT_NAME").equals("null"))
									{
      out.write(" value=\"\"");
} else {
      out.write("value=\"");
      out.print(rstemp.getString(33));
      out.write('"');
} if(name_acc_1!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  />\r\n");
      out.write("                                </td>\t\r\n");
      out.write("\t\t\t\t\t\t\t  \t<td width=\"36\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(name_acc_1!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\r\n");
      out.write("                                </td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("number_acc_1"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(33)==null || rs.getString(33).equals("null")) {
      out.write(" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString(33));
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"taikhoannv\" ");
if(rstemp.getString(33)==null || rstemp.getString(33).equals("null"))
									{
      out.write(" value=\"\"");
} else {
      out.write("value=\"");
      out.print(rstemp.getString(33));
      out.write('"');
} if(taikhoan!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  />\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(taikhoan!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("bank_acc_1"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString(34) == null || rs.getString(34).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(rs.getString(34));
      out.write(' ');
      out.write(' ');
}
      out.write(" \r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"nganhangnv\" ");
if(rstemp.getString(34)==null || rstemp.getString(34).equals("null"))
									{
      out.write(" value=\"\"");
} else {
      out.write("value=\"");
      out.print(rstemp.getString(34));
      out.write('"');
} if(nganhang!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  />\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(nganhang!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("                            \r\n");
      out.write("                            \r\n");
      out.write("                            <tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"126\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("name_acc_2"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"266\" bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("ACCOUNT_NAME_2") == null || rs.getString("ACCOUNT_NAME_2").equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(rs.getString("ACCOUNT_NAME_2"));
      out.write(' ');
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t  \t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"0\" bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"294\" bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("                                \t<input type=\"text\" name=\"name_acc_2\" ");
if(rstemp.getString("ACCOUNT_NAME_2")==null || rstemp.getString("ACCOUNT_NAME_2").equals("null"))
									{
      out.write(" value=\"\"");
} else {
      out.write("value=\"");
      out.print(rstemp.getString("ACCOUNT_NAME_2"));
      out.write('"');
} if(name_acc_2!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  />\r\n");
      out.write("                                </td>\t\r\n");
      out.write("\t\t\t\t\t\t\t  \t<td width=\"36\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(name_acc_2!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\r\n");
      out.write("                                </td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("number_acc_2"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("ACCOUNT_ID_2") == null || rs.getString("ACCOUNT_ID_2").equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(rs.getString("ACCOUNT_ID_2"));
      out.write(' ');
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"number_acc_2\" ");
if(rstemp.getString("ACCOUNT_ID_2")==null || rstemp.getString("ACCOUNT_ID_2").equals("null"))
									{
      out.write(" value=\"\"");
} else {
      out.write("value=\"");
      out.print(rstemp.getString("ACCOUNT_ID_2"));
      out.write('"');
} if(number_acc_2!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  />\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(number_acc_2!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("bank_acc_2"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("ACCOUNT_BANK_2")==null || rs.getString("ACCOUNT_BANK_2").equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString("ACCOUNT_BANK_2") );
      out.write(' ');
}
      out.write(" \r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"bank_acc_2\" ");
if(rstemp.getString("ACCOUNT_BANK_2")==null || rstemp.getString("ACCOUNT_BANK_2").equals("null"))
									{
      out.write(" value=\"\"");
} else {
      out.write("value=\"");
      out.print(rstemp.getString("ACCOUNT_BANK_2"));
      out.write('"');
} if(bank_acc_2!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  />\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(bank_acc_2!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("                            \r\n");
      out.write("                            \r\n");
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
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"masothuenv\" ");
if(rstemp.getString(41)==null || rstemp.getString(41).equals("null"))
									{
      out.write(" value=\"\"");
} else {
      out.write("value=\"");
      out.print(rstemp.getString(41));
      out.write('"');
} if(masothue!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  />\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(masothue!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
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
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"coquanthuenv\" ");
if(rstemp.getString(42)==null || rstemp.getString(42).equals("null"))
									{
      out.write(" value=\"\"");
} else {
      out.write("value=\"");
      out.print(rstemp.getString(42));
      out.write('"');
} if(coquanthue!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  />\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(coquanthue!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("                <tr>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<table width=\"790\" cellpadding=6 cellspacing=1 align=\"center\" style=\"border:1px solid #CCCCCC;\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td colspan=\"5\" class=\"title1\" bgcolor=\"#007D93\">&nbsp;");
      out.print(_res("housing"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"126\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("housing_from_date"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"266\" bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("HOUSING_FROM_DATE") == null || rs.getString("HOUSING_FROM_DATE").equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(SString.toString(rs.getDate("HOUSING_FROM_DATE"),"dd/MM/yyyy"));
      out.write(' ');
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t  \t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"0\" bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"294\" bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("                                \t<input type=\"text\" size=\"7\" name=\"housing_from_date\" ");
if(rstemp.getDate("HOUSING_FROM_DATE")==null){
      out.write(" value=\"\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");
} else {
      out.write("value=\"");
      out.print(SString.toString(rstemp.getDate("HOUSING_FROM_DATE"),"dd/MM/yyyy"));
      out.write('"');
} if(housing_from_date!=1){
      out.write(" readonly=\"true\"");
}
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if (housing_from_date!=1){
      out.write(" disabled=\"disabled\"");
}
      out.write(" name=\"bthousing_from_date\" onclick=\"return showCalendar('bthousing_from_date','housing_from_date', '%d/%m/%Y', false);\" align=\"absmiddle\" id=\"bthousing_from_date\" src=\"");
      out.print(contextPath);
      out.write("/img/calendar2/calendar.gif\" alt='");
      out.print(_res("housing_from_date"));
      out.write("'>\r\n");
      out.write("                                </td>\t\r\n");
      out.write("\t\t\t\t\t\t\t  \t<td width=\"36\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(housing_from_date!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\r\n");
      out.write("                                </td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("housing_to_date"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getDate("HOUSING_TO_DATE") == null || rs.getDate(57).equals("null")){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(SString.toString(rs.getDate("HOUSING_TO_DATE"),"dd/MM/yyyy"));
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" size=\"7\" name=\"housing_to_date\" ");
if(rstemp.getDate("HOUSING_TO_DATE")==null){
      out.write(" value=\"\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write("value=\"");
      out.print(SString.toString(rstemp.getDate("HOUSING_TO_DATE"),"dd/MM/yyyy"));
      out.write('"');
} if(housing_to_date!=1){
      out.write(" readonly=\"true\"");
}
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if (housing_to_date!=1){
      out.write(" disabled=\"disabled\"");
}
      out.write(" name=\"bthousing_to_date\" onclick=\"return showCalendar('bthousing_to_date','housing_to_date', '%d/%m/%Y', false);\" align=\"absmiddle\" id=\"bthousing_to_date\" src=\"");
      out.print(contextPath);
      out.write("/img/calendar2/calendar.gif\" alt='");
      out.print(_res("housing_to_date"));
      out.write("'>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(housing_to_date!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("housing_rental"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
      out.print(rs.getDouble("HOUSING_RENTAL"));
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"housing_rental\" value=\"");
      out.print(rstemp.getDouble("HOUSING_RENTAL"));
      out.write('"');
 if(housing_rental!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  />\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(housing_rental!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("                <tr>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<table width=\"790\" cellpadding=6 cellspacing=1 align=\"center\" style=\"border:1px solid #CCCCCC;\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td colspan=\"5\" class=\"title1\" bgcolor=\"#007D93\">&nbsp;");
      out.print(_res("emergency_contact"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"126\" bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("contact_fullname"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"266\" bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("CONTACT_FULLNAME") == null || rs.getString("CONTACT_FULLNAME").equals("null")){
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(rs.getString("CONTACT_FULLNAME"));
      out.write(' ');
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t  \t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"0\" bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"294\" bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("                                \t<input type=\"text\" name=\"contact_fullname\" ");
if(rstemp.getString("CONTACT_FULLNAME")==null || rstemp.getString("CONTACT_FULLNAME").equals("null"))
									{
      out.write(" value=\"\"");
} else {
      out.write("value=\"");
      out.print(rstemp.getString("CONTACT_FULLNAME"));
      out.write('"');
} if(contact_fullname!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  />\r\n");
      out.write("                                </td>\t\r\n");
      out.write("\t\t\t\t\t\t\t  \t<td width=\"36\" align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(contact_fullname!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\r\n");
      out.write("                                </td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("contact_relationship"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("CONTACT_RELATIONSHIP") == null || rs.getString("CONTACT_RELATIONSHIP").equals("null")){
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(rs.getString("CONTACT_RELATIONSHIP"));
      out.write(' ');
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"contact_relationship\" ");
if(rstemp.getString("CONTACT_RELATIONSHIP")==null || rstemp.getString("CONTACT_RELATIONSHIP").equals("null"))
									{
      out.write(" value=\"\"");
} else {
      out.write("value=\"");
      out.print(rstemp.getString("CONTACT_RELATIONSHIP"));
      out.write('"');
} if(contact_relationship!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  />\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(contact_relationship!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("ttcn.sodienthoai"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("CONTACT_PHONE_NO") == null || rs.getString("CONTACT_PHONE_NO").equals("null")){
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(rs.getString("CONTACT_PHONE_NO"));
      out.write(' ');
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"contact_phone\" ");
if(rstemp.getString("CONTACT_PHONE_NO")==null || rstemp.getString("CONTACT_PHONE_NO").equals("null"))
									{
      out.write(" value=\"\"");
} else {
      out.write("value=\"");
      out.print(rstemp.getString("CONTACT_PHONE_NO"));
      out.write('"');
} if(contact_phone!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  />\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(contact_phone!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("                            <tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("contact_permanent_add"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("CONTACT_PERMANENT_ADD") == null || rs.getString("CONTACT_PERMANENT_ADD").equals("null")){
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(rs.getString("CONTACT_PERMANENT_ADD"));
      out.write(' ');
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"contact_permanent_add\" ");
if(rstemp.getString("CONTACT_PERMANENT_ADD")==null || rstemp.getString("CONTACT_PERMANENT_ADD").equals("null"))
									{
      out.write(" value=\"\"");
} else {
      out.write("value=\"");
      out.print(rstemp.getString("CONTACT_PERMANENT_ADD"));
      out.write('"');
} if(contact_phone!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  />\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(contact_permanent_add!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("                            <tr><td height=\"1\" bgcolor=\"#CCCCCC\" colspan=\"5\"></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#f8f8f8\" class=\"des\">");
      out.print(_res("contact_address_cont"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(rs.getString("CONTACT_ADDRESS_CONT") == null || rs.getString("CONTACT_ADDRESS_CONT").equals("null")){
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(' ');
      out.print(rs.getString("CONTACT_ADDRESS_CONT"));
      out.write(' ');
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#CCCCCC\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"contact_address_cont\" ");
if(rstemp.getString("CONTACT_ADDRESS_CONT")==null || rstemp.getString("CONTACT_ADDRESS_CONT").equals("null"))
									{
      out.write(" value=\"\"");
} else {
      out.write("value=\"");
      out.print(rstemp.getString("CONTACT_ADDRESS_CONT"));
      out.write('"');
} if(contact_address_cont!=1){
      out.write(" readonly=\"true\"");
}
      out.write("  />\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#f8f8f8\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img ");
if(contact_address_cont!=1){
      out.write("src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write(" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" ");
}
      out.write(">\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t  <hr />\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td class=\"des\" align=\"left\">\r\n");
      out.write("\t\t\t\t\t\t<input name=\"update\" type=\"button\" \r\n");
      out.write("\t\t\t\t\t\t\t");
if(manhanvien==1 || ho==1 || tendem==1 || ten==1 || masothenhanvien==1 || 
								 gioitinh1==1 || ngaysinh==1 || honnhan==1 || cmnd==1 || ngaycapcmnd==1 || 
								 noicapcmnd==1 || passport==1 || ngaycappassport==1 || noicappassport==1 || 
								 quoctich==1 || dantoc==1 || tongiao==1 || noisinh==1 || quequan==1 || 
								 xuatthan==1 || dcthuongtru==1 || dctamtru==1 ||
								 dclienhe==1 || dienthoai==1 || mobile==1 || email==1 ||	website==1 || 
								 taikhoan==1 || nganhang==1 || masothue==1 || coquanthue==1 ||
								 passport_expired_date==1 || visa_number==1 || visa_place_issued==1 ||
								 visa_issued_date==1 || visa_expired_date==1 || regular_temporary==1 ||
								 fulltime_parttime==1 || work_place==1 || email_personal==1 ||
								 org_level==1 || job_grade==1 || name_acc_1==1 || name_acc_2==1 ||
								 number_acc_2==1 || bank_acc_2==1 || housing_from_date==1 ||
								 housing_to_date==1 || housing_rental==1 || contact_fullname==1 ||
								 contact_relationship==1 || contact_permanent_add==1 || contact_address_cont==1 ||
								 contact_phone==1)
							{
} else {
      out.write("readonly=\"true\"");
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t Onclick=\"javascript:funcPostData()\" value=\"");
      out.print(_res("udttcn.submit"));
      out.write("\" />\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t  </td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</form>\t \r\n");

	}rstemp.close();sttemp.close();}
		rs.close();
		st.close();
		conn.commit();
		//conn.close();
	}catch(IOException ex ){
	      //e.printStackTrace();
	      //out.println(e.getMessage());
	}finally{
		if(conn != null)
			conn.setAutoCommit(true);
		dbConnManager.freeConnection("topmostread", conn);
	}

      out.write("\r\n");
      out.write("\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("\r\n");
      out.write("\tfunction funcPostData(){\r\n");
      out.write("\t\tvar dm = document.frmUpdate; \r\n");
      out.write("\t\tif(dm.honv.value==''){\r\n");
      out.write("\t\t\talert('");
      out.print(_res("msg_honv"));
      out.write("');\r\n");
      out.write("\t\t\tdm.honv.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(dm.honv.value!=\"\" && dm.honv.value.length>10)\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\talert('");
      out.print(_res("udttcn.alert.lengthho"));
      out.write("');\r\n");
      out.write("\t\t\tdm.honv.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if (dm.tennv.value==''){\r\n");
      out.write("\t\t \talert('");
      out.print(_res("msg_tennv"));
      out.write("');\r\n");
      out.write("\t\t\tdm.tennv.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(dm.tennv.value!='' && dm.tennv.value.length>10){\r\n");
      out.write("\t\t\talert('");
      out.print(_res("udttcn.alert.lengthten"));
      out.write("');\r\n");
      out.write("\t\t\tdm.tennv.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(dm.tendemnv.value!='' && dm.tendemnv.value.length>21){\r\n");
      out.write("\t\t\talert('");
      out.print(_res("udttcn.alert.lengthtendem"));
      out.write("');\r\n");
      out.write("\t\t\tdm.tendemnv.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\telse if (dm.ngaysinhnv.value !='' && checkDate(dm.ngaysinhnv, true)!='TRUE'){\r\n");
      out.write("\t\t\talert('");
      out.print(_res("msg_ngaysinhnv"));
      out.write("');\r\n");
      out.write("\t\t\tdm.ngaysinhnv.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\telse if(dm.cmndnv.value!='' && dm.cmndnv.value.length>21){\r\n");
      out.write("\t\t\talert('");
      out.print(_res("udttcn.alert.lengthcmnd"));
      out.write("');\r\n");
      out.write("\t\t\tdm.cmndnv.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(dm.cmndnv.value!='' && dm.ngaycapcmndnv.value==''){\r\n");
      out.write("\t\t \talert('");
      out.print(_res("msg_ttcn7"));
      out.write("');\r\n");
      out.write("\t\t\tdm.ngaycapcmndnv.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(dm.cmndnv.value=='' && dm.ngaycapcmndnv.value!=''){\r\n");
      out.write("\t\t \talert('");
      out.print(_res("msg_ttcn15"));
      out.write("');\r\n");
      out.write("\t\t\tdm.cmndnv.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\telse if(dm.ngaycapcmndnv.value!='' && checkDate(dm.ngaycapcmndnv, true)!='TRUE'){\r\n");
      out.write("\t\t \talert('");
      out.print(_res("msg_ttcn8"));
      out.write("');\r\n");
      out.write("\t\t\tdm.ngaycapcmndnv.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(dm.noicapcmndnv.value!='' && dm.noicapcmndnv.value.length>85){\r\n");
      out.write("\t\t \talert('");
      out.print(_res("udttcn.alert.lengthnoicapcmnd"));
      out.write("');\r\n");
      out.write("\t\t\tdm.noicapcmndnv.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t \r\n");
      out.write("\t\telse if(dm.passportnv.value!='' && dm.passportnv.value.length>10){\r\n");
      out.write("\t\t \talert('");
      out.print(_res("udttcn.alert.lengthpassport"));
      out.write("');\r\n");
      out.write("\t\t\tdm.passportnv.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(dm.passportnv.value!='' && dm.passport_issued_date.value==''){\r\n");
      out.write("\t\t \talert('");
      out.print(_res("msg_ngaycappassport"));
      out.write("');\r\n");
      out.write("\t\t\tdm.passport_issued_date.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(dm.passportnv.value=='' && dm.passport_issued_date.value!=''){\r\n");
      out.write("\t\t \talert('");
      out.print(_res("msg_passport"));
      out.write("');\r\n");
      out.write("\t\t\tdm.passportnv.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(dm.passport_issued_date.value!='' && checkDate(dm.passport_issued_date, true)!='TRUE'){\r\n");
      out.write("\t\t\talert('");
      out.print(_res("msg_ngaycappassport1"));
      out.write("');\r\n");
      out.write("\t\t\tdm.passport_issued_date.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(dm.noicappassport.value!='' && dm.noicappassport.value.length>85){\r\n");
      out.write("\t\t \talert('");
      out.print(_res("udttcn.alert.lengthnoicappassport"));
      out.write("');\r\n");
      out.write("\t\t\tdm.noicappassport.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(dm.noisinhnv.value!='' && dm.noisinhnv.value.length>42){\r\n");
      out.write("\t\t\talert('");
      out.print(_res("udttcn.alert.lengthnoisinh"));
      out.write("');\r\n");
      out.write("\t\t\tdm.noisinhnv.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(dm.dienthoainv.value!='' && dm.dienthoainv.value.length>10){\r\n");
      out.write("\t\t\talert('");
      out.print(_res("udttcn.alert.lengthdienthoai"));
      out.write("');\r\n");
      out.write("\t\t\tdm.dienthoainv.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(dm.mobilenv.value!='' && dm.mobilenv.value.length>10){\r\n");
      out.write("\t\t\talert('");
      out.print(_res("udttcn.alert.lengthmobile"));
      out.write("');\r\n");
      out.write("\t\t\tdm.mobilenv.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(dm.emailnv.value!='' && dm.emailnv.value.length>21){\r\n");
      out.write("\t\t\talert('");
      out.print(_res("udttcn.alert.lengthemail"));
      out.write("');\r\n");
      out.write("\t\t\tdm.emailnv.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\telse if(dm.dctamtrunv.value!='' && dm.dctamtrunv.value.length>85){\r\n");
      out.write("\t\t\talert('");
      out.print(_res("udttcn.alert.lengthdctamtru"));
      out.write("');\r\n");
      out.write("\t\t\tdm.dctamtrunv.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(dm.dclienhenv.value!='' && dm.dclienhenv.value.length>85){\r\n");
      out.write("\t\t\talert('");
      out.print(_res("udttcn.alert.lengthdclienhe"));
      out.write("');\r\n");
      out.write("\t\t\tdm.dclienhenv.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\telse if(dm.taikhoannv.value!='' && dm.taikhoannv.value.length>10){\r\n");
      out.write("\t\t\talert('");
      out.print(_res("udttcn.alert.lengthsotaikhoan"));
      out.write("');\r\n");
      out.write("\t\t\tdm.taikhoannv.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(dm.nganhangnv.value!='' && dm.nganhangnv.value.length>42){\r\n");
      out.write("\t\t\talert('");
      out.print(_res("udttcn.alert.lengthnganhang"));
      out.write("');\r\n");
      out.write("\t\t\tdm.nganhangnv.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(dm.masothuenv.value!='' && dm.masothuenv.value.length>10){\r\n");
      out.write("\t\t\talert('");
      out.print(_res("udttcn.alert.lengthmasothue"));
      out.write("');\r\n");
      out.write("\t\t\tdm.masothuenv.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(dm.coquanthuenv.value!='' && dm.coquanthuenv.value.length>21){\r\n");
      out.write("\t\t\talert('");
      out.print(_res("udttcn.alert.lengthcoquanthue"));
      out.write("');\r\n");
      out.write("\t\t\tdm.coquanthuenv.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(dm.visa_issued_date.value!='' && checkDate(dm.visa_issued_date, true)!='TRUE'){\r\n");
      out.write("\t\t\talert('");
      out.print(_res("msb_check_date"));
      out.write("');\r\n");
      out.write("\t\t\tdm.visa_issued_date.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(dm.visa_expired_date.value!='' && checkDate(dm.visa_expired_date, true)!='TRUE'){\r\n");
      out.write("\t\t\talert('");
      out.print(_res("msb_check_date"));
      out.write("');\r\n");
      out.write("\t\t\tdm.visa_expired_date.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(dm.housing_from_date.value!='' && checkDate(dm.housing_from_date, true)!='TRUE'){\r\n");
      out.write("\t\t\talert('");
      out.print(_res("msb_check_date"));
      out.write("');\r\n");
      out.write("\t\t\tdm.housing_from_date.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(dm.housing_to_date.value!='' && checkDate(dm.housing_to_date, true)!='TRUE'){\r\n");
      out.write("\t\t\talert('");
      out.print(_res("msb_check_date"));
      out.write("');\r\n");
      out.write("\t\t\tdm.housing_to_date.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(dm.housing_rental!=\"\" && isNaN(dm.housing_rental.value))\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\talert('");
      out.print(_res("msg_check_number"));
      out.write("');\r\n");
      out.write("\t\t\tdm.housing_rental.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t/*else if(dm.chieucaonv!=\"\" && isNaN(dm.chieucaonv.value))\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\talert('");
      out.print(_res("udttcn.alert.chieucao"));
      out.write("');\r\n");
      out.write("\t\t\tdm.chieucaonv.focus();\r\n");
      out.write("\t\t}*/\r\n");
      out.write("\t\t \r\n");
      out.write("\t\telse {\r\n");
      out.write("\t\t\t/*if (dm.ngayvaodangnv.value !='' && checkDate(dm.ngayvaodangnv, true)!='TRUE'){\r\n");
      out.write("\t\t\t\talert('");
      out.print(_res("msg_ttcn2"));
      out.write("');\r\n");
      out.write("\t\t\t\tdm.ngayvaodangnv.focus();\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse if (dm.ngayvaodangnv.value !='' && dm.macvdangnv.value==''){\r\n");
      out.write("\t\t\t\talert('");
      out.print(_res("msg_ttcn9"));
      out.write("');\r\n");
      out.write("\t\t\t\tdm.macvdangnv.focus();\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse if (dm.ngayvaodoannv.value !='' && checkDate(dm.ngayvaodoannv, true)!='TRUE'){\r\n");
      out.write("\t\t\t\talert('");
      out.print(_res("msg_ttcn5"));
      out.write("');\r\n");
      out.write("\t\t\t\tdm.ngayvaodoannv.focus();\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse if (dm.ngayvaodoannv.value !='' && dm.macvdoannv.value==''){\r\n");
      out.write("\t\t\t\talert('");
      out.print(_res("msg_ttcn10"));
      out.write("');\r\n");
      out.write("\t\t\t\tdm.macvdoannv.focus();\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse if (dm.ngayvaocongdoannv.value !='' && checkDate(dm.ngayvaocongdoannv, true)!='TRUE'){\r\n");
      out.write("\t\t\t\talert('");
      out.print(_res("msg_ttcn6"));
      out.write("');\r\n");
      out.write("\t\t\t\tdm.ngayvaocongdoannv.focus();\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse if (dm.ngayvaocongdoannv.value !='' && dm.macvcongdoannv.value==''){\r\n");
      out.write("\t\t\t\talert('");
      out.print(_res("msg_ttcn11"));
      out.write("');\r\n");
      out.write("\t\t\t\tdm.macvcongdoannv.focus();\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t  \r\n");
      out.write("\t\t\telse{*/\r\n");
      out.write("\t\t\t\tdm.submit();\r\n");
      out.write("\t\t\t//}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
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
