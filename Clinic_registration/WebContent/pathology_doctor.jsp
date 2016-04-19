<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection"
import="java.sql.PreparedStatement" import="java.sql.ResultSet" import="java.io.IOException"%>
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

<% 
}
String PATH_NAME = (String)session.getAttribute("pathalogyname");
String email=(String)session.getAttribute("email");
Connection con=DB.dbcon();
String sql="Select DoctorName from referred where pathalogyname=? and Registrationid=? and specilization=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, PATH_NAME);
ps.setString(2, s);
ps.setString(3, s1);

ResultSet rs=ps.executeQuery();
%>
<label for="sel1">Doctor Name</label>
	<select class="form-control1" name="doctor" onchange="show(this.value)" >
	<option value="select">select Doctor</option>
	
<% while(rs.next())
	{
	%>
	<option value="<%=rs.getString(1) %>"><%=rs.getString(1) %></option>
	<%
	}%>
	</select>
</body>
</html>