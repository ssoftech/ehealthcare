<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection"
import="java.sql.PreparedStatement" import="java.sql.ResultSet" import="java.io.IOException"%>

    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String  s=request.getParameter("s");
System.out.println("s "+s);
if(s.equals("select"))
{
%>	

<% 
}
String username = (String)session.getAttribute("clinicname");
String email=(String)session.getAttribute("email");
Connection con=DB.dbcon();
String sql="Select doctorname from doctor_entry where clinicname=? and specilization=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, username);
ps.setString(2, s);
ResultSet rs=ps.executeQuery();
%>
<label>Doctor name</label> 
<select  name="doctor" class="form-control1" onchange="fun1(this.value,'<%=s%>')" >
<option value="">select doctor's name</option>
<% while(rs.next())
	{
	%>
	
	<option value="<%=rs.getString(1) %>"><%=rs.getString(1) %></option>
	<%
	}%>
</select>

</body>
</html>