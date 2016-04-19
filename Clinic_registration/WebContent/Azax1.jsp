
 <%@page import="java.sql.*" %>
<%@page import="db.*" %>




<% 
String Date= request.getParameter("s1");
String From= request.getParameter("s2");
String To= request.getParameter("s3");
String Text= request.getParameter("s4"); 
String Doctor = request.getParameter("s5");
String email=(String)session.getAttribute("email");
String docdetails=Doctor+","+Date+","+From+","+To;;


Connection con= DB.dba();
String sql = "select * from doctor_scheduler where  date=? AND docemail=? AND docdetails=?";

				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1, Date);
				ps.setString(2, email);
				ps.setString(3, docdetails);
			ResultSet rs=ps.executeQuery();
			int i=1;
			while(rs.next())
			{
				session.setAttribute("id",  rs.getInt(1));
			}%>	

<div id="abcd">
<div align="center">
<table>
	<tr>
	<td><h3>Date</h3>

	<input type="text" id="datetimepicker9" name="Date" value="<%=Date%>" /></td>
	<td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         </td>

	<td><h3>From Time</h3>
	
	<input type="text" id="datetimepicker1" name="From" value="<%=From%>"/></td>
	
	<td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         </td>

	<td><h3>To Time</h3>
	
	<input type="text" id="datetimepicker3" name="To" value="<%=To%>"/></td>
</tr>
</table>
</div>
<div align="center">
<table>
<tr>
<td><br><br><br><br><br><br><br><br></td>
<td><h3>Appointment</h3>
<input type="text" id="Description" name="Description" value="<%=Text%>" /></td>

<td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         </td>

<td><input type="hidden" name="DoctorName"  value="<%=Doctor%>"></td></tr>
<td> &nbsp;&nbsp;</td>
</table>
</div>
<table  align="center">
<td ><input type="submit" name="action" value="Update Event"> </td>
<td ><input type="submit" name="action" value="Delete Event"> </td>
</table>
</div>

		

