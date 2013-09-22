package hrm.util;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.activation.FileDataSource;
import javax.activation.DataHandler;
import javax.mail.internet.*;
import javax.mail.*;
import java.io.*;

import hrm.util.*;
import java.util.*;

public class MailUtils {

    private final static boolean DEBUG = false;

    /**
     * This method sends an eMail
     * @param from the email-address of the sender
     * @param to   the email-addresses of the receivers (if more than one,
     *             please comma separate!)
     * @param cc   the email-addresses of the cc field (if more than one,
     *             please comma separate!)
     * @param bcc  the email-addresses of the bcc field (if more than one,
     *             please comma separate!)
     * @deprecated
     *
     */
    public static void sendMailNotAuthen(String from,
                                String to,
                                String cc,
                                String bcc,
                                String subject,
                                String body,
                                String host,
                                String login,
                                String headerTypeMail
                                ) {


        if (DEBUG) {
            System.out.println(to);
            System.out.println(cc);
            System.out.println(bcc);
            System.out.println(subject);
            System.out.println(body);
        }
        String mailServer = host;

        Properties props = new Properties();

        props.put("mail.smtp.host", mailServer);

        Session session = Session.getDefaultInstance(props, null);
        //session.setDebug(true);
        try {
            MimeMessage msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(from));
            if (to.length() > 7) {
              msg.setRecipients(Message.RecipientType.TO, createInternetAdress(to));
            }
            if (cc.length() > 7) {
              msg.setRecipients(Message.RecipientType.CC, createInternetAdress(cc));
            }
            if (bcc.length() > 7) {
              msg.setRecipients(Message.RecipientType.BCC, createInternetAdress(bcc));
            }
            msg.setSubject(subject,"UTF-8");
            msg.addHeader("X-SSP-TYPE", headerTypeMail);
            MimeMultipart mp = new MimeMultipart();

            MimeBodyPart text = new MimeBodyPart();
            text.setDisposition(Part.INLINE);
            text.setContent(body, "text/html;charset=utf-8");
            mp.addBodyPart(text);
            msg.setContent(mp);

            /* msg.addHeader("X-SSP-TYPE", headerTypeMail);
               msg.setContent(body, "text/html;charset=utf-8");
             */

            Transport.send(msg);
          } catch (Exception mex) {
            mex.printStackTrace();
          }
    }


    public static void sendMail(String from,
                                    String to,
                                    String cc,
                                    String bcc,
                                    String subject,
                                    String body,
                                    String host,
                                    String login,
                                    String pwd,
                                    String headerTypeMail
                                    ) {

            if (DEBUG) {
                System.out.println(to);
                System.out.println(cc);
                System.out.println(bcc);
                System.out.println(subject);
                System.out.println(body);
            }
            String mailServer = host;
            System.out.println("login:"+login);
            Properties props = new Properties();
            Authenticator auth = new PopupAuthenticator(login,pwd);

            props.put("mail.smtp.host", mailServer);
            props.put("mail.smtp.auth","true");

            Session session = Session.getInstance(props, auth);
            //session.setDebug(true);
            try {
                Transport transport = session.getTransport("smtp");
                transport.connect(host, login, pwd);
                MimeMessage msg = new MimeMessage(session);
                //String a ="Nguyen Trong Tuan <smtp@vinataba.com.vn>";
                String Nguoigoi = "";
                Nguoigoi = from + "<" + login +">";
                msg.setFrom(new InternetAddress(Nguoigoi));
                if (to.length() > 7) {
                  msg.setRecipients(Message.RecipientType.TO, createInternetAdress(to));
                }
                if (cc.length() > 7) {
                  msg.setRecipients(Message.RecipientType.CC, createInternetAdress(cc));
                }
                if (bcc.length() > 7) {
                  msg.setRecipients(Message.RecipientType.BCC, createInternetAdress(bcc));
                }
                msg.setSubject(subject,"UTF-8");
                msg.addHeader("X-SSP-TYPE", headerTypeMail);
                MimeMultipart mp = new MimeMultipart();

                MimeBodyPart text = new MimeBodyPart();
                text.setDisposition(Part.INLINE);
                text.setContent(body, "text/html;charset=utf-8");
                mp.addBodyPart(text);
                msg.setContent(mp);

                /* msg.addHeader("X-SSP-TYPE", headerTypeMail);
                   msg.setContent(body, "text/html;charset=utf-8");
                 */

                transport.send(msg);
                transport.close();
              } catch (Exception mex) {
                mex.printStackTrace();
              }
        }

