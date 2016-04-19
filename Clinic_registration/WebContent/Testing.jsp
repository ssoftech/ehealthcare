<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javafx.scene.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<%@page import="db.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>

<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CSS/jquery.datetimepicker.css" type="text/css" media="screen" title="no title" charset="utf-8">
<script src="js/jquery.datetimepicker.js" type="text/javascript" charset="utf-8"></script>

<script src="CSS/jquery.datetimepicker.min.js" type="text/javascript" charset="utf-8"></script>
<style type="text/css">



.custom-date-style
 {
	
background-color: red !important;

}


.input
{	
}

.input-wide
{
	width: 500px;

}

</style>

<script type="text/javascript">




function fun1(val)
{
    var val =document.getElementById("datetimepicker10").value;
	
	alert(val);
	
	  var xhttp;
	  var url = "Azax2.jsp?val="+val;
	  if (window.XMLHttpRequest) {
	    // code for modern browsers
	    xhttp = new XMLHttpRequest();
	    } else {
	    // code for IE6, IE5
	    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
	  }
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	      document.getElementById("bbc").innerHTML = xhttp.responseText;

	    }
	  };
	  xhttp.open("POST", url,true);
	  xhttp.send();

	}

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


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body >
<form action="SchedulerServlet" method="post" >
<div id="abcd">
<table>
	
	<td><h3>Date</h3>

	<input type="text" id="datetimepicker9" name="Date"/></td>
	<td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         </td>

	<td><h3>From Time</h3>
	
	<input type="text" id="datetimepicker1" name="From"/></td>
	
	<td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         </td>

	<td><h3>To Time</h3>
	
	<input type="text" id="datetimepicker3" name="To" /></td>


</table>
<table>
<td><br><br><br><br><br><br><br><br></td>
<td> <input type="text" id="Description" name="Description" cols="37" rows="5"></td>

<td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         </td>

<td><input type="text" name="DoctorName">
</table>
</div>
<table>


	<td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         </td>
	
	<td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         </td>
<td><h3>Search Date</h3>
<input type="text" id="datetimepicker10" name="SearchDate"  /></td>


	<td><input type="button" value="SelectDate" onclick="fun1()"></td>
			
<td><br><br><br></td>

<td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        </td>
<td ><input type="submit" name="action" value="Add Event"> </td>
<td ><input type="submit" name="action" value="Update Event"> </td>
<td ><input type="submit" name="action" value="Delete Event"> </td>
</table>
</form>

<%
Connection con=DB.dbcon();
String sql = "select * from doctor_scheduler";
				PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			int i=1;%>		
				
<table align="center" border="1">

 <%
 
while(rs.next())
	
				{
	if(i==1){%>
		 <tr>
    <td>Selected Date Id</td>
    <td>Date</td>
    <td>From Time</td>
    <td>To Time</td>
    <td>Appointment</td>
    <td>Doctor Name</td>
   
  </tr>
				<%i++;}String st=rs.getString(6);
				String[] strpart= st.split(",");
				String strsplit = strpart[0];
				%>
				<tr>
	<td><%=rs.getString(1)%></td>
    <td ><%=rs.getString(2) %></td>
    <td><%=rs.getString(3) %></td>
    <td><%=rs.getString(4) %></td>
    <td><%=rs.getString(5) %></td>
    <td><%=strsplit %></td>
    <td><input type="button" value="Select" onclick="fun('<%=rs.getString(2) %>','<%=rs.getString(3) %>','<%=rs.getString(4) %>','<%=rs.getString(5)%>','<%=strsplit %>')"></td>
				<%
				session.setAttribute("details1",  rs.getString(6));
				} %>
				 </tr>

 
</table>
<br><br><br>
<div id="bbc"> 

<table  align="center" border="1">
 <tr>
    <td>Selected Date Id</td>
    <td>Date</td>
    <td>From Time</td>
    <td>To Time</td>
    <td>Appointment</td>
    <td>Doctor Name</td>
   
  </tr>
</table>
</div>

<br><br><br>
<%


