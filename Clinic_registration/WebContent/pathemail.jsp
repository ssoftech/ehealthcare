<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
   String result;
   
   String to = request.getParameter("To");
   session.setAttribute("Email", to);
     System.out.println("To " +to);
    
	
     final String from = "service4medical@gmail.com";
     final String password="adminsupport";
  
   String host = "localhost";

  
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
      message.setContent("Hi Here is your password resetting link. Click on the link to reset your password. "+"<a href='http://localhost:8080/Clinic_registration/pathresatepassword1.jsp'>CLICK HERE</a>",
                            "text/html" );
      // Send message
      Transport.send(message);
       result = "Sent message successfully...."; 
      String msg="Sent message successfully....";
		response.sendRedirect("pathalogylogin.jsp? msg" +msg);
   }catch (MessagingException mex) {
      mex.printStackTrace();
      result = "Error: unable to send message....";
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