<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javafx.scene.*"%>
    <%@page import="java.sql.*" %>
<%@page import="db.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>

<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

response.setIntHeader("Refresh", 60);
java.util.Date date = new java.util.Date();
SimpleDateFormat df = new SimpleDateFormat();
df.applyPattern("dd/MM/yyyy");
String dt= df.format(date);
System.out.println(dt);
java.util.Date date1 = new java.util.Date();
SimpleDateFormat df1 = new SimpleDateFormat();
df1.applyPattern("HH:mm");
String dt1= df1.format(date1);
System.out.println(dt1);
String gh=LocalTime.now().plusHours(1).toString();
String str[] = gh.split(":");
String addhour= str[0]+":"+str[1];
String email="";
System.out.println(addhour);
String toTime="";
String clinicName="";

String sql2 = "select * from doctor_scheduler where fromTime=? AND date=?";
Connection con= DB.dbcon();
				PreparedStatement ps2=con.prepareStatement(sql2);
				ps2.setString(1, addhour);
				ps2.setString(2, dt);
			ResultSet rs2=ps2.executeQuery();
			while(rs2.next())
			{
			
				email=rs2.getString("docemail");
				
				toTime=rs2.getString("toTime");
				clinicName = rs2.getString("text");
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
				
			   		try{
			   			
			      // Create a default MimeMessage object.
			      MimeMessage message = new MimeMessage(session1);
			      // Set From: header field of the header.
			      message.setFrom(new InternetAddress(from));
			      // Set To: header field of the header.
			   
			      message.addRecipient(Message.RecipientType.TO,
			                               new InternetAddress(email));
			   
			      // Set Subject: header field
			      message.setSubject("Remember Appointments ");
			     
			      // Send the actual HTML message, as big as you like
			      message.setContent("Your Appointments Time: "+addhour + " Upto: " +toTime + " Clinic Name : "  +clinicName, "text/html" );
			      // Send message
			   
			      Transport.send(message);
			     
				   
			   }
			   	catch (MessagingException mex) {
			      mex.printStackTrace();
			      result = "Error: unable to send message....";
			     // response.sendRedirect("Testing.jsp?result="+result);
			      
			   }
			
			
			
			
			
			%>		

</body>
</html>