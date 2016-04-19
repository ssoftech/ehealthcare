package controller;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import com.opensymphony.xwork2.ActionSupport;

import javax.mail.PasswordAuthentication;

/*new 
import java.util.Date;
import javax.mail.Authenticator;
import javax.mail.MessagingException;
import javax.mail.internet.AddressException;*/

public class MailClass extends ActionSupport{
	
	

	    
	
	  private String user1;
	  private String Email1;
	  public void userCheck(String user,String Email)
	  {
		  user1=user;
		  Email1=Email;
		  System.out.println("--------------"+user1);
		  System.out.println("------------"+Email1);
	  }
	  
	   private String password="Rranjan@91";
	   private String to = "rkranjan2605@gmail.com";
	   private String subject="Reset Password";
	   private String body="Hi Here is your password resetting link for "+user1+"  "+Email1+"."
			   				+"Click on the below link to reset your password."+
			   				"<a href='http://localhost:8080/Clinic_registration/Admin_Approve.jsp'>CLICK HERE</a>";
	  
			   							   				
	   
	  // static Properties properties = new Properties();
	   static Properties properties=System.getProperties();
	   static
	   {
	      properties.put("mail.smtp.host", "smtp.gmail.com");
	      properties.put("mail.smtp.socketFactory.port", "465");
	      properties.put("mail.smtp.socketFactory.class",
	                     "javax.net.ssl.SSLSocketFactory");
	      properties.put("mail.smtp.auth", "true");
	      properties.put("mail.smtp.port", "465");
	    
	   }

	   public String send(String from,String user,String Email) 
	   {
	      String ret = SUCCESS;
	      try
	      {
	    	  String snd ="<a href=http://localhost:8080/Clinic_registration/Admin_Approve.jsp?eml="+Email+"&category="+user+"&user="+user+">http://www.onlinemedi.com/011129875589646sahd8939536klkvjfdkdldp</a>";

	         Session session = Session.getInstance(properties,  
	            new javax.mail.Authenticator() {
	            protected PasswordAuthentication 
	            getPasswordAuthentication() {
	            return new 
	            PasswordAuthentication(from, password);
	            }});

	         Message message = new MimeMessage(session);
	         message.setFrom(new InternetAddress(from));
	         message.setRecipients(Message.RecipientType.TO, 
	            InternetAddress.parse(to));
	         message.setSubject(subject);
	         message.setText(body);
	         message.setContent("Email id "+Email+"User Type: "+user+" "+snd,
                     "text/html");
	         Transport.send(message);
	        System.out.println("send succefully:"+body);
	      }
	      catch(Exception e)
	      {
	         ret = ERROR;
	         e.printStackTrace();
	      }
	      return ret;
	   }
	   public String getTo() 
	   {
	      return to;
	   }

	   public void setTo(String to) 
	   {
	      this.to = to;
	   }

	  
	   public static Properties getProperties() {
	      return properties;
	   }

	   public static void setProperties(Properties properties) {
	      MailClass.properties = properties;
	   }

	

}
