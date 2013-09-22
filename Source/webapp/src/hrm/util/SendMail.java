package hrm.util;

import com.jcorporate.expresso.core.job.ServerException;
import com.jcorporate.expresso.core.misc.EMailSender;

import java.io.*;
import java.net.*;
import java.util.*;
import org.apache.log4j.Category;
import hrm.util.MailUtils;
import hrm.util.*;
//import com.jcorporate.expresso.core.logging.LogManager;

public class SendMail {
	static MailConfig mail = MailConfig.getInstance();
	private static Category log = null;
	public SendMail() {
		super();

	}

	public static boolean sendMail(String address, String subject, String content) {
		try {
            String from = mail.getProperty(MailConfig.MAILFROM);
            String to = address;
            String host = mail.getProperty(MailConfig.SMTPHOST);
            String user = mail.getProperty(MailConfig.SMTPUSER);
            String pass = mail.getProperty(MailConfig.SMTPPASSWORD);
            MailUtils mailutil = new MailUtils();

            mailutil.sendMail(from,to,"","",subject,content,host,user,pass,"");

    return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}


}