//lmhuan

    public static void sendWithAttachments(String from,
                                           String to,
                                           String cc,
                                           String bcc,
                                           String subject,
                                           String body,
                                           String host,
                                           String login,
                                           String pwd,
                                           Vector attach,
                                           String headerTypeMail
                                           ) {
        String mailServer = host;

        Properties props = new Properties();
        Authenticator auth = new PopupAuthenticator(login,pwd);

        props.put("mail.smtp.host", mailServer);
        props.put("mail.smtp.auth","true");

        Session session = Session.getInstance(props, auth);
        //session.setDebug(true);
        try {
            Transport transport = session.getTransport("smtp");
            transport.connect(host, login, pwd);
            MimeMessage msg = new MimeMessage(session);
            msg.addHeader("X-SSP-TYPE", headerTypeMail);
            msg.setFrom(new InternetAddress(from));
            if (to.length() > 7) {
                msg.setRecipients(Message.RecipientType.TO, createInternetAdress(to));
            }
            if (cc.length() > 7) {
                msg.setRecipients(Message.RecipientType.CC, createInternetAdress(cc));
            }
            if (bcc.length() > 7) {
                msg.setRecipients(Message.RecipientType.BCC, createInternetAdress(bcc));
            }
            msg.setSubject(subject,"UTF-8");

            MimeMultipart mp = new MimeMultipart();
            MimeBodyPart text = new MimeBodyPart();
            text.setDisposition(Part.INLINE);
            text.setContent(body, "text/html;charset=utf-8");

            mp.addBodyPart(text);
            for (int i = 0; i < attach.size(); i++) {
                MimeBodyPart file_part = new MimeBodyPart();
                File file = (File) attach.elementAt(i);
                FileDataSource fds = new FileDataSource(file);
                DataHandler dh = new DataHandler(fds);
                file_part.setFileName(file.getName());
                file_part.setDisposition(Part.ATTACHMENT);
                file_part.setDescription("Attached file: " + file.getName());
                file_part.setDataHandler(dh);
                mp.addBodyPart(file_part);
            }
            msg.setContent(mp);
            Transport.send(msg);
            transport.close();
        } catch (Exception mex) {
            mex.printStackTrace();
        }

    }

    /**
     * This method is used for parsing a String, split the contant at any comma
     * and create a InternetAddress object from every substring.
     *
     * @param adresses the String including one or more email addresses (commaseparated)
     * @return an array of InternetAddress objects
     * @deprecated
     */
    public static InternetAddress[] createInternetAdress(String adresses) {
        String[] a = StringUtils.split(adresses, ",");
        try {
            InternetAddress[] ia = new InternetAddress[a.length];
            for (int i = 0; i < a.length; i++) {
                ia[i] = new InternetAddress(a[i].trim());
            }
            return ia;
        } catch (MessagingException mex) {
            mex.printStackTrace();
            return new InternetAddress[0];
        }
    }

    public static void replyMail(String from,
                                 String to,
                                 String cc,
                                 String bcc,
                                 String subject,
                                 String body,
                                 String host,
                                 String login,
                                 String pwd,
                                 String headerTypeMail,
                                 String ref
                                 ) {

        if (DEBUG) {
            System.out.println(to);
            System.out.println(cc);
            System.out.println(bcc);
            System.out.println(subject);
            System.out.println(body);
        }
        String mailServer = host;

        Properties props = new Properties();
        Authenticator auth = new PopupAuthenticator(login,pwd);

        props.put("mail.smtp.host", mailServer);
        props.put("mail.smtp.auth","true");

        Session session = Session.getInstance(props, auth);
        //session.setDebug(true);
        try {
            Transport transport = session.getTransport("smtp");
            transport.connect(host, login, pwd);
            MimeMessage msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(from));
            if (to.length() > 7) {
                msg.setRecipients(Message.RecipientType.TO, createInternetAdress(to));
            }
            if (cc.length() > 7) {
                msg.setRecipients(Message.RecipientType.CC, createInternetAdress(cc));
            }
            if (bcc.length() > 7) {
                msg.setRecipients(Message.RecipientType.BCC, createInternetAdress(bcc));
            }
            msg.setSubject(subject,"UTF-8");
            msg.addHeader("X-SSP-TYPE", headerTypeMail);
            MimeMultipart mp = new MimeMultipart();
            MimeBodyPart text = new MimeBodyPart();
            text.setDisposition(Part.INLINE);
            text.setContent(body, "text/html;charset=utf-8");
            mp.addBodyPart(text);
            msg.setContent(mp);


            //msg.addHeader("X-SSP-TYPE", headerTypeMail);
            //msg.setContent(body, "text/html;charset=utf-8");
            msg.addHeader("REFERENCES", ref);

            transport.send(msg);
            transport.close();
        } catch (Exception mex) {
            mex.printStackTrace();
        }

    }

    public static void replyWithAttachments(String from,
                                           String to,
                                           String cc,
                                           String bcc,
                                           String subject,
                                           String body,
                                           String host,
                                           String login,
                                           String pwd,
                                           Vector attach,
                                           String headerTypeMail,
                                           String ref
                                           ) {
        String mailServer = host;

        Properties props = new Properties();
        Authenticator auth = new PopupAuthenticator(login,pwd);

        props.put("mail.smtp.host", mailServer);
        props.put("mail.smtp.auth","true");

        Session session = Session.getInstance(props, auth);
        //session.setDebug(true);
        try {
            Transport transport = session.getTransport("smtp");
            transport.connect(host, login, pwd);
            MimeMessage msg = new MimeMessage(session);
            msg.addHeader("X-SSP-TYPE", headerTypeMail);
            msg.setFrom(new InternetAddress(from));
            if (to.length() > 7) {
                msg.setRecipients(Message.RecipientType.TO, createInternetAdress(to));
            }
            if (cc.length() > 7) {
                msg.setRecipients(Message.RecipientType.CC, createInternetAdress(cc));
            }
            if (bcc.length() > 7) {
                msg.setRecipients(Message.RecipientType.BCC, createInternetAdress(bcc));
            }
            msg.setSubject(subject,"UTF-8");

            MimeMultipart mp = new MimeMultipart();
            MimeBodyPart text = new MimeBodyPart();
            text.setDisposition(Part.INLINE);
            text.setContent(body, "text/html;charset=utf-8");

            mp.addBodyPart(text);
            for (int i = 0; i < attach.size(); i++) {
                MimeBodyPart file_part = new MimeBodyPart();
                File file = (File) attach.elementAt(i);
                FileDataSource fds = new FileDataSource(file);
                DataHandler dh = new DataHandler(fds);
                file_part.setFileName(file.getName());
                file_part.setDisposition(Part.ATTACHMENT);
                file_part.setDescription("Attached file: " + file.getName());
                file_part.setDataHandler(dh);
                mp.addBodyPart(file_part);
            }
            msg.setContent(mp);
            msg.addHeader("REFERENCES", ref);
            Transport.send(msg);
            transport.close();
        } catch (Exception mex) {
            mex.printStackTrace();
        }

    }


}
class PopupAuthenticator extends Authenticator {
   String username;
   String password;
   public PopupAuthenticator(String username,String password){
     this.username=username;
     this.password=password;
   }
       public PasswordAuthentication getPasswordAuthentication() {
           return new PasswordAuthentication(username,password);
       }
   }


