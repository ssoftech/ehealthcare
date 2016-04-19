<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection"
import="java.sql.PreparedStatement" import="java.sql.ResultSet" import="java.io.IOException"%>
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

	
}
#apDiv2 {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 40%;
	height: 130px;
	
}
#apDiv3 {
	position: absolute;
	right:10px;
	top: 10px;
	width: 150px;
	height: 130px;

}
#apDiv40 {
	position: absolute;
	left: 33%;
	top: 30%;
	width: 40%;
	height: 130px;
	
}
#apDiv5 {
	position: absolute;
	left: 0px;
	top: 842px;
	width: 100%;
	height: 60px;
	
	
}
#apDiv6 {
	position: absolute;
	left: 230px;
	top: 250px;
	width: 2px;
	height: 70%;
	z-index: 6;
}
#apDiv7 {
	position: absolute;
	left: 10px;
	top: 300px;
	width: 130px;
	height: 70%;
	
}
#apDiv8 {
	position: absolute;
	left: 10px;
	top: 860px;
	width: 390px;
	height: 40px;
	

}
#apDiv11 {
	position: absolute;
	left: 37%;
	top: 50%;
	width: 40%;
	height: 130px;
	
}
#apDiv9 {
	position: absolute;
	right: 0px;
	top: 860px;
	width: 100px;
	height: 40px;
	
	
	
}
#apDiv10 {
	position: absolute;
	left: 450px;
	top: 30px;
	width: 40%;
	height: 130px;

}
#apDiv15 {
	position: absolute;
	left: 10px;
	top: 380px;
	width: 130px;
	height: 70%;
	z-index: 7;
}
#apDiv7 {
	position: absolute;
	left: 10px;
	top: 300px;
	width: 130px;
	height: 70%;

}
#apDiv70 {
	position: absolute;
	left: 15px;
	top: 400px;
	width: 250px;
	height: 70%;
	z-index: 70;
}
</style>
<%
String P_Name=request.getParameter("P_Name");
String P_Age=request.getParameter("P_Age");
String P_Sex=request.getParameter("P_Sex");
String P_dses=request.getParameter("P_Dses");
String Pmobile1=request.getParameter("pmobile1");
System.out.println("From preview prescription mobile is : "+Pmobile1);
String P_mob=request.getParameter("phno");
String P_BP=request.getParameter("P_BP");
String P_Pls=request.getParameter("P_Pls");
String medi1=request.getParameter("medi1");
String medi2=request.getParameter("medi2");

String medi3=request.getParameter("medi3");

String medi4=request.getParameter("medi4");

String medi5=request.getParameter("medi5");

String medi6=request.getParameter("medi6");

String medi7=request.getParameter("medi7");

String medi8=request.getParameter("medi8");

String medi9=request.getParameter("medi9");

String medi10=request.getParameter("medi10");

String medi11=request.getParameter("medi11");

String medi12=request.getParameter("medi12");

String nm1=request.getParameter("nm1");
String nm2=request.getParameter("nm2");
String nm3=request.getParameter("nm3");
String nm4=request.getParameter("nm4");
String nm5=request.getParameter("nm5");
String nm6=request.getParameter("nm6");
String nm7=request.getParameter("nm7");
String nm8=request.getParameter("nm8");
String nm9=request.getParameter("nm9");
String nm10=request.getParameter("nm10");
String nm11=request.getParameter("nm11");
String nm12=request.getParameter("nm12");
String sl1=request.getParameter("sl1");
String sl2=request.getParameter("sl2");
String sl3=request.getParameter("sl3");
String sl4=request.getParameter("sl4");
String sl5=request.getParameter("sl5");
String sl6=request.getParameter("sl6");
String sl7=request.getParameter("sl7");
String sl8=request.getParameter("sl8");
String sl9=request.getParameter("sl9");
String sl10=request.getParameter("sl10");
String sl11=request.getParameter("sl11");
String sl12=request.getParameter("sl12");
String P_Test=request.getParameter("P_Test");
String[] splt = P_Test.split(",");

String email=(String)session.getAttribute("email");
String name = "";
String name1 = "";
String fullname = "";
String rid = "";
String deg="";
 String ADDRESS="";
 String CName="";
 String CPh="";
HttpSession sees = request.getSession();
try{
	Connection con = DB.dba();
	String sql = "Select * from doctor_reg where email=?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, email);
	ResultSet rs = ps.executeQuery();
	if (rs.next()) {
		name = rs.getString("fname");
		name1 = rs.getString("lname");
		deg=rs.getString("degree");
		fullname= name+ " "+ name1 +" ("+deg+")";
		rid = rs.getString("Reg_ID");
		
	}
	String sql1 = "Select * from clinic where email=?";
	PreparedStatement ps1 = con.prepareStatement(sql1);
	ps1.setString(1, P_mob);
	ResultSet rs1 = ps1.executeQuery();
	while(rs1.next()) {
		ADDRESS = rs1.getString("Address");
		CName = rs1.getString("clinicname");
		CPh = rs1.getString("mobile");
	}	
	
	
	}catch(Exception e){System.out.println(e);}


