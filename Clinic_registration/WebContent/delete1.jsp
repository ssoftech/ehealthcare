<%@page import="db.DB"%>
<%@page import="Model.DAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <%@page import="bean.deleteTest_bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#B0B0B0">


<h3>Delete Products</h3>

<form action="deleteTest_serv" method="POST" >
<h3>Delete Products</h3>


<% int ID=Integer.parseInt(request.getParameter("pid"));
System.out.println("delete id is:"+ ID);
Connection con=DB.dbcon();
String sql="DELETE FROM test_subcategory WHERE TEST_ID=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setInt(1, ID);
int i=ps.executeUpdate();
if(i==1)
{
	String msg="delete 1";
	response.sendRedirect("view_tests.jsp?msg="+msg);
}
else
{
	String msg="delete0";
	response.sendRedirect("view_tests.jsp?msg="+msg);
}%>
</form>
</body>
</html>