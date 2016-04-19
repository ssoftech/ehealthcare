 <%@page import="java.sql.*" %>
<%@page import="db.*" %>


<%
String Date= request.getParameter("val");
System.out.println(Date);
String email=(String)session.getAttribute("email");
System.out.println("Date");

%>
<div id="bbc">
<%

Connection con= DB.dba();
String sql = "select * from doctor_scheduler where date=? AND docemail=?";

				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1, Date);
				ps.setString(2, email);
			ResultSet rs=ps.executeQuery();
			int i=1;%>		
				
<table align="center" border="1">

 <%

while(rs.next())
	
				{
	if(i==1){%>
		 <tr>

    <td>Date</td>
    <td>From Time</td>
    <td>To Time</td>
    <td>Appointment</td>

   
  </tr>
				<%i++;}String st=rs.getString(6);
				String[] strpart= st.split(",");
				String strsplit = strpart[0];
				%>
				<tr>

    <td ><%=rs.getString(2) %></td>
    <td><%=rs.getString(3) %></td>
    <td><%=rs.getString(4) %></td>
    <td><%=rs.getString(5) %></td>

    <td><input type="button" value="Select" onclick="fun('<%=rs.getString(2) %>','<%=rs.getString(3) %>','<%=rs.getString(4) %>','<%=rs.getString(5)%>','<%=strsplit %>')"></td>
				<%
				session.setAttribute("details1",  rs.getString(6));
				
				}
/* else
{
	System.out.println("No record found");
}
 */ %>
				 </tr>

 
</table>
</div>

<script type="text/javascript">
function fun(s1,s2,s3,s4,s5) {
	  var xhttp;
	  var url = "Azax1.jsp?s1="+s1+"&s2="+s2+"&s3="+s3+"&s4="+s4+"&s5="+s5;
	  if (window.XMLHttpRequest) {
	    // code for modern browsers
	    xhttp = new XMLHttpRequest();
	    } else {
	    // code for IE6, IE5
	    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
	  }
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	      document.getElementById("abcd").innerHTML = xhttp.responseText;
	      $('#datetimepicker9').datetimepicker({
	  		/* onGenerate:function( ct ){
	  			$(this).find('.xdsoft_date.xdsoft_weekend')
	  			
	  		.addClass('xdsoft_disabled');
	  		}, */
	  		timepicker:false,
	  		format:'d/m/Y',
	  		formatDate:'Y/m/d',
	  		weekends:['01.01.2014','02.01.2014','03.01.2014','04.01.2014','05.01.2014','06.01.2014']
	  	
	  	});
	      $('#datetimepicker1').
	  	datetimepicker({
	  	datepicker:false,
	  	format:'H:i',
	  	step:30
	  });

	  	
	  	$('#datetimepicker3').
	  	datetimepicker({
	  	datepicker:false,
	  	format:'H:i',
	  	step:30
	  });
	    }
	  };
	  xhttp.open("POST", url,true);
	  xhttp.send();
	}
</script>
