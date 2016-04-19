<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3 align="center"><u>View All Product Details</u></h3><br>
<% String TEST_SUBCATEGORY_NAME=request.getParameter("category_id");
System.out.println("ddddd"+TEST_SUBCATEGORY_NAME);
   String sql="Select * from test_subcategory where TEST_SUBCATEGORY_NAME=?";
   Connection con=DB.dbcon();
   PreparedStatement ps=con.prepareStatement(sql);
   ps.setString(1,TEST_SUBCATEGORY_NAME);
   ResultSet rs=ps.executeQuery();
   while(rs.next())
   {%>
	 <table class="table text-left"  rules="groups">
        <thead class="bg-primary"> 
	<tr>
	<td><b>TEST_NAME</b></td>
	<td><b>DETAILS </b></td>
	<td><b>SPECIMEN </b></td>
	<td><b>METHOD </b></td>
	<td><b>PRICE </b></td>
	<td><b>RULES </b></td>
	<td><b>AVAILABILITY </b></td>
	<td><b>DISTANCE</b></td>
	<td><b>Action </b></td>
	</tr>
	</thead>
	<tr>
	 <td><b><%=rs.getString("TEST_SUBCATEGORY_NAME")%></b></td>
	 <td><b> <%=rs.getString("DETAILS")%></b></td>
	 <td><b><%=rs.getString("SPECIMEN")%></b></td>
	 <td><b><%=rs.getString("METHOD")%></b></td>
	 <td><b><%=rs.getString("PRICE")%></b></td>
	 <td><b><%=rs.getString("RULES")%></b></td>
	 <td><b><%=rs.getString("AVAILABILITY")%></b></td>
	 <td><b><%=rs.getString("DISTANCE")%></b></td>
	<td align="center">
		<button class="btn btn-info btn-xs"><a href="edit1.jsp?tid=<%=rs.getString("TEST_SUBCATEGORY_NAME")%>" ><span class="glyphicon glyphicon-pencil" style="color: white;"></span></a></button>
		<button class="btn btn-danger btn-xs"><a href="delete1.jsp?pid=<%=rs.getString("TEST_ID")%>" ><span class="glyphicon glyphicon-trash" style="color: white;"></span></a></button>
	</tr>
	 
	 </table>
	 <%  } %>


</body>
</html>