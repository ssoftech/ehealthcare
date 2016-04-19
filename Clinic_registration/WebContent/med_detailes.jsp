<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="controller.Retailervalidate.*"
	import="java.sql.Connection" import="java.sql.PreparedStatement"
	import="java.sql.ResultSet" import="db.Db.*"
	import="java.io.IOException"%>
	
<%@page import="db.DB"%>
<%@page import="Model.DAO1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
</head>
<body>
	
			<%
			String queryString = request.getQueryString();
			System.out.println("queryString : " + queryString);
					String med = request.getParameter("s");
					System.out.println("med is........."+med);
					String username = (String) session.getAttribute("Retailername");
					String email = (String) session.getAttribute("email");
					String filename = DAO1.getfilefromDb(email);
					System.out.print(filename + " hello ");
					 /* if(username==null)
					   {
						  response.sendRedirect("Retailerlogin.jsp");
					   } */
				
 try{
System.out.print(" hello ajax....");
Connection con= DB.dbcon();
String sql = "select * from retailer r1 INNER JOIN retailer_detail r2 ON r1.Retailername=r2.Retailername AND r1.Medicinename=? AND r2.Email=?";

			PreparedStatement ps=con.prepareStatement(sql);	
			ps.setString(1, med );	
			ps.setString(2, email);
			ResultSet rs=ps.executeQuery();
			%>		
				
<table class="table"  rules="groups" id="show">
        <thead>
        		  <tr  class="bg-primary">

    <td><b>Medicine Name</b></td>
    <td><b>Medicine Type</b></td>
    <td><b>TagLine</b></td>
    <td><b>Price</b></td>
    <td><b>Quantity</b></td>
    <td><b>Mrp</b></td>
    <td><b>Discount</b></td>
    <td><b>Manufacture Date</b></td>
    <td><b>Expiry Date</b></td>
    <td><b>Manufacturer Name</b></td>
  	<td><b>Image</b></td>
          </tr>
         </thead>

 <%

while(rs.next())
	{
	String s2= rs.getString(3); 

	%>

	<tr>

    <td><%=rs.getString(3) %>&nbsp;(<%=rs.getString(8) %>)</td>
    <td><%=rs.getString(4) %></td>
    <td><%=rs.getString(5) %></td>
    <td><%=rs.getString(6) %></td>
    <td><%=rs.getString(7) %></td>
    <td><%=rs.getString(10) %></td>  
    <td><%=rs.getString(12) %></td>
    <td><%=rs.getString(13) %></td>
    <td><%=rs.getString(14) %></td>
    <td><%=rs.getString(15) %></td>
    
    
   <td><img src="images/<%=filename%>" width="60" height="60"/></td></tr>
    
    <%} 
 }
 catch(Exception e)
 {
 	e.printStackTrace();
 }%>
</table>

</body>
</html>