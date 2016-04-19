<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.Connection, db.DB.*"
import="java.sql.PreparedStatement" import="java.sql.ResultSet" import="java.io.IOException"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type=" text/css">

 #apDiv1 {
	position: absolute;
	left: 31%;
	top: 332px;
	width: 510px;
	height: 60px;
	z-index: 1;
	background-color: #066;
}
</style>
</head>
<body>

            <%
			String username = (String)session.getAttribute("Retailername");
			String email=(String)session.getAttribute("email");
			String mobile=(String)session.getAttribute("mobile");
			String Address=(String)session.getAttribute("Address");
			String City=(String)session.getAttribute("City");  
			 if(username==null)
			   {
				  response.sendRedirect("Retailerlogin.jsp");
			   }
			   %>
	<div class="copy">
      <table>
      <td id="image_td" width="28	0px;" height="180px;">
      <img src="ProfilePic?email=<%=email%>" height="120" width="120" style="float: left; 
      margin-left: 50px; margin-right: 50px; border-radius: 0px 25px 0px 25px; 
      box-shadow: 0px 0px 20px black;"></img></td><td>
      <table border="0" rules="" align="center" cellspacing="8" style="margin-left: 10px;
       border: 0px solid black; box-shadow: 0px 0px 0px #03F; font-size: 16px;">
							
							<tr>
								
								
								<td width="300px"><%=username%></td>
							</tr>
		</table>
		</td>
		</table>
		</div>
		<table>
		<tr><td><% %></td><td><% %></td></tr>
		<tr><td><% %></td><td><% %></td></tr>
		<tr><td><% %></td><td><% %></td></tr>
		<tr><td><% %></td><td><% %></td></tr>
		</table>
		<div><table><tr><td><label> Quantity Avialable</label></td><td><label name="avialibility" id="avialibility"><% %></label></td></tr></table></div>
		<div id="apDiv1">
  <form id="form1" name="form1" method="post"  action="">
    <table width="100%" height="48" border="0" cellpadding="10px">
      <tr>
        <td width="54%" height="32"><input type="text" placeholder="Search Medicines" style="border:solid #39DFFB; width:400px; height:30px; 
        border-radius:10px;" name="searchbox" /></td>
        <td width="26%"><input style="border-color:#00000;background-color:#39DFFB; width:60px; height:30px; 
        border-radius:10px;" type="submit" name="Go" id="Go" value="Search" /></td>
      </tr>
</table>
</form>
</div>
<div> <input type="submit" name="continue" value="continue">
</div>
</body>
</html>
		