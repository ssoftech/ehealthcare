<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Model.DAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String email=request.getParameter("email");

boolean status=DAO.emailCheck1(email);

if(status){%>

 	<%="already exist" %>
<%}else{%> 
	
	<%="available" %>
<%}%>
</body>
</html>