package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.io.*;
import hrm.util.*;
import hrm.model.*;
import java.lang.String.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


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
    _jspx_dependants = new java.util.ArrayList(3);
    _jspx_dependants.add("/standard.jsp");
    _jspx_dependants.add("/user/resource.inc");
    _jspx_dependants.add("/footer.jsp");
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
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>");
      out.print(_res("login.submit"));
      out.write("</title>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body topmargin=\"0\" leftmargin=\"0\" background=\"img/bg.png\">\r\n");
      out.write("\r\n");
      out.write("<div align=\"center\">\r\n");
      out.write("\t<table border=\"0\" width=\"1000\" cellspacing=\"0\" cellpadding=\"0\" background=\"img/bg-page.gif\">\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td height=\"97\" valign=\"bottom\" background=\"img/bg-top.gif\">\r\n");
      out.write("\t\t\t<div align=\"left\">\r\n");
      out.write("\t\t\t\t<object classid=\"clsid:D27CDB6E-AE6D-11CF-96B8-444553540000\" id=\"obj1\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0\" border=\"0\" width=\"579\" height=\"100\">\r\n");
      out.write("\t\t\t\t\t<param name=\"movie\" value=\"img/ssp_kysuufinal.swf\">\r\n");
      out.write("\t\t\t\t\t<param name=\"quality\" value=\"High\">\r\n");
      out.write("\t\t\t\t\t<embed src=\"img/ssp_kysuufinal.swf\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" type=\"application/x-shockwave-flash\" name=\"obj1\" width=\"579\" height=\"100\" quality=\"High\"></object>\r\n");
      out.write("\t\t\t\t<table border=\"0\" width=\"1000\" cellspacing=\"0\" background=\"img/top-nav-off.gif\" cellpadding=\"0\">\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\" nowrap height=\"28\"></td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td width=\"1000\" height=\"350\" nowrap valign=\"top\">\r\n");
      out.write("\t\t\t\t<table align=\"center\" border=\"0\" width=\"998\" cellspacing=\"0\" cellpadding=\"0\" height=\"100%\">\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td width=\"100%\" nowrap bgcolor=\"#FFFFFF\" align=\"center\" valign=\"middle\">\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t <form action=\"LoginController.do\" name=\"frmLogin\">\r\n");
      out.write("\t\t\t\t\t\t\t<table cellpadding=5 cellspacing=0 align=\"center\" width=\"350\" background=\"img/bg-left.gif\" style=\"border:1px solid #CCCCCC;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr height=\"22px\"> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td colspan=\"2\" align=\"center\" style=\"font-weight:bold; color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:12;\" bgcolor=\"#007D93\"><span class=\"style1\">");
      out.print(_res("login.title"));
      out.write(" </span></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\" colspan=\"2\">\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<font color=\"red\">");
if(cm.equals("fail")){
      out.print(_res("msg_loginerror"));
}
      out.write("</font>&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"right\" height=\"30\" class=\"des\">");
      out.print(_res("login.user"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td height=\"30\">&nbsp; <input type=\"text\" name=\"username\" size=\"20\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"right\" height=\"30\" class=\"des\">");
      out.print(_res("login.pass"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td height=\"30\">&nbsp; <input type=\"password\" name=\"pass\" size=\"20\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td colspan=\"2\" align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"submit\" value=\"");
      out.print(_res("login.submit") );
      out.write("\" name=\"login\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t\t<p>&nbsp;<br>\r\n");
      out.write("&nbsp;<br>\r\n");
      out.write("&nbsp;</p>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
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
      out.write("</html>\r\n");
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
