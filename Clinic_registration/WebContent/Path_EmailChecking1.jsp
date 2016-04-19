<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="controller.pathalogyvalidate" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String email=request.getParameter("email");
System.out.println(email);
String pathalogyname=pathalogyvalidate.checkUser(email);
System.out.println(pathalogyname);
if(pathalogyname !=null){%>
 
<%}else{%> 
	<%="Email Id not found in database! Please enter correct Email Id." %>
<%}%>
</body>
</html>