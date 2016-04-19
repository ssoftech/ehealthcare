<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*,db.DB"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<%
   
   // Recipient's email ID needs to be mentioned.
   String to = request.getParameter("to");
   String mobile= request.getParameter("mobile");
   
  
   
   session.setAttribute("EmailID",to);
   
   System.out.println("To " +to);
   System.out.println("Mobile " +mobile);

   String chk="false";
   try {
		Connection con=DB.dba();
		
		if(con!=null)
		{
			String sql = "select mobileno from doctor_reg where email=? AND mobileno=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, to);
			ps.setString(2, mobile);
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				chk="true";
				
			}
		}
	
}
catch(Exception e)
	{
	
	}

   String result="";
   // Sender's email ID needs to be mentioned
final String from = "rr377334@gmail.com";
  final String password="Rranjan@91";
   // Assuming you are sending email from localhost
   String host = "localhost";

   // Get system properties object
   Properties properties = System.getProperties();
   properties.put("mail.smtp.host", "smtp.gmail.com");
   properties.put("mail.smtp.socketFactory.port", "465");
   properties.put("mail.smtp.socketFactory.class",
                  "javax.net.ssl.SSLSocketFactory");
   properties.put("mail.smtp.auth", "true");
   properties.put("mail.smtp.port", "465");
  // properties.setProperty("mail.user", from);
  // properties.setProperty("mail.password", password);
   
   Session session1 = Session.getInstance(properties,  
           new javax.mail.Authenticator() {
           protected PasswordAuthentication 
           getPasswordAuthentication() {
           return new 
           PasswordAuthentication(from,password);
           }});

   // Setup mail server
 //  properties.setProperty("mail.smtp.host", host);

   // Get the default Session object.
  // Session mailSession = Session.getDefaultInstance(properties);
	String snd ="<a href=http://localhost:8080/Clinic_registration/Doc_ResetPassword.jsp?eml="+to+">http://www.onlinemedi.com/011129875589646sahd8939536klkvjfdkdldp</a>";
   		try{
   			
      // Create a default MimeMessage object.
      MimeMessage message = new MimeMessage(session1);
      // Set From: header field of the header.
      message.setFrom(new InternetAddress(from));
      // Set To: header field of the header.
      message.addRecipient(Message.RecipientType.TO,
                               new InternetAddress(to));
      // Set Subject: header field
      message.setSubject("Reset Password");
     
      // Send the actual HTML message, as big as you like
      message.setContent("Hi Here is your password resetting link. Click on the link to reset your password. "+snd,
                            "text/html" );
      // Send message
      if(chk.equals("true"))
   		 {
      Transport.send(message);
      result = "Sent message successfully....";
      response.sendRedirect("Doctor_Login.jsp?val="+result );
   		}
      else
      {
    	  result = "Error: unable to send message....";
    	  response.sendRedirect("Doc_ForgotPassword.jsp?val="+result );
      }
	   
   }
   	catch (MessagingException mex) {
      mex.printStackTrace();
      result = "Error: unable to send message....";
      response.sendRedirect("Doc_ForgotPassword.jsp?val="+result );
   }
%>
<html>
<head>
<title>Send HTML Email using JSP</title>
</head>
<body>
<center>
<h1>Send Email using JSP</h1>
</center>
<p align="center">
<% 
   out.println("Result: " + result + "\n");
%>
</p>
</body>
</html>
</body>
</html>