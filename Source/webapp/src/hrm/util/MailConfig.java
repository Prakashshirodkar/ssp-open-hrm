package hrm.util;

import hrm.model.*;

import java.util.*;

public class MailConfig extends java.util.Properties {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static final String SMTPHOST = "smtphost";
	public static final String MAILFROM = "mailfrom";
	public static final String SMTPUSER = "smtpuser";
	public static final String SMTPPASSWORD = "smtppassword";
	private static MailConfig instance;

	public MailConfig() {
		super();
        ArrayList list=Sys_Mail_ServerModel.getAllMailServer();
		Sys_Mail_ServerModel sys_mail =null;
        if(list!=null && list.size()>0)
        	sys_mail=(Sys_Mail_ServerModel)list.get(0);
		if (sys_mail != null) {
			setProperty(SMTPHOST, sys_mail.getMail_Server());
			setProperty(SMTPUSER, sys_mail.getUsername());
			setProperty(SMTPPASSWORD, sys_mail.getPass());
			setProperty(MAILFROM, sys_mail.getAccount_Name());
		}
	}

	public static MailConfig getInstance() {
		if (instance == null) {
			instance = new MailConfig();
		}
		return instance;
	}
}
