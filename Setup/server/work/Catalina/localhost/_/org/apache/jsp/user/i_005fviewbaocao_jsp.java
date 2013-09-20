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

public final class i_005fviewbaocao_jsp extends org.apache.jasper.runtime.HttpJspBase
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

	String listParamName = request.getParameter("listParamName");
	String report_id = request.getParameter("report_id");
	String listParamValue = request.getParameter("listParamValue");
	java.sql.Connection conn = null;
	String strSqlSelect = "";
	String strSqlSelect1 = "select report_name, sqlselect from web_danhsach_baocao('"+username+"','"+language+"') where reportid='"+report_id+"'";
	String strNameReport = "";
	//String strSqlParamName = "select sys_report_caption.column_id,sys_report_caption.column_caption, sys_report_caption.column_width, sys_report_caption.column_format,sys_report_caption.column_group from sys_report_caption where reportid='"+report_id+"' AND ((sys_report_caption.column_group=1) or(sys_report_caption.invisible IS NULL) or (sys_report_caption.invisible=0)) order by sys_report_caption.column_index asc";
	String strSqlParamName = "select * from web_report_caption('"+report_id+"','"+language+"') where (column_group=1 or invisible IS NULL or invisible=0) order by column_index asc";
	try{
	    conn = dbConnManager.getConnection("topmostread");
		java.sql.PreparedStatement st=conn.prepareStatement(strSqlParamName);
		ResultSet rs = st.executeQuery();
		int intCount = 0;
		while(rs.next()){
			intCount ++;
		}

      out.write("\n");
      out.write("\t<table width=\"100%\" align=\"center\" border=\"0\" cellspacing=\"1\" cellpadding=\"2\" bgcolor=\"#007D93\" >\n");
      out.write("\t\t<tr height=\"25px\">\n");
      out.write("\t\t");

			String listFieldName="";
			String listColumn_Format="";
			String listColumn_Gourp="";
			int intColumnGourp=0;
			rs = st.executeQuery(strSqlParamName);
			int intWidth = 0;
			while (rs.next()){
				if(rs.getInt(5)==1)
					intColumnGourp=intColumnGourp+1;
				intWidth = rs.getInt(3);
				listColumn_Format = listColumn_Format + rs.getString(4) + "<!*-*!>";
				listFieldName = listFieldName + rs.getString(1) + "<!*-*!>";
				listColumn_Gourp = listColumn_Gourp + rs.getInt(5) + "<!*-*!>";
				if(rs.getInt(5)!=1){
		
      out.write("\n");
      out.write("\t\t\t<td class=\"des\" bgcolor=\"#f8f8f8\" style=\"font-weight:bold;\" align=\"center\" width=\"");
      out.print(intWidth*1.2);
      out.write("\" nowrap >");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("\t\t");

				}
			}//System.out.println("intColumnGourp: " + intColumnGourp);
		
      out.write("\n");
      out.write("\t\t</tr>\n");
      out.write("\t\t\n");
      out.write("\t");
	
		
		rs=st.executeQuery(strSqlSelect1);
		if(rs.next()){
			strSqlSelect = rs.getString(2);
			strNameReport = rs.getString(1);
		}
		//System.out.println(strSqlSelect);
		String[] arrListParamName = SString.parseListParam(listParamName, "<!*-*!>");
		String[] arrListParamValue = SString.parseListParam(listParamValue, "<!*-*!>");
		String[] arrListColumn_Format = SString.parseListParam(listColumn_Format, "<!*-*!>");
		String[] arrListColumn_Gourp = SString.parseListParam(listColumn_Gourp, "<!*-*!>");
		String listIndexColumnDate = "";
		//System.out.println(listFieldName);
		for(int k = 0; k < arrListParamName.length; k++){
			strSqlSelect = strSqlSelect.replaceAll(":"+arrListParamName[k],"'"+arrListParamValue[k]+"'");
		} 
		int index = 0;
		for(int p = 0; p < arrListColumn_Format.length ; p++){
			if(arrListColumn_Format[p].equals("DATE")){
				//index = p + 1;
				listIndexColumnDate = listIndexColumnDate + p + "<!*-*!>";
			}
		}
		//System.out.println(listColumn_Gourp);
		//System.out.println(listIndexColumnDate);
		strSqlSelect = strSqlSelect.replaceAll("'null'","null");
		strSqlSelect = strSqlSelect.replaceAll("'true'","'1'");
		strSqlSelect = strSqlSelect.replaceAll("'false'","'0'");
		strSqlSelect = strSqlSelect.replaceAll(":user_name","'"+useraccid+"'");
		strSqlSelect = strSqlSelect.replaceAll(":User_name","'"+useraccid+"'");
		strSqlSelect = strSqlSelect.replaceAll(":USER_NAME","'"+useraccid+"'");
		/*
		rs = st.executeQuery(strSqlSelect);
		ResultSetMetaData rsMetaData = rs.getMetaData();
		int numberOfColumns = rsMetaData.getColumnCount();
		*/
		//System.out.println(strSqlSelect);
		String[] arrListIndexColumnDate = SString.parseListParam(listIndexColumnDate,"<!*-*!>");
		String[] arrListFieldName = SString.parseListParam(listFieldName,"<!*-*!>");
		int intRowCount = 0;
		rs = st.executeQuery(strSqlSelect);
		while (rs.next()){
			intRowCount ++;
		} 
		int temp = intCount-intColumnGourp;
		//System.out.println(strSqlSelect);
		if(intRowCount!=0){
			String strColumn_Format = "";
			String strTempNameDonvi = "";
			java.util.Date dateValue; 
			rs = st.executeQuery(strSqlSelect);
			while(rs.next()){
				if(intColumnGourp!=0){
					for(int n = 0; n < arrListFieldName.length; n++){
						strColumn_Format = arrListColumn_Format[n];
						if(arrListColumn_Gourp[n].equals("1") ){
						//System.out.println(rs.getString(arrListFieldName[n]));
							if(!strTempNameDonvi.equals(rs.getString(arrListFieldName[n]))){ 
								if(rs.getString(arrListFieldName[n])!=null){
	
      out.write("\n");
      out.write("\t\t<tr valign=\"top\">\n");
      out.write("\t\t\t<td valign=\"top\" class=\"des\" bgcolor=\"#f8f8f8\" colspan=\"");
      out.print(intCount-intColumnGourp);
      out.write("\">\n");
      out.write("\t\t\t\t\t\t\t\t\t");
if(arrListColumn_Format[n].equals("DATE")){
      out.write("\n");
      out.write("\t\t\t\t");
      out.print(SString.toString(rs.getDate(arrListFieldName[n]),"dd/MM/yyyy"));
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t");
} else {
      out.write("\n");
      out.write("\t\t\t\t");
      out.print(rs.getString(arrListFieldName[n]));
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}
      out.write("\n");
      out.write("\t\t\t</td>\n");
      out.write("\t\t</tr>\n");
      out.write("\t");

								} 
							}
							if(rs.getString(arrListFieldName[n])!=null)
								strTempNameDonvi=rs.getString(arrListFieldName[n]);
						}
					}
				}
	
      out.write("\n");
      out.write("\t\t<tr>\n");
      out.write("\t");

				for(int n = 0; n < arrListFieldName.length; n++){ 
					strColumn_Format = arrListColumn_Format[n];
					if(arrListColumn_Gourp[n].equals("0")){		
	
      out.write("\n");
      out.write("\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">\n");
      out.write("\t\t\t\t");

						if(!(rs.getString(arrListFieldName[n])==null || rs.getString(arrListFieldName[n]).equals("null"))){
							if(arrListColumn_Format[n].equals("DATE")){							
				
      out.write("\t\n");
      out.write("\t\t\t\t<center>");
      out.print(SString.toString(rs.getDate(arrListFieldName[n]),"dd/MM/yyyy"));
      out.write("</center>\n");
      out.write("\t\t\t\t");

							} else if(arrListColumn_Format[n].equals("CHECK")){
								if(rs.getInt(arrListFieldName[n])==1){
				
      out.write("\n");
      out.write("\t\t\t\t<center>X</center>\n");
      out.write("\t\t\t\t");

								}
							} else if(arrListColumn_Format[n].equals("TIME")){
				
      out.write("\n");
      out.write("\t\t\t\t<center>");
      out.print(rs.getTime(arrListFieldName[n]));
      out.write("</center>\n");
      out.write("\t\t\t\t");

							} else if(rs.getString(arrListFieldName[n]).equals("Ná»¯")){
				
      out.write("\n");
      out.write("\t\t\t\t&nbsp;");
      out.print(UTF8.UTF8(rs.getString(arrListFieldName[n])));
      out.write("\n");
      out.write("\t\t\t\t");

							} else {
				
      out.write("\n");
      out.write("\t\t\t\t&nbsp;");
      out.print(rs.getString(arrListFieldName[n]));
      out.write("\n");
      out.write("\t\t\t\t");

							}
						}
				
      out.write("\n");
      out.write("\t\t\t</td>\n");
      out.write("\t");

					}
				}
	
      out.write("\n");
      out.write("\t\t</tr>\n");
      out.write("\t");

			}
		} else {
	
      out.write("\n");
      out.write("    \t<tr>\n");
      out.write("\t");

			for(int n = 0; n < arrListFieldName.length; n++){ 
				if(arrListColumn_Gourp[n].equals("0")){	
	
      out.write("\n");
      out.write("\t\t\t<td bgcolor=\"#FFF7E7\" class=\"value\">&nbsp;</td>\n");
      out.write("\t");

				}
			}
	
      out.write("\n");
      out.write("\t\t</tr>\n");
      out.write("\t");

		}
		rs.close(); st.close();
	
      out.write("\n");
      out.write("\t</table>\n");

	}catch(Exception e){
		e.printStackTrace();
	    System.out.println(e.getMessage());
	}finally{
		dbConnManager.freeConnection("topmostread", conn);
	}

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
