package hrm.util;

import java.util.*;
//import com.ssp.stm.dbobj.Lichnghi;
/**
 * Insert the type's description here.
 * Creation date: (2/2/2002 11:54:56 AM)
 * @author: Administrator
 */
public class DateUtil {
  public static String DBTIMESTAMP = "yyyy-MM-dd HH:mm:ss.SSS";
  public static String DBDATE = "yyyy-MM-dd";
  public static String DBDATENGAY="dd.MM.yyyy";
  private static int[] lichnghi;


  /**
   * DateUtil constructor comment.
   */
  public DateUtil() {
    super();
  }

  /**
   * Insert the method's description here.
   * Creation date: (2/2/2002 11:57:36 AM)
   * @return java.util.Date
   * @param date java.util.Date
   */
  public static java.util.Date toEndTime(java.util.Date date) {
    GregorianCalendar gc = new GregorianCalendar();
    gc.setTime(date);
    gc.set(Calendar.HOUR_OF_DAY, 23);
    gc.set(Calendar.MINUTE, 59);
    gc.set(Calendar.SECOND, 59);
    return gc.getTime();
  }

  /**
   * Insert the method's description here.
   * Creation date: (2/2/2002 11:57:36 AM)
   * @return java.util.Date
   * @param date java.util.Date
   */
  public static java.util.Date toStartTime(java.util.Date date) {
    GregorianCalendar gc = new GregorianCalendar();
    gc.setTime(date);
    gc.set(Calendar.HOUR_OF_DAY, 0);
    gc.set(Calendar.MINUTE, 0);
    gc.set(Calendar.SECOND, 0);
    return gc.getTime();
  }

  /**
   * Creation date: (2/12/01 3:46:04 PM)
   * @return java.lang.String
   * @param date java.util.Date
   * @param pattern java.lang.String
   */
  public static String toString(java.util.Date date, String pattern) {
    if(pattern == null)
      pattern = DBTIMESTAMP;
    java.text.SimpleDateFormat df = new java.text.SimpleDateFormat(pattern);
    return df.format(date);
  }

  /**
   * Creation date: (2/12/01 3:41:04 PM)
   * @return java.util.Date
   * @param date java.lang.String
   * @param pattern java.lang.String
   * @exception java.lang.Exception The exception description.
   */
  public static java.util.Date parseDate(String date, String pattern) throws java.lang.Exception {
    if(pattern == null)
      pattern = DBTIMESTAMP;
    java.text.SimpleDateFormat df = new java.text.SimpleDateFormat(pattern);
    return df.parse(date);
  }

  public static java.util.Date parseDate(String date) throws java.lang.Exception {
    return parseDate(date, DBTIMESTAMP);
  }
  public static String toString(java.util.Date date){
    return toString(date, DBTIMESTAMP);
  }
  public static Date getEndDate(Date fromDate, int duration) {
    if (fromDate == null) {
      fromDate = new Date();
    }
    Calendar cal = Calendar.getInstance();
    cal.setTime(fromDate);
    switch (duration) {
      case 1:
        cal.add(Calendar.DATE, 1);
        break;
      case 2:
        cal.add(Calendar.DATE, 4);
        break;
      case 3:
        cal.add(Calendar.DATE, 7);
        break;
      case 4:
        cal.add(Calendar.DATE, 14);
        break;
      case 5:
        cal.add(Calendar.MONTH, 1);
        break;
      case 6:
        cal.add(Calendar.MONTH, 2);
        break;
      case 7:
        cal.add(Calendar.MONTH, 3);
        break;
      case 8:
        cal.add(Calendar.MONTH, 6);
        break;
      case 9:
        cal.add(Calendar.YEAR, 1);
        break;
    }
    return cal.getTime();
  }

  public static Date getStartDate(Date fromDate, int duration) {
    if (fromDate == null) {
      fromDate = new Date();
    }
    Calendar cal = Calendar.getInstance();
    cal.setTime(fromDate);
    switch (duration) {
      case 1:
        cal.add(Calendar.DATE, -1);
        break;
      case 2:
        cal.add(Calendar.DATE, -4);
        break;
      case 3:
        cal.add(Calendar.DATE, -7);
        break;
      case 4:
        cal.add(Calendar.DATE, -14);
        break;
      case 5:
        cal.add(Calendar.MONTH, -1);
        break;
      case 6:
        cal.add(Calendar.MONTH, -2);
        break;
      case 7:
        cal.add(Calendar.MONTH, -3);
        break;
      case 8:
        cal.add(Calendar.MONTH, -6);
        break;
      case 9:
        cal.add(Calendar.YEAR, -1);
        break;
    }
    return cal.getTime();
  }

  public static int getElapsedHours(Calendar startTime, Calendar endTime){
    int elapsed = 0;
    Calendar gc1, gc2;

    if (endTime.after(startTime)) {
      gc2 = (Calendar) endTime.clone();
      gc1 = (Calendar) startTime.clone();
    } else {
      gc2 = (Calendar) startTime.clone();
      gc1 = (Calendar) endTime.clone();
    }

    gc1.clear(Calendar.MILLISECOND);
    gc1.clear(Calendar.SECOND);
    gc1.clear(Calendar.MINUTE);

    gc2.clear(Calendar.MILLISECOND);
    gc2.clear(Calendar.SECOND);
    gc2.clear(Calendar.MINUTE);

    while (gc1.before(gc2)) {
      gc1.add(Calendar.HOUR_OF_DAY, 1);
      elapsed++;
    }
    return elapsed;
  }

