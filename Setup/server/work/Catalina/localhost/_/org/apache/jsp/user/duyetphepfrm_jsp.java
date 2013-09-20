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

public final class duyetphepfrm_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_dependants.add("/user/duyetphep.jsp");
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
      out.print(_res("dp.title"));
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
      out.write("\t\t\t\t\t\t<td nowrap width=\"822\" bgcolor=\"#FFFFFF\" valign=\"top\">\r\n");
      out.write("\t\t\t\t\t\t");

	String nam = (request.getParameter("namvalue") != null) ? request.getParameter("namvalue") : "";
	if(nam.equals(""))
		nam = SString.toString(new java.util.Date(), "yyyy");
	java.sql.Connection conn = null;
	//System.out.println(nam);
	int rowcount = 0;
	try{

      out.write("\n");
      out.write("\t<table class=\"tablecontent\" align=\"center\">\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t<td colspan=\"5\"><div id=\"headercontent\" class=\"title\">");
      out.print(_res("dp.title"));
      out.write("</div>  \n");
      out.write("\t\t  \t</td>\n");
      out.write("\t\t</tr>\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t<td>\n");
      out.write("\t\t\t\t<table align=\"center\" width=\"790\" border=\"0\" cellpadding=6 cellspacing=1 style=\"border:1px solid #CCCCCC;\">\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<form name=\"frmview\" action=\"");
      out.print(contextPath);
      out.write("/user/duyetphepfrm.jsp\" method=\"post\">\n");
      out.write("\t\t\t\t\t\t<td align=\"right\" class=\"des\" bgcolor=\"#f8f8f8\">");
      out.print(_res("pn.title"));
      out.write(":</td>\n");
      out.write("\t\t\t\t\t\t<td width=\"8%\" class=\"des\" bgcolor=\"#f8f8f8\">\n");
      out.write("\t\t\t\t\t\t\t<select name=\"namvalue\">\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t");
										
								for(int i=0; i<12; i++){
								String tempnam = String.valueOf(Integer.parseInt(nam)-6+i);
							
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"");
      out.print(tempnam);
      out.write('"');
      out.write(' ');
if(nam.equals(tempnam)){
      out.write(" selected ");
}
      out.write('>');
      out.print(tempnam);
      out.write("</option>\n");
      out.write("\t\t\t\t\t\t\t");
}
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t</select>\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t<td width=\"74%\" class=\"des\" bgcolor=\"#f8f8f8\">&nbsp;<input type=\"submit\" value=\"");
      out.print(_res("cct.submit"));
      out.write("\" /></td>\n");
      out.write("\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t</table>\n");
      out.write("\t\t\t</td>\n");
      out.write("\t\t</tr>\n");
      out.write("\t\t\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t<td>\n");
      out.write("\t\t\t\t<table width=\"790\" align=\"center\" border=\"0\" cellspacing=\"1\" cellpadding=\"2\" bgcolor=\"#007D93\">\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td colspan=\"6\" class=\"title1\">&nbsp;");
      out.print(_res("pn.dangchoduyet"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t<form name=\"frmDuyetphep\" action=\"");
      out.print(contextPath);
      out.write("/user/RegistryController.do\" method=\"post\">\n");
      out.write("\t\t\t\t\t<input type=\"hidden\" name=\"state\" value=\"duyet\">\n");
      out.write("\t\t\t\t\t<input type=\"hidden\" name=\"maso_phieu\">\n");
      out.write("                    <input type=\"hidden\" name=\"songay_duocduyet\">\n");
      out.write("                    <input type=\"hidden\" name=\"trangthaiduyet\">\n");
      out.write("\t\t\t\t\t<tr height=\"24\">\n");
      out.write("\t\t\t\t\t  \t<td width=\"38\" align=\"center\" class=\"des\" bgcolor=\"#f8f8f8\">");
      out.print(_res("pn.stt"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td width=\"166\" align=\"center\" class=\"des\" bgcolor=\"#f8f8f8\">");
      out.print(_res("dp.tennv"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td width=\"140\" align=\"center\" class=\"des\" bgcolor=\"#f8f8f8\">");
      out.print(_res("pn.thoigiannghi"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td width=\"80\" align=\"center\" class=\"des\" bgcolor=\"#f8f8f8\">");
      out.print(_res("pn.songaynghi"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td width=\"268\" align=\"center\" class=\"des\" bgcolor=\"#f8f8f8\">");
      out.print(_res("pn.lydonghi"));
      out.write("</td>\n");
      out.write("                        <td align=\"center\" class=\"des\" bgcolor=\"#f8f8f8\">");
      out.print(_res("pn.thaotac"));
      out.write("</td>\t\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t");

						String strSqlCtpncd = ("select * from WEB_PHEP_CHODUYET('"+username+"', '"+nam+"')");
						conn = dbConnManager.getConnection("topmostread");	
	   	 				java.sql.PreparedStatement st=conn.prepareStatement(strSqlCtpncd);
						ResultSet rs = st.executeQuery();
						//rs = st.executeQuery(strSqlCtpncd);
						int j = 1;
						int l = 0;
						while(rs.next()){
								l++;
						}
						if(l!=0){
						rs = st.executeQuery(strSqlCtpncd);
						while(rs.next()){		
					
      out.write("\t\t\t\n");
      out.write("\t\t\t\t\t<tr height=\"24\" ");
if(j%2==0){out.println("bgcolor='#EEEEEE'");}else{out.println("bgcolor='#FFFFFF'");}
      out.write(">\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#FFF7E7\" class=\"value\">");
      out.print(j++);
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">");
      out.print(rs.getString(1));
      out.write(' ');
      out.write('-');
      out.write(' ');
      out.print(rs.getString(2) );
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">");
      out.print(SString.toString(rs.getDate(5),"dd/MM/yyyy") );
      out.write(' ');
      out.write('-');
      out.write(' ');
      out.print(SString.toString(rs.getDate(6),"dd/MM/yyyy") );
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#FFF7E7\" class=\"value\">");
      out.print(rs.getDouble(7) );
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t");
if(rs.getString(9)==null || rs.getString(9).equals("null")){
      out.write("\n");
      out.write("\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString(9) );
}
      out.write("\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("                        <td align=\"center\" bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("                        \t<a href=\"javascript:submitDuyet('");
      out.print(rs.getString(3));
      out.write('\'');
      out.write(',');
      out.write('\'');
      out.print(rs.getString(8));
      out.write('\'');
      out.write(',');
      out.write('\'');
      out.print(rs.getString(10));
      out.write("');\"><img align=\"absmiddle\" border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/icon_chapnhan.gif\" title=\"");
      out.print(_res("dp.duyet"));
      out.write("\"/></a>\n");
      out.write("                        \t- <a href=\"javascript:showBoxKhongDuyet('");
      out.print(rs.getString(3));
      out.write("');\"><img align=\"absmiddle\" border=\"0\" src=\"");
      out.print(contextPath);
      out.write("/img/icon_tuchoi.gif\" title=\"");
      out.print(_res("dp.khongduyet"));
      out.write("\"/></a>\n");
      out.write("                        </td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t");
}} else {
      out.write("\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#FFF7E7\" class=\"value\">&nbsp;</td>\n");
      out.write("\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\"></td>\n");
      out.write("\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\"></td>\n");
      out.write("\t\t\t\t\t\t<td align=\"center\"bgcolor=\"#FFF7E7\" class=\"value\"></td>\n");
      out.write("\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\"></td>\n");
      out.write("\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\" align=\"center\"></td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t");
}
      out.write("\n");
      out.write("\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t</table>\n");
      out.write("\t\t\t</td>\n");
      out.write("\t\t</tr>\n");
      out.write("        \n");
      out.write("        <tr>\n");
      out.write("        \t<td>\n");
      out.write("            \t<div id=\"khongduyet\" style=\"display:none;\">\n");
      out.write("            \t<form name=\"frmKhongDuyetphep\" action=\"");
      out.print(contextPath);
      out.write("/user/RegistryController.do\" method=\"post\">\n");
      out.write("                \t<input type=\"hidden\" name=\"state\" value=\"khongduyet\">\n");
      out.write("\t\t\t\t\t<input type=\"hidden\" name=\"maso_phieu\">\n");
      out.write("            \t<table align=\"center\" width=\"790\" border=\"0\" cellpadding=6 cellspacing=1 style=\"border:1px solid #CCCCCC;\">\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("                        <td width=\"20%\" align=\"right\" class=\"des\" bgcolor=\"#f8f8f8\">");
      out.print(_res("dp.lydokhongduyet"));
      out.write(":</td></td>\n");
      out.write("                        <td width=\"50%\">\n");
      out.write("                            <textarea name=\"lydokhongduyet\" style=\"width:400px;\" ></textarea>\n");
      out.write("                         </td>\n");
      out.write("                         <td><input type=\"button\" value=\"");
      out.print(_res("dp.khongduyet"));
      out.write("\" onclick=\"javascript:submitKhongduyet();\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("                </form>\n");
      out.write("                </div>\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("\t\t\n");
      out.write("\t\t\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t<td>\n");
      out.write("\t\t\t\t<table width=\"790\" align=\"center\" border=\"0\" cellspacing=\"1\" cellpadding=\"2\" bgcolor=\"#007D93\">\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td colspan=\"6\" class=\"title1\">&nbsp;");
      out.print(_res("pn.khongduyet"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t<form name=\"frmDelete\" action=\"");
      out.print(contextPath);
      out.write("/user/DeleteController.do\" method=\"post\">\n");
      out.write("                        <input type=\"hidden\" name=\"state\" value=\"DeletePn\">\n");
      out.write("                        <input type=\"hidden\" name=\"maso_phieu\">\n");
      out.write("\t\t\t\t\t<tr height=\"24\">\n");
      out.write("\t\t\t\t\t  \t<td width=\"38\" align=\"center\" class=\"des\" bgcolor=\"#f8f8f8\">");
      out.print(_res("pn.stt"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td width=\"166\" align=\"center\" class=\"des\" bgcolor=\"#f8f8f8\">");
      out.print(_res("dp.tennv"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td width=\"140\" align=\"center\" class=\"des\" bgcolor=\"#f8f8f8\">");
      out.print(_res("pn.thoigiannghi"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td width=\"80\" align=\"center\" class=\"des\" bgcolor=\"#f8f8f8\">");
      out.print(_res("pn.songaynghi"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td width=\"134\" align=\"center\" class=\"des\" bgcolor=\"#f8f8f8\">");
      out.print(_res("pn.lydonghi"));
      out.write("</td>\n");
      out.write("                        <td width=\"134\" align=\"center\" class=\"des\" bgcolor=\"#f8f8f8\">");
      out.print(_res("pn.lydokhongduyet"));
      out.write("</td>\n");
      out.write("                        <td class=\"des\" bgcolor=\"#f8f8f8\" align=\"center\">");
      out.print(_res("pn.thaotac"));
      out.write("</td>\t\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t");

						String strSqlPkd = ("select * from WEB_PHEP_KHONGDUYET('"+username+"', '"+nam+"')");
						rs = st.executeQuery(strSqlPkd);
						int r = 1;
						int s = 0;
						while(rs.next()){
								s++;
						}
						if(s!=0){
							rs = st.executeQuery(strSqlPkd);
							while(rs.next()){
					
      out.write("\t\t\t\n");
      out.write("\t\t\t\t\t<tr height=\"24\" ");
if(j%2==0){
      out.write("bgcolor=\"#EEEEEE\"");
}else{
      out.write("bgcolor=\"#FFFFFF\"");
}
      out.write(">\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#FFF7E7\" class=\"value\">");
      out.print(r++);
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">");
      out.print(rs.getString(1));
      out.write(' ');
      out.write('-');
      out.write(' ');
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">");
      out.print(SString.toString(rs.getDate(5),"dd/MM/yyyy") );
      out.write(' ');
      out.write('-');
      out.write(' ');
      out.print(SString.toString(rs.getDate(6),"dd/MM/yyyy") );
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td align=\"center\"bgcolor=\"#FFF7E7\" class=\"value\">");
      out.print(rs.getDouble(7) );
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t");
if(rs.getString(8)==null || rs.getString(8).equals("null")){
      out.write("\n");
      out.write("\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString(8) );
}
      out.write("\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("                        <td bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t");
if(rs.getString(10)==null || rs.getString(10).equals("null")){
      out.write("\n");
      out.write("\t\t\t\t\t\t\t");
} else {
      out.print(rs.getString(10) );
}
      out.write("\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\" align=\"center\">\n");
      out.write("\t\t\t\t\t\t\t<a class=\"links\" href=\"javascript:funcDelete('");
      out.print(rs.getString(3));
      out.write("');\" title=\"");
      out.print(_res("pn.xoatitle"));
      out.write("\">\n");
      out.write("                            \t<img border=\"0\" align=\"absmiddle\" src=\"");
      out.print(contextPath);
      out.write("/img/delete.gif\" />\n");
      out.write("\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t");
}} else {
      out.write("\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#FFF7E7\" class=\"value\">&nbsp;</td>\n");
      out.write("\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\"></td>\n");
      out.write("\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\"></td>\n");
      out.write("\t\t\t\t\t\t<td align=\"center\"bgcolor=\"#FFF7E7\" class=\"value\"></td>\n");
      out.write("\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\"></td>\n");
      out.write("                        <td bgcolor=\"#FFF7E7\" class=\"value\"></td>\n");
      out.write("\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\" align=\"center\">\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t");
}
      out.write("\n");
      out.write("\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t</table>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t</td>\n");
      out.write("\t\t</tr>\n");
      out.write("\t\t\n");
      out.write("\t\t\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t<td>\n");
      out.write("\t\t\t\t<table width=\"790\" align=\"center\" border=\"0\" cellspacing=\"1\" cellpadding=\"2\" bgcolor=\"#007D93\">\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td colspan=\"5\" class=\"title1\">&nbsp;");
      out.print(_res("pn.daduyet"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t<tr height=\"24\">\n");
      out.write("\t\t\t\t\t\t<td width=\"38\" align=\"center\" class=\"des\" bgcolor=\"#f8f8f8\">");
      out.print(_res("pn.stt"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td width=\"166\" align=\"center\" class=\"des\" bgcolor=\"#f8f8f8\">");
      out.print(_res("dp.tennv"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td width=\"140\" align=\"center\" class=\"des\" bgcolor=\"#f8f8f8\">");
      out.print(_res("pn.thoigiannghi"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td width=\"80\" align=\"center\" class=\"des\" bgcolor=\"#f8f8f8\">");
      out.print(_res("pn.songaynghi"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" class=\"des\" bgcolor=\"#f8f8f8\">");
      out.print(_res("pn.lydonghi"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t");

						//java.sql.Statement stctpn=conn.createStatement();
						String strSqlPdd = ("select * from WEB_PHEP_DADUYET('"+username+"', '"+nam+"')");
						int i = 1;
						int k = 0;
						rs = st.executeQuery(strSqlPdd);
						while (rs.next()){
								k++;
						}
						if(k!=0){
							rs = st.executeQuery(strSqlPdd);
							while(rs.next()){
					
      out.write("\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#FFF7E7\" class=\"value\">");
      out.print(i++);
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">");
      out.print(rs.getString(1));
      out.write(' ');
      out.write('-');
      out.write(' ');
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">");
      out.print(SString.toString(rs.getDate(5),"dd/MM/yyyy") );
      out.write(' ');
      out.write('-');
      out.write(' ');
      out.print(SString.toString(rs.getDate(6),"dd/MM/yyyy") );
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td align=\"center\"bgcolor=\"#FFF7E7\" class=\"value\">");
      out.print(rs.getDouble(7) );
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t\t\t\t");
if(rs.getString(8)==null || rs.getString(8).equals("null")){
      out.write("\n");
      out.write("                            ");
} else {
      out.print(rs.getString(8) );
}
      out.write("\n");
      out.write("\t\t\t\t\t\t</td>\t\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t");
}rs.close();
						st.close();} else {
      out.write("\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" bgcolor=\"#FFF7E7\" class=\"value\">&nbsp;</td>\n");
      out.write("\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\"></td>\n");
      out.write("\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\"></td>\n");
      out.write("\t\t\t\t\t\t<td align=\"center\"bgcolor=\"#FFF7E7\" class=\"value\"></td>\n");
      out.write("\t\t\t\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\"></td>\t\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t");
}
      out.write("\n");
      out.write("\t\t\t\t</table>\n");
      out.write("\t\t\t</td>\n");
      out.write("\t\t</tr>\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t<td>&nbsp;</td>\n");
      out.write("\t\t</tr>\n");
      out.write("\t\t\n");
      out.write("\t\t\n");

	}catch(Exception e){
		e.printStackTrace();
	    //out.println(e.getMessage());
	}finally{
		dbConnManager.freeConnection("topmostread", conn);
	}

      out.write("\n");
      out.write("\t</table>\n");
      out.write("\t\n");
      out.write("<script language=\"javascript\">\n");
      out.write("\tfunction funcDelete(value){\n");
      out.write("\t\tvar dm = document.frmDelete;\n");
      out.write("\t\tvar x=window.confirm('");
      out.print(_res("pn.confirmxoa"));
      out.write("');\n");
      out.write("\t\tif(x){\n");
      out.write("\t\t\tdm.maso_phieu.value = value;\n");
      out.write("\t\t\tdm.submit();\n");
      out.write("\t\t}\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\tfunction submitDuyet(value,ngayduyet,trangthaiduyet){\n");
      out.write("\t\tvar dm = document.frmDuyetphep;\n");
      out.write("\t\tdm.maso_phieu.value = value;\n");
      out.write("\t\tdm.songay_duocduyet.value = ngayduyet;\n");
      out.write("\t\tdm.trangthaiduyet.value = trangthaiduyet;\n");
      out.write("\t\tdm.submit();\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\tfunction showBoxKhongDuyet(value){\n");
      out.write("\t\tvar div = document.getElementById(\"khongduyet\");\n");
      out.write("\t\tvar dm = document.frmKhongDuyetphep;\n");
      out.write("\t\tif(div.style.display==\"none\"){\n");
      out.write("\t\t\tdiv.style.display=\"block\";\n");
      out.write("\t\t\tdm.lydokhongduyet.value = \"\";\n");
      out.write("\t\t}\n");
      out.write("\t\telse {\n");
      out.write("\t\t\tdiv.style.display=\"none\"\n");
      out.write("\t\t\tdm.lydokhongduyet.value = \"\";\n");
      out.write("\t\t}\n");
      out.write("\t\tdm.maso_phieu.value = value;\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\tfunction submitKhongduyet(){\n");
      out.write("\t\tvar dm = document.frmKhongDuyetphep;\n");
      out.write("\t\tif(dm.lydokhongduyet.value==\"\"){\n");
      out.write("\t\t\talert(dm.maso_phieu.value);\n");
      out.write("\t\t\talert('");
      out.print(_res("dp.alertkhongduyet"));
      out.write("');\n");
      out.write("\t\t\tdm.lydokhongduyet.focus();\n");
      out.write("\t\t}\n");
      out.write("\t\tdm.submit();\n");
      out.write("\t}\n");
      out.write("</script>\n");
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
