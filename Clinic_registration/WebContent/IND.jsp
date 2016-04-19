
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection"
import="org.joda.time.format.*" import="org.joda.time.*" import="java.io.IOException"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Time Add</title>
<body>

<%

String myTime = "17:00";
DateTimeFormatter formatter = DateTimeFormat.forPattern("HH:mm");
   LocalTime time = formatter.parseLocalTime(myTime);
   time = time.plusMinutes(10);
   System.out.println("After adding 10 min. : "+formatter.print(time));
%>

</body>

</html>