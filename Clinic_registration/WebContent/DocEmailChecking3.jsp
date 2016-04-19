<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Model.DAO"%>
    <%@page import="controller.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String Mob=request.getParameter("Mob");
System.out.println(Mob);
String Retailername=DoctorValidate.checkUser2(Mob);
System.out.println(Retailername);

if(Retailername!=null ){%>

 	<span style="color: green;"><%="Mobile No Found In Database" %></span>
<%}else{%> 
	<%="Mobile No. not found in database! Please enter correct Mobile no." %>
<%}%>

</body>
</html>