  public static int getElapsedDays(Calendar startTime, Calendar endTime){
    int elapsed = 0;
    Calendar gc1, gc2;

    if (endTime.after(startTime)) {
      gc2 = (Calendar) endTime.clone();
      gc1 = (Calendar) startTime.clone();
    } else {
      gc2 = (Calendar) startTime.clone();
      gc1 = (Calendar) endTime.clone();
    }

    gc1.clear(Calendar.MILLISECOND);
    gc1.clear(Calendar.SECOND);
    gc1.clear(Calendar.MINUTE);
    gc1.clear(Calendar.HOUR);

    gc2.clear(Calendar.MILLISECOND);
    gc2.clear(Calendar.SECOND);
    gc2.clear(Calendar.MINUTE);
    gc2.clear(Calendar.HOUR);

    while (gc1.before(gc2)) {
      gc1.add(Calendar.DATE, 1);
      elapsed++;
    }
    return elapsed;
  }
/*
  public int getLamviecHours(int tongsogio,int tongsongay){
    if (tongsongay > 7)
      return (tongsongay/7)*getHoursHanhchanh() + getHoursLamviecTrongTuan(tongsogio - (tongsongay/7)*7*24);
    else
      return getHoursLamviecTrongTuan(tongsogio);
  }

  public int getHoursLamviecTrongTuan(int tongsogio){
    if (tongsogio <= 8 )
      return tongsogio;
    if (tongsogio > 120)
      return getHoursHanhchanh();
    else{
      if (tongsogio > 24)
        if ( (tongsogio % 24) <= 8)
          return 8 * (tongsogio / 24) + (tongsogio % 24);
        else
          return 8 * (tongsogio / 24 + 1);
      return 8;
    }
  }
*/
  public static Date getNgayDautuan(Date date){
    if (date!=null){
      Calendar ngayHT = Calendar.getInstance();
      ngayHT.setTime(date);
      int HienTai = ngayHT.get(Calendar.DAY_OF_WEEK);
      ngayHT.add(Calendar.DATE, - (HienTai - 1));
      return ngayHT.getTime();
    }
    return new Date();
  }

  public static Date getNgayCuoituan(Date date){
    if (date!=null){
      Calendar ngayHT = Calendar.getInstance();
      ngayHT.setTime(date);
      int HienTai = ngayHT.get(Calendar.DAY_OF_WEEK);
      ngayHT.add(Calendar.DATE, - (HienTai - 1));
      ngayHT.add(Calendar.DATE,6);
      return ngayHT.getTime();
    }
    return new Date();
  }

  public static Date getNgayCuoithang(Date date){
    if (date!=null){
      Calendar ngayHT = Calendar.getInstance();
      ngayHT.setTime(date);
      ngayHT.add(Calendar.MONTH,1);
      ngayHT.add(Calendar.DATE,-(date.getDate()));
      return ngayHT.getTime();
    }
    return new Date();
  }


  public static Date getNgayDauthang(Date date){
    if (date!=null){
       date.setDate(1);
       return date;
    }
    return new Date();
  }

  //Lay ve tong so gio hanh chanh ung voi database cua tung cong ty
  //Co the la 44 gio hoac 48 gio hoac co the hon
  /*public static int getHoursHanhchanh(){
    try{
      Lichnghi lichnghi = new Lichnghi();
      return (int)lichnghi.sum(lichnghi.SOGIOLAMVIEC);
    }
    catch (Exception e){}
    return 0;
  }*/
/*
  public int getRealElapsedDays(Calendar startTime, Calendar endTime){
    int hours = getElapsedHours(startTime,endTime);
    int days = getElapsedDays(startTime,endTime);
    return getLamviecHours(hours,days)/8;
  }

  public int getNumdayWorking(Calendar ca, Calendar ca1) {
    if(lichnghi == null){
      lichnghi = new int[7];
      try {
        Lichnghi nghi = new Lichnghi();
        ArrayList arr = nghi.searchAndRetrieveList(nghi.NGAY);
        for (int i = 0; i < arr.size(); i++) {
          lichnghi[i] = ( (Lichnghi) arr.get(i)).getFieldInt(nghi.SOGIOLAMVIEC);
        }
      } catch (Exception ex) {
        System.out.println("Cannot get working time configuration, using default setting !");
        lichnghi = new int[7];
        lichnghi[0] = 0;
        lichnghi[1] = 8;
        lichnghi[2] = 8;
        lichnghi[3] = 8;
        lichnghi[4] = 8;
        lichnghi[5] = 8;
        lichnghi[6] = 0;
      }
    }
    int numday = 0;
    ca1.set(ca1.HOUR_OF_DAY, 23);
    ca1.set(ca1.MINUTE, 59);
    while(ca.before(ca1)){
      if(lichnghi[ca.get(ca.DAY_OF_WEEK) - 1]>0){
        numday++;
      }
      ca.add(ca.DAY_OF_YEAR, 1);
    }
    return numday;
  }
*/
  public static void main(String[] args){
    Calendar ca = Calendar.getInstance();
    Calendar ca1 = (Calendar) ca.clone();
    ca1.set(ca1.HOUR, 23); ca1.set(ca1.MINUTE, 59);
    ca1.add(ca1.DAY_OF_YEAR, 12);
    System.out.println("CA=" + ca);
    System.out.println("CA1=" + ca1);
    int[] lichnghi = new int[7];
    lichnghi[0]=0;
    lichnghi[1]=8;
    lichnghi[2]=8;
    lichnghi[3]=8;
    lichnghi[4]=8;
    lichnghi[5]=8;
    lichnghi[6]=4;
    int numday = 0;

     while(ca.before(ca1)){
       if(lichnghi[ca.get(ca.DAY_OF_WEEK) - 1]>0){
         System.out.println(ca.get(ca.DAY_OF_WEEK));
         numday++;
       }
       ca.add(ca.DAY_OF_YEAR, 1);
     }

    System.out.println("NUMDAY=" + numday);

  }
}
