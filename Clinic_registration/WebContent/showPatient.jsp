<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection"
import="java.sql.PreparedStatement" import="java.sql.ResultSet" import="java.io.IOException"%>
<%@page import= "java.util.Iterator" %>
<%@page import="bean.Patient"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container text-right">
<form action=clinicqueueservlet method="post">
<%String Registrationid= request.getParameter("registrationid"); %>
<%String Doctorname=request.getParameter("doctorname"); %>
<%String Date=request.getParameter("Date"); %>

<input type="hidden" name="registrationid" value="<%=Registrationid%>"/>
<input type="hidden" name="doctorname" value="<%=Doctorname%>"/>
<input type="hidden" name="Date" value="<%=Date%>"/>

<div class="row ">
<div class="col-md-11">
<a href="#" onclick="window.print()">Print Here</a>
</div>
<div class="col-md-1 text-right">
<input type="submit" value="submit">
</div>
</div>
</form>
</div>
<%  try{
	ArrayList<Patient> ar=(ArrayList<Patient>)request.getAttribute("ar");
System.out.println("ssssss");
  if(ar!=null)
  { 
	  System.out.println("ar"+ar);
	  %>
<div class="container-fluid">
<div class="row">
<div class="col-md-12" >
<h2>Patients List</h2>
</div>

</div>

<div class="row text-left">
<div class="col-md-12">
<table class="table" rules="rows">
<thead class="bg-primary">
<tr>
<th>Patient Name</th>
<th>Age</th>
<th>DISEASE</th>
<th>Mobile No</th>
<th>SEX</th>
<th>Print</th>
</tr>
</thead>
	
	 <% Iterator<Patient> it=ar.iterator() ;
	  System.out.println("hiiiiiii"+it); 
	 while(it.hasNext())
	  {
		 
		 Patient pb=it.next();
		 
		  %>
<tr>
<td><%=pb.getPatientname() %></td>
<td><%=pb.getAge() %></td>
<td><%=pb.getDisease() %></td>
<td><%=pb.getMobileno() %></td> 
<td><%=pb.getSEX() %></td>
<td><a href="print.jsp?AGE=<%=pb.getAge()%>&Sex=<%=pb.getSEX()%>&Patientname=<%=pb.getPatientname()%>&doctor=<%=pb.getDoctorname()%>&registrationid=<%=pb.getRegistrationid()%>">Click Here</a></td>
<%}}
 
	  }
catch(Exception e)
{
	e.printStackTrace();
}%>
</tr>

</table> 
 </div>
</div>
</body>
</html>