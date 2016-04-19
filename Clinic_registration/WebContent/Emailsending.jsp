<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
   String result;
   String sub1=request.getParameter("subject");
   System.out.println("subject is :"+sub1);
   String msg1=request.getParameter("message");
   System.out.println("message is:  "+msg1);
   String to = request.getParameter("recipient");
  /*  session.setAttribute("Email", to); */
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

   try{
      
      MimeMessage message = new MimeMessage(session1);
     
      message.setFrom(new InternetAddress(from));
      
      message.addRecipient(Message.RecipientType.TO,
                               new InternetAddress(to));
      
      message.setSubject(sub1);
     System.out.println(sub1);
     message.setContent(msg1,"text/html" );
      System.out.println(msg1); 
     Transport.send(message);
      result = "Sent message successfully....";
      response.sendRedirect("index.jsp?result="+result);
   }catch (MessagingException mex) {
      mex.printStackTrace();
      result = "Error: unable to send message....";
      response.sendRedirect("Emailsending.jsp?result="+result);
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