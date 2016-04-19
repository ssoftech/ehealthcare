<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<select name="TEST_SUBCATEGORY_NAME" class="form-control1" onchange="show_productdetails(this.value)">             
<option selected="selected">select SUBCATEGORY NAME</option>

<% 

String NAME_OF_TESTS=request.getParameter("category_id");
System.out.println("ffff"+NAME_OF_TESTS);
   String sql="Select TEST_SUBCATEGORY_NAME from test_subcategory where TEST_ID=?";
   Connection con=DB.dbcon();
   
   PreparedStatement ps=con.prepareStatement(sql);
   ps.setString(1,NAME_OF_TESTS);
   ResultSet rs=ps.executeQuery();
   while(rs.next())
   {
	   String name=rs.getString("TEST_SUBCATEGORY_NAME");%>
	 <option value="<%=rs.getString("TEST_SUBCATEGORY_NAME")%>"><%=name%></option> 
<%} %>
</select>

</body>
</html>