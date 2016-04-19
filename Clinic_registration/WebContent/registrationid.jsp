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
String  s1=request.getParameter("s1");
System.out.println("s "+s);
if(s.equals("select"))
{
%>	
<input type="text" name="reg" id="reg" class="form-control1" >



<% 
}
String username = (String)session.getAttribute("clinicname");
String email=(String)session.getAttribute("email");

Connection con=DB.dbcon();
String sql="Select distinct Registrationid from doctor_entry where clinicname=? and doctorname=? and specilization=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, username);
ps.setString(2, s);
ps.setString(3, s1);

ResultSet rs=ps.executeQuery();
%>

<% while(rs.next())
	{
	String Registrationid=rs.getString(1);
	%>
	<label>Registration_ID</label> 
	<input type="text" name="rid" value="<%=Registrationid%>" class="form-control1"/>
	<%
	}%>


</body>
</html>