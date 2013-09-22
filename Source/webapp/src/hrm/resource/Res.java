package hrm.resource;

import java.util.*;
import hrm.util.*;
import javax.servlet.http.HttpSession;
public class Res {
  ResourceBundle rs = null;
  public static String RESOURCE = "hrm/resource/MessagesBundle";
  public Res(java.util.Locale locale){
    rs = ResourceBundle.getBundle(RESOURCE, locale);
  }

  public Res(String language){
    if (language == null)
      language = "vi";
    java.util.Locale locale = new java.util.Locale(language, "");
    rs = ResourceBundle.getBundle(RESOURCE, locale);
  }

  public String _res(String key) {
    try {
      return new String(rs.getString(key).getBytes("ISO-8859-1"), "UTF-8");
    } catch (Exception ex) {
      System.out.print(ex);
      return key;
    }
  }

  public String _res(String key, Object[] values, boolean enableFormat){
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

  public String getRourceByKeyandParameter(String key,String[] paramArr) {
   try {
     String content= new String(rs.getString(key).getBytes("ISO-8859-1"), "UTF-8");
     for(int i=0;i<paramArr.length;i++){
        content=content.replaceAll("%%PARAM"+(i+1)+"%%",paramArr[i]);
     }
     return content;
   } catch (Exception ex) {
     System.out.print(ex);
     return key;
   }
 }


  public static String _res(String key, Locale locale) {
    return new Res(locale)._res(key);
  }

  public static String _res(String key, String language) {
    return new Res(language)._res(key);
  }

}
