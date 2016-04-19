<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection"
import="java.sql.PreparedStatement" import="java.sql.ResultSet" import="java.io.IOException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style>
.textboxclass {
height: 10px;
width: 80px;
}
</style>

<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script src="js/autocompleter.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<!-- User defied css -->
<link rel="stylesheet" href="CSS1/style1.css">

<link rel="stylesheet" type="text/css" href="CSS1/style2.css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script src="js/jquery.autocomplete.js"></script>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
		<style type="text/css">
#apDiv1 {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 895px;
	height: auto;
	z-index: 1;
}

#apDiv2 {
	padding-top: 
	max-width: 895px;
	height: auto;
	margin-right: 2px;
	overflow: scroll;
	overflow-x: hidden;
	overflow-y: hidden;
}

#apDiv3 {
	position: relative;
	width: 200px;
	height: 550px;
	margin-left: 25px;
	margin-right: 20px;
	float: left;
}

#apDiv4 {
	position: relative; width : 600px;
	min-height: 550px;
	margin-left: 0px;
	float: left;
	width: 600px;
}
#apDiv9 {
	position: absolute;
	right: 0px;
	top: 860px;
	width: 100px;
	height: 40px;
	
	
	
}
</style>
</head>

<body>
<%
String P_Name=request.getParameter("P_Name");
String P_Age=request.getParameter("P_Age");
String P_Sex=request.getParameter("P_Sex");
String P_dses=request.getParameter("P_Dses");

String Pmobile1=request.getParameter("pmobile1");
System.out.println("From preview prescription without design mobile is : "+Pmobile1);
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
	String hdr = "";
	String ftr = "";
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
	String sql10 = "Select * from size where id=?";
	PreparedStatement ps10 = con.prepareStatement(sql10);
	ps10.setInt(1, 5);
	ResultSet rs10 = ps10.executeQuery();
	while (rs10.next()) {
		hdr = rs10.getString("Header");
		ftr = rs10.getString("Footer");

	}
	
	
	}catch(Exception e){System.out.println(e);}


%>

<script>
var i =0;
function del()
{
	i=i+1;
	var mob=<%=Pmobile1%>;
	
	window.location="PatientView.jsp?del="+mob;
}
</script>
<div id="apDiv1" >
			<div id="apDiv2"
				style="margin-top: <%=hdr%>px; margin-bottom:<%=ftr%>px;">


				<div id="apDiv3" style="border-right: 1px solid black;">
				<tr><td>B.p:</td> <td><b><%=P_BP %></b></td><td> mm&nbspHg</td> </tr>
<br></br>
<tr><td>Pulse:</td><td><b>&nbsp;&nbsp;&nbsp;<%=P_Pls %></b></td><td>BPM</td></tr>
<br></br>
</table>
<table>
<tr><td>Test:</td></tr>
<%for(int i = 0; i<splt.length; i++)
	{%>
<tr><td><b>&nbsp;&nbsp;&nbsp;<%=splt[i] %></b></td><td></td></tr>

<%} %>

</table>
				</div>


				<div id="apDiv4">
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

					<table style="width: 98%; margin-left: 1%;	">

						<tr>
							<td style="height: 40px; border-bottom: 1px solid black;">Medicine Name</td>
							<td style="border-bottom: 1px solid black;">Doses</td>
							<td style="border-bottom: 1px solid black;">Direction</td>
						</tr>
<tr><td style="min-width: 45%;"><b><%=medi1 %></b></td><td style="width: 20%;"><b><%=nm1 %></b></td><td><b><%=sl1 %></b></td></tr>						
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


			</div>
		</div>





<div id="apDiv9" style="color:#FFF;"><a href="#" onclick="window.print(), del()">PRINT</a></div>


</body>
</html>
