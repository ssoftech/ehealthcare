<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import="java.sql.*,db.DB,java.util.*"%>
    <%@ page import="controller.*"%>
        <%@ page import="Model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript">
function f()
{
	var myVar = "ABC"
	
		var events=[];
	events=Dao.s();
	
	for(var i=0;i<2;i++)
		{
		alert("hii");
		document.write(events[i]);
		}
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
String st="<script>document.writeln(myVar)</script>";
out.println("MyVar="+st); 
%>

<body onload="f();">
<input type="text" value="JustShow"  name="ABC">
</body>
</html>