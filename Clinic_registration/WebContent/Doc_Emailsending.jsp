<%@page import="Model.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
   String result;
   String sub1=request.getParameter("subject");
   String msg1=request.getParameter("message");
   String to = request.getParameter("recipient");
   String email=(String)session.getAttribute("email");
   String to1 = request.getParameter("recipientcc");
   String to2 = request.getParameter("recipientbcc");
  /*  session.setAttribute("Email", to); */
     System.out.println("To from EmailSending" +to);
     System.out.println("To1 from EmailSending" +to1);
     System.out.println("To2 from EmailSending" +to2);
    
	
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
      
      
      if(to1=="" && to2=="")
      {
    
    	  message.addRecipients(Message.RecipientType.TO,
                  InternetAddress.parse(to)); 
 
      }
      else
      {
    	  message.addRecipients(Message.RecipientType.TO,
                  InternetAddress.parse(to)); 
    	
    	  message.addRecipients(Message.RecipientType.CC,
                  InternetAddress.parse(to1)); 
    	  message.addRecipients(Message.RecipientType.BCC,
                  InternetAddress.parse(to2)); 
      }

      message.setSubject(sub1);
     System.out.println(sub1);
     message.setContent(msg1,"text/html" );
      System.out.println(msg1); 
     Transport.send(message);
      result = "Sent message successfully....";
      
      
      
      int i=Dao3.emailSave(to, to1, to2, email);
      
      response.sendRedirect("Doc_index.jsp?result="+result);
      
   }catch (MessagingException mex) {
      mex.printStackTrace();
      result = "Error: unable to send message....";
      response.sendRedirect("Doc_contact.jsp?result="+result);
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