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
System.out.println("s "+s);
if(s.equals("select"))
{
%>	

<% 
}
String PATH_NAME = (String)session.getAttribute("pathalogyname");
String email=(String)session.getAttribute("email");
Connection con=DB.dbcon();
String sql="Select Registrationid from referred where pathalogyname=? and Specilization=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, PATH_NAME);
ps.setString(2, s);
ResultSet rs=ps.executeQuery();
%>
<label>Registration ID</label> 
<select  name="Reg_id" class="form-control1" onchange="fun1(this.value,'<%=s%>')" >
<option value="">select Registration ID</option>
<% while(rs.next())
	{
	%>
	
	<option value="<%=rs.getString(1) %>"><%=rs.getString(1) %></option>
	<%
	}%>
</select>
</body>
</html>