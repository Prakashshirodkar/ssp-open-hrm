
package hrm.util;

/**
 * <a href="Validator.java.html"><b><i>View Source</i></b></a>
 *
 * @author  lmhuan
 *
 */
public class Validator {

  public static boolean isAddress(String address) {
    if (isNull(address)) {
      return false;
    }

    char[] c = address.toCharArray();

    for (int i = 0; i < c.length; i++) {
      if ( (!isChar(c[i])) &&
          (!isDigit(c[i])) &&
          (!Character.isWhitespace(c[i]))) {

        return false;
      }
    }

    return true;
  }

  public static boolean isChar(char c) {
    return Character.isLetter(c);
  }

  public static boolean isChar(String s) {
    if (isNull(s)) {
      return false;
    }

    char[] c = s.toCharArray();

    for (int i = 0; i < c.length; i++) {
      if (!isChar(c[i])) {
        return false;
      }
    }

    return true;
  }

  public static boolean isCreditCard(String number) {
    return isLUHN(number);
  }

  public static boolean isDigit(char c) {
    int x = (int) c;

    if ( (x >= 48) && (x <= 57)) {
      return true;
    }

    return false;
  }

  public static boolean isDigit(String s) {
    if (isNull(s)) {
      return false;
    }

    char[] c = s.toCharArray();

    for (int i = 0; i < c.length; i++) {
      if (!isDigit(c[i])) {
        return false;
      }
    }

    return true;
  }

  public static boolean isHex(String s) {
    if (isNull(s)) {
      return false;
    }

    return true;
  }

  public static boolean isHTML(String s) {
    if (isNull(s)) {
      return false;
    }

    if ( ( (s.indexOf("<html>") != -1) || (s.indexOf("<HTML>") != -1)) &&
        ( (s.indexOf("</html>") != -1) || (s.indexOf("</HTML>") != -1))) {

      return true;
    }

    return false;
  }

  public static boolean isLUHN(String number) {
    if (number == null) {
      return false;
    }

    number = StringUtil.reverse(number);

    int total = 0;

    for (int i = 0; i < number.length(); i++) {
      int x = 0;

      if ( ( (i + 1) % 2) == 0) {
        x = Integer.parseInt(number.substring(i, i + 1)) * 2;

        if (x >= 10) {
          String s = Integer.toString(x);

          x = Integer.parseInt(s.substring(0, 1)) +
              Integer.parseInt(s.substring(1, 2));
        }
      } else {
        x = Integer.parseInt(number.substring(i, i + 1));
      }

      total = total + x;
    }

    if ( (total % 10) == 0) {
      return true;
    } else {
      return false;
    }
  }

  public static boolean isJulianDate(int month, int day, int year) {
    if ( (month < 0) || (month > 11)) {
      return false;
    }

    int[] months = {
        31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

    if (month == 1) {
      int febMax = 28;

      if ( (year % 100) == 0) {
        febMax = 29;
      }

      if ( (day < 0) || (day > febMax)) {
        return false;
      }
    } else if ( (day < 0) || (day > months[month])) {
      return false;
    }

    return true;
  }

  public static boolean isEmailAddress(String ea) {
    if (isNull(ea)) {
      return false;
    }

    int eaLength = ea.length();

    if (eaLength < 6) {

      return false;
    }

    int at = ea.indexOf('@');

    if ( (at > 24) || (at == -1) || (at == 0) ||
        ( (at <= eaLength) && (at > eaLength - 5))) {

      return false;
    }

    int dot = ea.lastIndexOf('.');

    if ( (dot == -1) || (dot < at) || (dot > eaLength - 3)) {

      return false;
    }

    if (ea.indexOf("..") != -1) {

      return false;
    }

    char[] name = ea.substring(0, at).toCharArray();

    for (int i = 0; i < name.length; i++) {
      if ( (!isChar(name[i])) &&
          (!isDigit(name[i])) &&
          (name[i] != '.') &&
          (name[i] != '-') &&
          (name[i] != '_')) {

        return false;
      }
    }

    if ( (name[0] == '.') || (name[name.length - 1] == '.') ||
        (name[0] == '-') || (name[name.length - 1] == '-') ||
        (name[0] == '_')) { // || (name[name.length - 1] == '_')) {

      return false;
    }

    char[] host = ea.substring(at + 1, ea.length()).toCharArray();

    for (int i = 0; i < host.length; i++) {
      if ( (!isChar(host[i])) &&
          (!isDigit(host[i])) &&
          (host[i] != '.') &&
          (host[i] != '-')) {

        return false;
      }
    }

    if ( (host[0] == '.') || (host[host.length - 1] == '.') ||
        (host[0] == '-') || (host[host.length - 1] == '-')) {

      return false;
    }

    return true;
  }

  public static boolean isValidEmailAddress(String ea) {
    if (isEmailAddress(ea)) {
    }

    return false;
  }

  public static boolean isName(String name) {
    if (isNull(name)) {
      return false;
    }

    char[] c = name.trim().toCharArray();

    for (int i = 0; i < c.length; i++) {
      if ( ( (!isChar(c[i])) &&
            (!Character.isWhitespace(c[i]))) ||
          (c[i] == ',')) {

        return false;
      }
    }

    return true;
  }

  public static boolean isNumber(String number) {
    if (isNull(number)) {
      return false;
    }

    char[] c = number.toCharArray();

    for (int i = 0; i < c.length; i++) {
      if (!isDigit(c[i])) {
        return false;
      }
    }

    return true;
  }

  public static boolean isNull(String s) {
    if (s == null) {
      return true;
    }

    s = s.trim();

    if ( (s.equals(StringPool.NULL)) || (s.equals(StringPool.BLANK))) {
      return true;
    }

    return false;
  }

  public static boolean isNotNull(String s) {
    return!isNull(s);
  }

  public static boolean isPassword(String password) {
    if (isNull(password)) {
      return false;
    }

    if (password.length() < 4) {
      return false;
    }

    char[] c = password.toCharArray();

    for (int i = 0; i < c.length; i++) {
      if ( (!isChar(c[i])) &&
          (!isDigit(c[i]))) {

        return false;
      }
    }

    return true;
  }

}