<%@page import="db.DB"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="controller.*" import="controller.DummyValidate" import="java.sql.Connection"
import="java.sql.PreparedStatement" import="java.sql.ResultSet" import="java.io.IOException"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<hr>
<a href="DummyLogout">Logout</a> 
<br>
<br>
		<%
			String name = "";
			HttpSession sees = request.getSession();
			String email = (String)session.getAttribute("email");
		
			System.out.println("Email is" + email);
			if (email != "" || email != null) {
				try{
				Connection con = DB.dba();
				String sql = "Select name from online_medicare.doctor where email=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, email);
				ResultSet rs = ps.executeQuery();
				if (rs.next()) {
					name = rs.getString("name");
					sees = request.getSession();
					sees.setAttribute("name", name);
				}
				}catch(Exception e){System.out.println(e);}
			}
		%>
			<%
				String username = (String)session.getAttribute("name");
			
				System.out.println("Username is" + session.getAttribute("name"));
			%>
		
<h1><font color = red>Welcome&nbsp;&nbsp;<%=username%></font></h1>
<hr>  
</body>
</html>