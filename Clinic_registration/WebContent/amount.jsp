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

System.out.println("value "+s);

if(s.equals("select"))
{
%>	

<% 
}
String PATH_NAME = (String)session.getAttribute("pathalogyname");
String email=(String)session.getAttribute("email");
Connection con=DB.dbcon();
String sql="select sum(total_price) from bill where SUGGESTED_DOCTOR=?";
PreparedStatement ps=con.prepareStatement(sql);

ps.setString(1, s);


ResultSet rs=ps.executeQuery();
%>

	
<% double count=0;
if(rs.next())
	{
	count=rs.getDouble(1);
	
	}
	out.println("Total bill amount = "+count);%>

</body>
</html>