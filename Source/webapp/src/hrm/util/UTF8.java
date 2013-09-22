package hrm.util;

public class UTF8 {
	
	public static String UTF8(String s){
		try{
			String convert = new String(s.getBytes("ISO-8859-1"),"UTF-8");
			return convert;
		}catch(Exception ex){
			ex.printStackTrace();
		     return "error";
		}
	}
	
}
