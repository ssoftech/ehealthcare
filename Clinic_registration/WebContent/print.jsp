<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
#apDiv1 {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 150px;
	z-index: 1;
	
}
#apDiv2 {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 40%;
	height: 130px;
	z-index: 2;
}
#apDiv3 {
	position: absolute;
	right:10px;
	top: 10px;
	width: 150px;
	height: 130px;
	z-index: 3;
}
#apDiv4 {
	position: absolute;
	left: 10px;
	top: 180px;
	width: 100%;
	height: 80px;
	z-index: 4;
}
#apDiv5 {
	position: absolute;
	left: 0px;
	top: 842px;
	width: 100%;
	height: 60px;
	z-index: 5;
	
}
#apDiv6 {
	position: absolute;
	left: 150px;
	top: 250px;
	width: 2px;
	height: 80%;
	z-index: 6;
	background-color:#000;
}
#apDiv7 {
	position: absolute;
	left: 10px;
	top: 300px;
	width: 130px;
	height: 70%;
	z-index: 7;
}
#apDiv8 {
	position: absolute;
	right: 10px;
	top: 850px;
	width: 100px;
	height: 10%;
	z-index: 7;
}
#apDiv9 {
	position: absolute;
	left: 0px;
	top: 842px;
	width: 100%;
	height: 60px;
	z-index: 5;
	
}
</style>
<%
				String username = (String)session.getAttribute("clinicname");
			String email=(String)session.getAttribute("email");
			String mobile=(String)session.getAttribute("mobile");
			System.out.println(mobile);
			String Address=(String)session.getAttribute("Address");
			   if(username==null)
			   {
				  response.sendRedirect("Cliniclogin.jsp");
			   }
                %>
</head>

<body>

<%String Doctorname=request.getParameter("doctor"); %>
<%String Registrationid=request.getParameter("registrationid"); %>
<%String Patientsname=request.getParameter("Patientname"); %>
<%String Age=request.getParameter("AGE"); %>
<%String Sex=request.getParameter("Sex"); %>
<div id="apDiv1"><img src="images/Untitled-1 copy.jpg" width="100%" height="150px" /></div>
<div id="apDiv2" style="padding-top:20px; padding-left:10px; font-family:'Palatino Linotype', 'Book Antiqua', Palatino, serif;"><b>Doctor Name-</b><%=Doctorname %><br></br> <b>Doctor Registration ID- </b><%=Registrationid %> <br></br> <b>Clinic Address-</b> <%=Address %> </div>
<div id="apDiv3"> <img src="images/Logo.jpg" width="150px" height="130px"/></div>
<div id="apDiv4">

<table align="center" cellpadding="10px">
<tr>
<td>NAME:</td><td><%=Patientsname %></td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td>AGE:</td><td><%=Age%></td> 
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td>SEX:</td><td><%=Sex%></td>
</tr>

</table>

</div>
<div id="apDiv5" style="padding-left:10px;"><img src="images/Untitled-1 copy.jpg" width="100%" height="60px" /></div>
<div id="apDiv6"></div>
<div id="apDiv7"><table>
<tr><td>B.p:</td></tr>
<tr><td>&nbsp;</td></tr>
<tr><td>Pulse:</td></tr></table></div>
<div id="apDiv8"><a href="#" onclick="window.print()">Print Here</a></div>
<div id="apDiv9" style="padding-left:10px;"><p>CLINIC NAME:<%=username %> <br> PHONE NUMBER:<%=mobile %> </p></div>
</body>
</html>
    