%>
                
                
                
</head>

<body>

<script>
var i =0;
function del()
{
	i=i+1;
	var mob=<%=Pmobile1%>;
	
	window.location="PatientView.jsp?del="+mob;
}
</script>
<div id="apDiv1"><img src="images/Untitled-1 copy.jpg" width="100%" height="150px" /></div>
<div id="apDiv2" style="padding-top:20px; padding-left:10px; font-family:'Palatino Linotype', 'Book Antiqua', Palatino, serif;"><b>Doctor's Name-</b><%=fullname %> <br></br> <b>Address-</b> <%= ADDRESS%>    <br></br> <b>Registration ID- </b><%= rid %> <div id="apDiv10" align="center"> <h1><b><%=CName %> </b></h1></div>  </div>
<div id="apDiv3"> <img src="images/physician-symbol-hi.png" width="150px" height="130px"/></div>
<div id="apDiv40">

<table align="center" cellpadding="10px">


<tr>
<td>NAME:</td><td> <%=P_Name%></td>
<td></td>
<td>AGE:</td>
<td><%=P_Age%></td> 
<td>SEX:</td><td><%=P_Sex%></td>
</tr>

<tr>
<td>Disease:</td><td><b><%=P_dses%></b></td>

</tr>

</table>
</div>

<div id="apDiv11">
<table>
<tr>
<td style="min-width: 200px;">Medicine Name</td>
<td style="width: 200px;">Doses</td>
<td>Direction</td>

</tr>
<tr><td style="min-width: 30px;"><b><%=medi1 %></b></td><td style="width: 20px;"><b><%=nm1 %></b></td><td><b><%=sl1 %></b></td></tr>
<tr><td><b><%=medi2 %></b></td><td><b><%=nm2 %></b></td><td><b><%=sl2 %></b></td></tr>
<tr><td><b><%=medi3 %></b></td><td><b><%=nm3 %></b></td><td><b><%=sl3 %></b></td></tr>
<tr><td><b><%=medi4 %></b></td><td><b><%=nm4 %></b></td><td><b><%=sl4 %></b></td></tr>
<tr><td><b><%=medi5 %></b></td><td><b><%=nm5 %></b></td><td><b><%=sl5 %></b></td></tr>
<tr><td><b><%=medi6 %></b></td><td><b><%=nm6 %></b></td><td><b><%=sl6 %></b></td></tr>
<tr><td><b><%=medi7 %></b></td><td><b><%=nm7 %></b></td><td><b><%=sl7 %></b></td></tr>
<tr><td><b><%=medi8 %></b></td><td><b><%=nm8 %></b></td><td><b><%=sl8 %></b></td></tr>
<tr><td><b><%=medi9 %></b></td><td><b><%=nm9 %></b></td><td><b><%=sl9 %></b></td></tr>
<tr><td><b><%=medi10 %></b></td><td><b><%=nm10 %></b></td><td><b><%=sl10 %></b></td></tr>
<tr><td><b><%=medi11 %></b></td><td><b><%=nm11 %></b></td><td><b><%=sl11 %></b></td></tr>
<tr><td><b><%=medi12 %></b></td><td><b><%=nm12 %></b></td><td><b><%=sl12 %></b></td></tr>

</table>

</div>


<input type="text" value="<%=Pmobile1%>"/>

<div id="apDiv5" style="padding-left:10px;"><img src="images/Untitled-1 copy.jpg" width="100%" height="60px" /></div>
<div id="apDiv6"><img src="images/Untitled-1 copy.jpg" width="2px" height="100%"/></div>
<div id="apDiv7"><table>
<tr><td>B.p:</td> <td><b><%=P_BP %></b></td><td> mm&nbspHg</td> </tr>
<tr><td>&nbsp;</td></tr>
<tr><td>Pulse:</td><td><b>&nbsp;&nbsp;&nbsp;<%=P_Pls %></b></td><td>BPM</td></tr>
<tr><td>&nbsp;</td></tr>
</table>
</div>
<div id="apDiv70"><table>
<tr><td>Test:</td></tr>
<%for(int i = 0; i<splt.length; i++)
	{%>
<tr><td><b>&nbsp;&nbsp;&nbsp;<%=splt[i] %></b></td><td></td></tr>

<%} %>

</table>
</div>
<div id="apDiv15">


</div>
<div id="apDiv8">CLINIC NAME: <%=CName %><br> PHONE NUMBER: <%=CPh %></div>
<div id="apDiv9" style="color:#FFF;"><a href="#" onclick="window.print(), del()">PRINT</a></div>
</body>
</html>
    