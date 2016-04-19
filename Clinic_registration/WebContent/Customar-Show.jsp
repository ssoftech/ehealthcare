<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection"
import="java.sql.PreparedStatement" import="java.sql.ResultSet" import="java.io.IOException" %>
<%@page import= "java.util.Iterator" %>
<%@page import="bean.Doctorentry"%>
<%@page import="java.util.ArrayList"  import="Model.DAO"%>

<% String date=request.getParameter("s");
String clinicname=request.getParameter("cl");
String Mobile=request.getParameter("mobile");
System.out.println("Customer_Show "+date);
if(!date.equals("")){%>

<%  try{
	ArrayList<Doctorentry> ar=DAO.show6(date, clinicname);
/*  System.out.println("ssssss"); */
  if(ar!=null)
  { 
	 
	  %><div >
	  <table class="table"  rules="groups">
        <thead>
        		  <tr  class="bg-primary">
                      <td><b>Doctor name</b></td>
                      <td hidden=""><b>Registrationid</b></td>
                      <td><b>From time</b></td>
                      <td><b>To time</b></td>
                      <td><b>Specialization</b></td>
                      <td><b>GO</b></td>
                 </tr>
         </thead>
	  
	
	 <% Iterator<Doctorentry> it=ar.iterator() ;
	 
	 
	
	 
	 while(it.hasNext())
	  {
		 Doctorentry bn=it.next();
		  
		 System.out.println("In while loop : "+bn.getDoctorname());
		  %>



<tr >
<td><%=bn.getDoctorname() %></td>

<td hidden=""><%=bn.getRegistrationid() %></td>
<td><%=bn.getFormtime() %></td>
<td><%=bn.getTotime() %></td>
<td><%=bn.getSpecilization() %></td>


<td><a href="customerAppointment.jsp?ClinicName=<%=bn.getClinicname()%>&Doctorname=<%=bn.getDoctorname()%>&FromTime=<%=bn.getFormtime() %>&Registrationid=<%=bn.getRegistrationid()%>&Specilization=<%=bn.getSpecilization()%>&Date=<%=bn.getDate()%>&mobile=<%=Mobile%>">Click Here</a></td>
</tr>

<%}}
  
  
  else
	  {
	  System.out.println("s");
	  }
	  }
catch(Exception e)
{
	e.printStackTrace();
}%>
<%} %>


</table>
</div>
