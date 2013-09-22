package hrm.model;

import java.util.*;
import hrm.dbobj.*;
//import java.util.*;
import hrm.util.*;
//import com.ssp.news.util.*;

public class Alert_GuidinhthoiModel {
  int id;
  String chucnangid;
  String canhanid;
  String thoidiemgui;
  String emailTitle;
  String emailContent;
  
  public Alert_GuidinhthoiModel() {
  }

  public static Alert_GuidinhthoiModel toModel(Alert_Guidinhthoi obj){
    Alert_GuidinhthoiModel model=new Alert_GuidinhthoiModel();
    try{
      model.setId(obj.getFieldInt(obj.ID));
      model.setChucnangid(obj.getField(obj.CHUCNANGID));
     
      model.setCanhanid(obj.getField(obj.CANHANID));
      model.setThoidiemgui(obj.getField(obj.THOIDIEMGUI));
  
      model.setEmailTitle(obj.getField(obj.EMAILTITLE));
      model.setEmailContent(JS.unescape(obj.getField(obj.EMAILCONTENT)));

    }catch(Exception ex){
      ex.printStackTrace();
    }
    return model;
  }

  public static int insert(Alert_GuidinhthoiModel alertmodel){
	   try {
	     Alert_Guidinhthoi guidinhthoi = new Alert_Guidinhthoi();
	     guidinhthoi.setField( guidinhthoi.CHUCNANGID, alertmodel.getChucnangid());
	     guidinhthoi.setField( guidinhthoi.CANHANID, alertmodel.getCanhanid());
	     guidinhthoi.setField( guidinhthoi.THOIDIEMGUI, alertmodel.getThoidiemgui());
	     guidinhthoi.setField( guidinhthoi.EMAILTITLE, alertmodel.getEmailTitle());
	     guidinhthoi.setField( guidinhthoi.EMAILCONTENT, JS.escape(alertmodel.getEmailContent()));
	     guidinhthoi.add();
	     return Integer.parseInt(guidinhthoi.getKey());
	   }
	   catch (Exception ex) {
	     ex.printStackTrace();
	     return -1;
	   }
	 }
  
  public static void update(Alert_GuidinhthoiModel model)
  {
      try
      {
          Alert_Guidinhthoi obj = new Alert_Guidinhthoi();
          if (model.getId() > 0)
              obj.setField(Alert_Guidinhthoi.ID, model.getId());
          if (obj.find())
          {
              if (model.getChucnangid() != null && model.getChucnangid().length() > 0)
                  obj.setField(Alert_Guidinhthoi.CANHANID, model.getChucnangid());
              if (model.getCanhanid() != null && model.getCanhanid().length() > 0)
                  obj.setField(Alert_Guidinhthoi.CANHANID, model.getCanhanid());
              if (model.getThoidiemgui() != null)
                  obj.setField(Alert_Guidinhthoi.THOIDIEMGUI, model.getThoidiemgui());
              if (model.getEmailTitle()!=null && model.getEmailTitle().length()>0)
                 obj.setField(Alert_Guidinhthoi.EMAILTITLE, model.getEmailTitle());
              if (model.getEmailContent()!=null && model.getEmailContent().length()>0)
                 obj.setField(Alert_Guidinhthoi.EMAILCONTENT, model.getEmailContent());
              obj.update();
          }
      }
      catch (Exception ex)
      {
          ex.printStackTrace();
      }
  }

  /**tuannt-TrongTuan xay dung ham delete tat ca
   *03/06/2008
   * @param model Crm_Template_DefaultModel
   */
  public static void deleteAll(Alert_GuidinhthoiModel model)
  {
      //System.out.println("vao ham delete ko vay pa");
      try
      {
          String Chucnangid = model.getChucnangid();
          Alert_Guidinhthoi obj = new Alert_Guidinhthoi();
          obj.setCustomWhereClause(" CHUCNANGID='"+Chucnangid);
          obj.deleteAll();
      }
      catch (Exception ex)
      {
          ex.printStackTrace();
      }
  }


  /**tuannt-TronTuan
   *02/06/2008
   * @param tentruongid int
   * @param Doituongid int
   * @return Alert_GuidinhthoiModel
   */
  public static Alert_GuidinhthoiModel getAlert_Guidinhthoi(int tentruongid,int Doituongid){
     try{
         Alert_Guidinhthoi obj = new Alert_Guidinhthoi();
         obj.setCustomWhereClause(" CHUCNANGID='"+("CRM_TENTRUONG#"+tentruongid) +"' and DOITUONGID="+Doituongid);
         if(obj.find()){
            return toModel( (Alert_Guidinhthoi) obj );
         }else{
             return new Alert_GuidinhthoiModel();
         }
     }catch(Exception ex){
         ex.printStackTrace();
         return new Alert_GuidinhthoiModel();
     }
 }

 /**TrongTuan-Tuannt
  *02/06/2008
  * @param tentruongid int
  * @param Doituongid int
  * @return Alert_GuidinhthoiModel[]
  */
  public static Alert_GuidinhthoiModel[] getAlert_Guidinhthoi(String date)
 {
     try
     {
         Alert_Guidinhthoi obj = new Alert_Guidinhthoi();
         obj.setCustomWhereClause("THOIDIEMGUI <= '" + date  + "'");
         ArrayList arr = obj.searchAndRetrieveList();
         if (arr != null && arr.size() > 0)
         {
             Alert_GuidinhthoiModel[] result = new Alert_GuidinhthoiModel[arr.size()];
             for (int i = 0; i < arr.size(); i++)
             {
                 result[i] = toModel( (Alert_Guidinhthoi) arr.get(i));
             }
             return result;
         }
         else
         {
             return new Alert_GuidinhthoiModel[0];
         }
     }
     catch (Exception ex)
     {
         ex.printStackTrace();
         return new Alert_GuidinhthoiModel[0];
     }
 }


  public String getCanhanid() {
    return canhanid;
  }
  public String getChucnangid() {
    return chucnangid;
  }

  public String getEmailContent() {
    return emailContent;
  }
  public String getEmailTitle() {
    return emailTitle;
  }
  public int getId() {
    return id;
  }
 
  public void setCanhanid(String canhanid) {
    this.canhanid = canhanid;
  }
  public void setChucnangid(String chucnangid) {
    this.chucnangid = chucnangid;
  }
  
  public void setEmailContent(String emailContent) {
    this.emailContent = emailContent;
  }
  public void setEmailTitle(String emailTitle) {
    this.emailTitle = emailTitle;
  }
  public void setId(int id) {
    this.id = id;
  }
  
  public String getThoidiemgui() {
    return thoidiemgui;
  }
 
  public void setThoidiemgui(String thoidiemgui) {
    this.thoidiemgui = thoidiemgui;
  }

}
