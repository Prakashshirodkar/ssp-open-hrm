package hrm.util;

/**
 * Insert the type's description here.
 * Creation date: (11/3/00 8:43:41 AM)
 * @author: Administrator
 */
public class SString {
  /**
   * SString constructor comment.
   */
  public SString() {
    super();
  }

  /**
   * Insert the method's description here.
   * Creation date: (4/6/01 9:12:51 AM)
   * @return java.lang.String
   * @param text java.lang.String
   */
  private static String htmlSpace(String text) {
    String temp = new String(text);
    String ret = "";
    int i, j, k;
    int len = temp.length();
    i = 0;
    while (true) {
      j = temp.indexOf("  ", i);
      if (j > 0) {
	k = j;
	while (k < len && temp.charAt(k) == ' ')
	  k++;
	ret += temp.substring(i, j);
	for (int ii = j; ii < k - 1; ii++)
	  ret += "&nbsp;";
	i = k;
      } else {
	ret += temp.substring(i, temp.length());
	break;
      }
    }
    return ret;
  }

  /**
   * Insert the method's description here.
   * Creation date: (2/12/01 3:41:04 PM)
   * @return java.util.Date
   * @param date java.lang.String
   * @param pattern java.lang.String
   * @exception java.lang.Exception The exception description.
   */
  public static java.util.Date parseDate(String date, String pattern) throws java.lang.Exception {
    java.text.SimpleDateFormat df = new java.text.SimpleDateFormat(pattern);
    return df.parse(date);
  }

  /**
   * Replace a substring in a string by a string.
   * Creation date: (11/3/00 8:44:48 AM)
   * @return java.lang.String string after replace.
   * @param source java.lang.String the source string
   * @param from java.lang.String the string that will be replaced
   * @param to java.lang.String the string.
   */
  public static String replace(String source, String from, String to) {
    if (source == null || from == null || to == null)
      return source;
    StringBuffer sb = new StringBuffer();
    int index;
    int i;
    index = 0;
    while (true) {
      i = source.indexOf(from, index);
      if (i < 0) {
	sb.append(source.substring(index, source.length()));
	break;
      } else {
	sb.append(source.substring(index, i));
	sb.append(to);
	index = i + from.length();
      }
    }
    return sb.toString();
  }

  /**
   * Replace a substring MARKED by a specific string in a string by a string.
   * Example: The string "The #marked#bird#marked# is flying" with the mark string
   * is "#marked#" and the replacing string is "dog" will be replaced to "The dog is flying".
   * Creation date: (11/3/00 8:44:48 AM)
   * @return java.lang.String string after replace.
   * @param source java.lang.String the string use to mark the replaced text.
   * @param mark java.lang.String the string that will be replaced
   * @param to java.lang.String the string.
   */
  public static String replaceMark(String source, String mark, String to) {
    if (source == null || mark == null || to == null)
      return source;
    StringBuffer sb = new StringBuffer();
    int index;
    int i, j;
    index = 0;
    while (true) {
      i = source.indexOf(mark, index);
      if (i < 0) {
	sb.append(source.substring(index, source.length()));
	break;
      } else {
	j = source.indexOf(mark, i + mark.length());
	if (j < 0) {
	  sb.append(source.substring(index, source.length()));
	} else {
	  sb.append(source.substring(index, i));
	  sb.append(to);
	  index = j + mark.length();
	}
      }
    }
    return sb.toString();
  }

  /**
   * Insert the method's description here.
   * Creation date: (4/6/01 9:12:51 AM)
   * @return java.lang.String
   * @param text java.lang.String
   */
  private static String textSpace(String text) {
    return replace(text, "&nbsp;", " ");
  }

