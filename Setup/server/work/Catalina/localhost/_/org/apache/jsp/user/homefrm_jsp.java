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

public final class homefrm_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_dependants.add("/user/home.jsp");
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
      out.print(_res("new.title"));
      out.write("</title>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body topmargin=\"0\" leftmargin=\"0\" background=\"");
      out.print(contextPath);
      out.write("/img/bg.png\" style=\"background-attachment: fixed\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<table align=\"center\" border=\"0\" width=\"1000\" cellspacing=\"0\" cellpadding=\"0\" background=\"");
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
      out.write("\r\n");
      out.write("\t\t\t");

					java.sql.Connection conn = null;
			       	//String sqlnews = ("select first 1 * from hr_web_tintuc order by hr_web_tintuc.tin_ngaydang desc");
					String stSqlNews = ("select first ? skip ? * from hr_web_tintuc order by hr_web_tintuc.tin_ngaydang desc, hr_web_tintuc.tin_giodang desc");
					int record = 1; // Tong so Record
					int currentRecord; // So thu tu cua Record
					int cPage; // Tong so Page
					int currentPage; // So Page hien tai
					int sizePage = 10; // So Record se hien thi trong 1 Page	
					String pageID; // Link cua trang
				
					try{
						 conn = dbConnManager.getConnection("topmostread");	
						//java.sql.Statement st=conn.createStatement();
						java.sql.PreparedStatement st=conn.prepareStatement(stSqlNews,ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
						st.setInt(1,1);
						st.setInt(2,0);
						//ResultSet rsnews = st.executeQuery(sqlnews);
						ResultSet rs = st.executeQuery();
						String noidung = "";
				
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<table class=\"tablecontent\" align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td colspan=\"2\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div id=\"headercontent\" class=\"title\">");
      out.print(_res("new.title"));
      out.write("</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td colspan=\"2\" class=\"title1\">&nbsp;");
      out.print(_res("new.title1"));
      out.write("  </td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td colspan=\"2\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<table width=\"96%\" align=\"center\" border=\"0\" cellspacing=\"1\" cellpadding=\"2\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr><td colspan=\"2\">&nbsp;</td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");

											//while(rsnews.next()){
												if (rs.next()){
												if(rs.getBlob(4)==null || rs.getBlob(4).equals("null")){
													noidung = "";
												}
												else {
													byte[] b = rs.getBlob(4).getBytes(1, (int)rs.getBlob(4).length());
													noidung = new String(b);
												}
										
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"2\" class=\"style2\">");
      out.print(rs.getString(2));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr><td colspan=\"2\">&nbsp;</td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"2\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t");
if(rs.getString(7) == null || rs.getString(7).equals("null")){
} else {
      out.print(rs.getString(7));
      out.write(' ');
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr><td colspan=\"2\">&nbsp;</td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td class=\"style4\">");
      out.print(_res("new.ngaydang"));
      out.print(SString.toString(rs.getDate(5),"dd/MM/yyyy"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"right\" class=\"style4\">");
      out.print(_res("new.nguoidang"));
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t");
if(rs.getString(6)==null || rs.getString(6).equals("null")){
} else {
      out.write("<strong>");
      out.print(rs.getString(6));
      out.write("</strong>");
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t");
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr><td colspan=\"2\">&nbsp;</td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td height=\"25\" colspan=\"2\" bgcolor=\"#007D93\" class=\"title1\">&nbsp;");
      out.print(_res("new.title2"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<table width=\"96%\" align=\"center\" border=\"0\" cellspacing=\"1\" cellpadding=\"2\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");

											st.setInt(1,5);
											st.setInt(2,1);
											rs=st.executeQuery();
											int i = 1;
											while(rs.next()){
										
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr ");
if(i%2==0){
      out.write("bgcolor=\"#EEEEEE\"");
}else{
      out.write("bgcolor=\"#FFFFFF\"");
}
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"2\"><a class=\"links\" href=\"");
      out.print(contextPath);
      out.write("/user/viewtintucfrm.jsp?tintucid=");
      out.print(rs.getString(1));
      out.write('"');
      out.write('>');
      out.print(rs.getString(2));
      out.write("</a></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr ");
if(i%2==0){
      out.write("bgcolor=\"#EEEEEE\"");
}else{
      out.write("bgcolor=\"#FFFFFF\"");
}
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"2\" class=\"value\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t");
if(rs.getString(3)==null || rs.getString(3).equals("null")){
} else {
      out.print(rs.getString(3));
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr ");
if(i%2==0){
      out.write("bgcolor=\"#EEEEEE\"");
}else{
      out.write("bgcolor=\"#FFFFFF\"");
}
      out.write(">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td class=\"style4\" colspan=\"2\">");
      out.print(_res("new.ngaydang"));
      out.print(SString.toString(rs.getDate(5),"dd/MM/yyyy"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr><td colspan=\"2\">&nbsp;</td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");
i++;
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</table\r\n");
      out.write("\t\t\t\t\t\t\t\t\t></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td height=\"25\" colspan=\"2\" bgcolor=\"#007D93\" class=\"title1\">&nbsp;");
      out.print(_res("new.title3"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr><td>\r\n");
      out.write("\t\t\t\t\t\t\t\t");

									String sqlnewsall = ("select skip 6 * from hr_web_tintuc order by hr_web_tintuc.tin_ngaydang desc, hr_web_tintuc.tin_giodang desc");
									rs = st.executeQuery(sqlnewsall);
									while(rs.next()){
										record++;
									}
									cPage = (record/sizePage) + (record%sizePage==0?0:1);
									int cpage;
									int currentRs;
									pageID = request.getParameter("pageID");
									currentPage = (pageID==null) ? 1 : Integer.parseInt((String)pageID);
									rs = st.executeQuery(sqlnewsall);
									if(currentPage!=1) {
										currentRecord = sizePage*(currentPage-1);
										currentRecord = currentRecord==0 ? 1 : currentRecord;
										rs.absolute(currentRecord);
									}
									while(rs.next()){
									if(rs.getRow() <= sizePage*currentPage) {
								
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li style=\"margin-left:15px;\"><a class=\"links\" href=\"");
      out.print(contextPath);
      out.write("/user/viewtintucfrm.jsp?tintucid=");
      out.print(rs.getString(1));
      out.write('"');
      out.write('>');
      out.print(rs.getString(2));
      out.write(' ');
      out.write('(');
      out.print(SString.toString(rs.getDate(5),"dd/MM"));
      out.write(")</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t");
}}rs.close();st.close();
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"right\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<hr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");
if(currentPage!=1){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a style=\"font-family:Arial, Helvetica, sans-serif; color:#0066FF\" href=\"");
out.print(contextPath+"/user/homefrm.jsp?cm=tintuc&pageID="+ "1");
      out.write('"');
      out.write('>');
      out.print(_res("new.first"));
      out.write("</a> | \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a style=\"font-family:Arial, Helvetica, sans-serif\" href=\"");
out.print(contextPath+"/user/homefrm.jsp?cm=tintuc&pageID="+ (currentPage-1==0?1:currentPage-1));
      out.write("\"><img border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/left-arrow.gif\" /></a> | \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");
}
											int last = 0;											
											for(int z=1; z <= cPage ; z++) {
												last ++;
												if(currentPage==z){
												out.println("<a style=text-decoration:none;color:#000000;  href="+contextPath+"/user/homefrm.jsp?cm=tintuc&pageID=" + z + ">"+ z +"</a>&nbsp;|&nbsp;");
												}
												else
												out.println("<a style=color:#0066FF; href="+contextPath+"/user/homefrm.jsp?cm=tintuc&pageID=" + z + ">"+ z +"</a>&nbsp;|&nbsp;");
											}			
											if(currentPage!=last){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a style=\"font-family:Arial, Helvetica, sans-serif; \" href=\"");
out.print(contextPath+"/user/homefrm.jsp?cm=tintuc&pageID="+ (currentPage+1>=cPage?cPage:currentPage+1));
      out.write("\"><img border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/right-arrow.gif\" /></a> | \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a style=\"font-family:Arial, Helvetica, sans-serif; color:#0066FF\" href=\"");
out.print(contextPath+"/user/homefrm.jsp?cm=tintuc&pageID="+ cPage);
      out.write('"');
      out.write('>');
      out.print(_res("new.last"));
      out.write("</a> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");
}
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr><td colspan=\"2\">&nbsp;</td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t</table>\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t");

					}catch(Exception e){
						//e.printStackTrace();
	      				//out.println(e.getMessage());
	      				System.out.print("HRM0001:"+e.getMessage());
					}finally{
						dbConnManager.freeConnection("topmostread", conn);
				}
      out.write("\t\r\n");
      out.write("\t\t\t");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t</table>\t\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t\t");
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
      out.write("\r\n");
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
