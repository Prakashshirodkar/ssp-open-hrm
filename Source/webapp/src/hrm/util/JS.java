package hrm.util;

import java.net.URLDecoder;
import java.net.URLEncoder;

import org.apache.oro.text.perl.Perl5Util;

/**
 * <a href="JS.java.html"><b><i>View Source</i></b></a>
 * @author  lmhuan
 *
 */
public class JS {

  public static String escape(String s) {

    // Encode URL

    try {
      s = URLEncoder.encode(s,"UTF-8");
      //s = URLEncoder.encode(s);
    } catch (Exception e) {
    }

    // Adjust for JavaScript specific annoyances

    s = StringUtil.replace(s, "+", "%20");
    s = StringUtil.replace(s, "%2B", "+");

    return s;
  }

  public static String unescape(String s) {
    Perl5Util util = new Perl5Util();

    // Get rid of all unicode

    s = util.substitute("s/%u[0-9a-fA-F]{4}//g", s);

    // Adjust for JavaScript specific annoyances

    s = StringUtil.replace(s, "+", "%2B");
    s = StringUtil.replace(s, "%20", "+");

    // Decode URL

    try {
      s = URLDecoder.decode(s,"UTF-8");
      //s = URLDecoder.decode(s);
    } catch (Exception e) {
    }
    //System.out.println("[S]"+s);
    return s;
  }

}