  /**
   * Insert the method's description here.
   * Creation date: (4/6/01 9:01:49 AM)
   * @return java.lang.String
   * @param text java.lang.String
   */
  public static String toHtml(String text) {
    if (text == null)
      return text;
    String ret = text;
    ret = replace(ret, "<", "&lt;");
    ret = replace(ret, ">", "&gt;");
    ret = replace(ret, "\r\n", "<br>");
    ret = replace(ret, "\n", "<br>");
    ret = replace(ret, "\n", "<br>");
    ret = htmlSpace(ret);
    return ret;
  }

  /**
   * Insert the method's description here.
   * Creation date: (2/12/01 3:46:04 PM)
   * @return java.lang.String
   * @param date java.util.Date
   * @param pattern java.lang.String
   */
  public static String toString(java.util.Date date, String pattern) {
    java.text.SimpleDateFormat df = new java.text.SimpleDateFormat(pattern);
    return df.format(date);
  }

  /**
   * Insert the method's description here.
   * Creation date: (4/6/01 9:01:04 AM)
   * @return java.lang.String
   * @param html java.lang.String
   */
  public static String toText(String html) {
    if (html == null)
      return html;
    String ret = html;
    ret = replace(ret, "<br>", "\r\n");
    ret = replace(ret, "&lt;", "<");
    ret = replace(ret, "&gt;", ">");
    ret = htmlSpace(ret);
    return ret;
  }

  public static String trimWordR(String src, int count) {
    if (src == null)
      return "";
    int idx = count;
    if (count >= src.length())
      return src;
    while (src.charAt(idx) != ' ' && idx > 0)
      idx--;
    if (idx == 0)
      idx = count;
    return src.substring(0, idx) + "...";
  }

  public static String[] parseListParam(String value, String separator) {
    String stmp[] = {};
    if (value == null)
      return new String[0];
    if (separator == null || separator.length() == 0) {
      stmp = new String[1];
      stmp[0] = value;
      return stmp;
    }
    java.util.Vector tmp = new java.util.Vector();
    boolean done = false;
    String s1 = new String(value);
    while (!done) {
      int index = s1.indexOf(separator);
      if (index > 0) {
	String s = s1.substring(0, index);
	tmp.addElement(s);
	s1 = s1.substring(index + separator.length());
	continue;
      } else
      if (index == 0) {
	s1 = s1.substring(index + separator.length());
	continue;
      } else {
	if (s1.length() > 0)
	  tmp.addElement(s1);
	done = true;
      }
    }
    stmp = new String[tmp.size()];
    for (int i = 0; i < stmp.length; i++)
      stmp[i] = (String) tmp.get(i);
    return stmp;
  }

  public static boolean isContain(String[] list, String s) {
    if (list == null || s == null)
      return false;
    for (int i = 0; i < list.length; i++) {
      if (list[i].equals(s)) {
	return true;
      }
    }
    return false;
  }

  public static String getRealfilename(String filename){
     String temp = "";
     if (filename!=null&&filename.length()!=0){
        if (filename.indexOf(java.io.File.separator)>0){
          filename = filename.substring(filename.lastIndexOf(java.io.File.separator)+1,filename.length());
          temp = filename.substring(filename.indexOf("-")+1,filename.length());
        }
        else
          temp = filename.substring(filename.indexOf("-")+1,filename.length());
     }
     if (temp==null||temp.length()==0) temp = filename;
     return temp;
  }

  public static String getFilename(String filename){
     String temp = "";
     if (filename!=null&&filename.length()!=0){
        if (filename.indexOf(java.io.File.separator)>0){
          filename = filename.substring(filename.lastIndexOf(java.io.File.separator)+1,filename.length());
        }
     }
     if (temp==null||temp.length()==0) temp = filename;
     return temp;
  }
 public static String quote(String str){
   String temp="<BLOCKQUOTE dir= \"ltr\"  style= \"PADDING-RIGHT: 0px; PADDING-LEFT: 5px; MARGIN-LEFT: 5px; BORDER-LEFT: #990099 2px solid; MARGIN-RIGHT: 0px\">\n"+
                str+
               "</BLOCKQUOTE>";
  return temp;
 }

}