java.util.Date date = new java.util.Date();
SimpleDateFormat df = new SimpleDateFormat();
df.applyPattern("dd/MM/yyyy");
String dt= df.format(date);
System.out.println(dt);

String sql1 = "select * from doctor_scheduler where date=?";
				PreparedStatement ps1=con.prepareStatement(sql1);
				ps1.setString(1, dt);
			ResultSet rs1=ps1.executeQuery();
			%>		
				
<table align="center" border="1">

		 <tr>
    <td>Today Date Id</td>
    <td>Today Date</td>
    <td>Today From Time</td>
    <td>Today To Time</td>
    <td>Today Appointment</td>
    <td>Today Doctor Name</td>
   
  </tr>
 <%
 
while(rs1.next())
	
				
	{%>

				<%String st1=rs1.getString(6);
				String[] strpart1= st1.split(",");
				String strsplit1 = strpart1[0];
				%>
				<tr>
	<td><%=rs1.getString(1)%></td>
    <td ><%=rs1.getString(2) %></td>
    <td><%=rs1.getString(3) %></td>
    <td><%=rs1.getString(4) %></td>
    <td><%=rs1.getString(5) %></td>
    <td><%=strsplit1 %></td>
    				<%} %>
				 </tr>

 
</table>



</body>
<script src="js/jquery.js"></script>

<script src="js/jquery.datetimepicker.full.js"></script>

<script>/*
window.onerror = function(errorMsg) {
	$('#console').html($('#console').html()+'<br>'+errorMsg)
}*/

function i()
{
var i= document.getElementById('datetimepicker1').value;
document.write(i);

var timer = 24; 

var d1 = new Date(); 
var d2 = new Date();






d1.setHours(d2.getHours()+(timer/12) ); 
d1.setMinutes(new Date().getMinutes()); 
//document.write(d1.toTimeString("hh:mm"));
document.write(d1.getHours()+":"+d1.getMinutes());
}


$.datetimepicker.setLocale('en');


	$('#datetimepicker_format').datetimepicker({value:'2015/04/15 05:03', format: $("#datetimepicker_format_value").val()});

	$("#datetimepicker_format_change").on("click", function(e){
	$("#datetimepicker_format").data('xdsoft_datetimepicker').setOptions({format: $("#datetimepicker_format_value").val()});
});

	$("#datetimepicker_format_locale").on("change", function(e){
	$.datetimepicker.setLocale($(e.currentTarget).val());
});

$('#datetimepicker').datetimepicker({
dayOfWeekStart : 1,

	lang:'en',
disabledDates:['1986/01/08','1986/01/09','1986/01/10'],
startDate:	'1986/01/05'
});
$('#datetimepicker').datetimepicker({value:'2015/04/15 05:03',step:10});

$('.some_class').datetimepicker();

	
$('#default_datetimepicker').datetimepicker({
	formatTime:'H:i',
	formatDate:'d.m.Y',
	//defaultDate:'8.12.1986', // it's my birthday
	defaultDate:'+03.01.1970', // it's my birthday
	defaultTime:'10:00',

	timepickerScrollbar:false
});


	var logic = function( currentDateTime ){
	if (currentDateTime && currentDateTime.getDay() == 6){
		this.setOptions({
			minTime:'11:00'
		});
	}else
		this.setOptions({
			minTime:'8:00'

	});
};

$('#datetimepicker2').datetimepicker({
	yearOffset:222,
	lang:'ch',
	timepicker:false,
	format:'d/m/Y',
	formatDate:'Y/m/d',

	minDate:'-1970/01/02', // yesterday is minimum date
	maxDate:'+1970/01/02' // and tommorow is maximum date calendar
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
		$('#datetimepicker10').datetimepicker({
			/* onGenerate:function( ct ){
				$(this).find('.xdsoft_date.xdsoft_weekend')
				
			.addClass('xdsoft_disabled');
			}, */
			timepicker:false,
			format:'d/m/Y',
			formatDate:'Y/m/d',
			weekends:['01.01.2014','02.01.2014','03.01.2014','04.01.2014','05.01.2014','06.01.2014']
		
		});
			

	
</script>








</html>