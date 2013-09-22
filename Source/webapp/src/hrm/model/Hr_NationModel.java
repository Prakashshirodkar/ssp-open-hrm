package hrm.model;
import java.util.*;
import hrm.dbobj.*;

//import hrm.util.*;
//import com.jcorporate.expresso.core.db.DBException;

public class Hr_NationModel {
	private String nationno;
	private String nationname;
	private String note;
	
	public Hr_NationModel() {
		super();
	}
	
	public static ArrayList getDsNation(){
        ArrayList model = new ArrayList();
        try
        {
            HR_Nation obj = new HR_Nation();
            ArrayList arr = obj.searchAndRetrieveList();
            Iterator iter = arr.iterator();
            for(int i = 0; iter.hasNext(); i++)
            {
                model.add(toModel((HR_Nation) iter.next()));
            }
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return model;
	}
	
	public static Hr_NationModel toModel(HR_Nation obj){
        try{
        	Hr_NationModel model = new Hr_NationModel();
            if(obj.getField(obj.NATION_NO)!=null && obj.getField(obj.NATION_NO).length()>0)
                model.setNationNo(obj.getField(obj.NATION_NO));
            if(obj.getField(obj.NATION_NAME)!=null && obj.getField(obj.NATION_NAME).length()>0)
                model.setNationName(obj.getField(obj.NATION_NAME));
            model.setNote(obj.getField(obj.NATION_NOTE));
            return model;
        }catch (Exception ex) {
            //log.error("Error: translate from dbobj to model");
            return null;
        }
    }
	
	
	public String getNationNo(){
		return nationno;
	}
	public void setNationNo(String newnationno){
		nationno = newnationno;
	}
	
	public String getNationName() {
		return nationname;
	}
	public void setNationName(String newnationname){
		nationname = newnationname;
	}
	
	public String getNote(){
		return note;
	}
	public void setNote(String newnote){
		note = newnote;
	}
}

