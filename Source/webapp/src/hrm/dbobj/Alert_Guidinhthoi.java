package hrm.dbobj;

import com.jcorporate.expresso.core.dbobj.DBObject;
import com.jcorporate.expresso.core.db.DBException;

public class Alert_Guidinhthoi extends DBObject {

  public static final String ID = "ID";
  public static final String CHUCNANGID = "CHUCNANGID";
  public static final String CANHANID = "CANHANID";
  public static final String THOIDIEMGUI = "THOIDIEMGUI";
  public static final String EMAILTITLE = "EMAILTITLE";
  public static final String EMAILCONTENT = "EMAILCONTENT";

  public Alert_Guidinhthoi() throws DBException {
    super();
    //setDBName(STMDBConf.STMDB);
  }
  protected synchronized void setupFields() throws DBException {
      setTargetTable("ALERT_GUIDINHTHOI");
      setDescription("ALERT_GUIDINHTHOI");
      addField(ID, "auto-inc", 0, false, "ID");
      addField(CHUCNANGID, "varchar", 31, true, "CHUCNANGID");
      addField(CANHANID, "varchar", 15, false, "CANHANID");
      addField(THOIDIEMGUI, "varchar", 30, true, "THOIDIEMGUI");
      addField(EMAILTITLE, "varchar", 31, true, "EMAILTITLE");
      addField(EMAILCONTENT, "text", 0, true, "EMAILCONTENT");
      addKey(ID);
  }
}
