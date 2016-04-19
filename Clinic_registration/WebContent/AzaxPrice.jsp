<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection"
import="java.sql.PreparedStatement" import="java.sql.ResultSet" import="java.io.IOException"%>

<%String val= request.getParameter("val");
Double Price=0.0;
Connection con = DB.dbcon();
try
{

	
System.out.println("Medi1 from azax is: "+val);
String sql2 = "Select * from test_subcategory where TEST_SUBCATEGORY_NAME=?";
PreparedStatement ps2 = con.prepareStatement(sql2);
ps2.setString(1, val);
ResultSet rs2 = ps2.executeQuery();
while(rs2.next()) {
	Price=rs2.getDouble("PRICE");
	System.out.println("Price is: "+Price);
	out.println(Price);
}
}
catch(Exception e)
{
	
}
%>
