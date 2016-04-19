<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection"
import="java.sql.PreparedStatement" import="java.sql.ResultSet" import="java.io.IOException"%>

    <%@page import="java.sql.*" import="Model.DAO" %>

<!DOCTYPE HTML>
<html>
<head>
<title>Modern an Admin Panel Category Flat Bootstarp Resposive Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="css/lines.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!----webfonts--->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!---//webfonts--->  
<!-- Nav CSS -->
<link href="css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<!-- Graph JavaScript -->
<script src="js/d3.v3.js"></script>
<script src="js/rickshaw.js"></script>

</head>
<body>
<div id="wrapper">
     <!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp">SSTL</a>
            </div>
            <!-- /.navbar-header -->
            <ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
	        		<a href="#">
	        		
			<%
				String username = (String)session.getAttribute("clinicname");
			String email=(String)session.getAttribute("email");
			   if(username==null)
			   {
				  response.sendRedirect("Cliniclogin.jsp");
			   }
			   String filename=DAO.getfilefromDb(email);
                %>
		
<span><h5 style="margin-top: 15%;"><font color = white>welcome &nbsp;&nbsp; <%=username%></font></h5></span>
	        		</a>
	      
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="images/<%=filename%>" width="40px" height="40px"/></a>
	        		<ul class="dropdown-menu">
						
						<li class="dropdown-menu-header text-center">
							<strong>Account Settings</strong>
						</li>
						<li class="m_2"><a href="Edit profile.jsp"><i class="fa fa-user"></i> Profile</a></li>
						<li class="m_2"><a href="update.jsp"><i class="fa fa-shield"></i> Update profile</a></li>
						<li class="m_2"><a href="ResetPassword.jsp"><i class="fa fa-refresh"></i> Reset Password</a></li>
						<li class="m_2"><a href="ClinicLogoutServlet"><i class="fa fa-power-off"></i> Logout</a></li>	
	        		</ul>
	      		</li>
			</ul>
			<form class="navbar-form navbar-right">
              <input type="text" class="form-control" value="Search..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search...';}">
            </form>
              <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                         
                    <li>
                         <a href="index.jsp"><i class="fa fa-home nav_icon"></i>Home</a>
                         
                            <!-- /.nav-second-level -->
                        </li>
                       
                        <li>
                            <a href="#"><i class="fa fa-search nav_icon"></i>Find Doctors<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="Location.jsp">Location</a>
                                </li>
                                <li>
                                    <a href="Specialization.jsp">Specialization</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                         <a href="NewsLetter.jsp"><i class="fa fa-indent nav_icon"></i>NewsLetter</a>
                         
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-envelope nav_icon"></i>Mailbox<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="inbox.jsp">Inbox</a>
                                </li>
                                <li>
                                    <a href="compose.jsp">Compose email</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="Appointment.jsp"><i class="glyphicon glyphicon-pushpin nav_icon"></i>Appointment</a>
                        </li>
                         <li>
                            <a href="#"><i class="glyphicon glyphicon-calendar nav_icon"></i>Schedule<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="Patient.jsp">Patient</a>
                                </li>
                                <li>
                                    <a href="Doctor.jsp">Doctor</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="glyphicon glyphicon-plus nav_icon"></i>New Doctor<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="Entry From.jsp">Entry From</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="ClinicLogoutServlet"><i class="glyphicon glyphicon-off nav_icon"></i>Logout</a>
                        </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        <div id="page-wrapper">
        <div class="graphs">
     	<div class="col_3">
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-home user2 icon-rounded"></i>
                    <div class="stats">
                      <a href="index.jsp"><strong>HOME</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-calendar user2 icon-rounded"></i>
                    <div class="stats">
                       <a href="Appointment.jsp"><strong>Appointment</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-pencil-square user2 icon-rounded"></i>
                    <div class="stats">
                     <a href="Entry From.jsp"><strong>Entry Doctor</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-search user2 icon-rounded"></i>
                    <div class="stats">
                     <a href="Specialization.jsp"><strong>Search Doctor</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	 </div>
        	<div class="clearfix"> </div>
      </div>
      <div class="col_1">
		    <div class="col-md-4 span_7">
            
            <div class="container"></div>
            
            </div>
		    <div class="clearfix"> </div>
	  </div>
      <div class="copy">
      <script>
function fun(str) {
	
	  var xhttp;
	  if (window.XMLHttpRequest) {
	    // code for modern browsers
	    xhttp = new XMLHttpRequest();
	    } else {
	    // code for IE6, IE5
	    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
	  }
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	      document.getElementById("doctor").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("POST", "doc.jsp?s="+str, true);
	  xhttp.send();
	}
function fun1(str,str1) {

	
	  var xhttp;
	  if (window.XMLHttpRequest) {
	    // code for modern browsers
	    xhttp = new XMLHttpRequest();
	    } else {
	    // code for IE6, IE5
	    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
	  }
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	      document.getElementById("textbox").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("POST", "registrationid.jsp?s="+str+"&s1="+str1, true);
	  xhttp.send();
	}
	</script>
	
	


<form action="AppointmentServlet" method="post">
<div class="container-fluid">

 <div class="row">
 
 <div class="col-md-12 bg-primary"><h2> Patient Appointment </h2></div>
 
 </div>
 <br>
  <div class="row">
 <div class="col-md-12">
 <input type="text" name="clinicname" value="<%=username %>" hidden="name"/>
 </div>
 </div>
<input type="hidden" name="clinicemail" value="<%=email%>">
  <div class="row">

<div class="col-md-4">
  <label>Patientname</label>  
  <input id="text" name="Patientname" type="text" placeholder="Enter Patient Name" class="form-control1" required> 
</div>

<div class="col-md-4">
  <label>Age</label>  
  <input id="text" name="age" type="text" placeholder="Enter Patient's age" class="form-control1" required>
</div>

<div class="col-md-4">
  <label>Gender</label>
    <select id="sex" name="sex" class="form-control1" required>
      <option value="Select">Select</option>
      <option value="Male">male</option>
      <option value="Female">Female</option>
      <option value="Other">Other</option>
    </select>
</div>
</div>
<br>
<div class="row">
<div class="col-md-6">
  <label>Specialization</label>  
 <select  name="specilization" class="form-control1" onchange="fun(this.value)" required>
<option value="select">select specialization</option>

<%
Connection con=DB.dbcon();
if(con!=null)
{
String sql="select distinct Specilization from  doctor_entry where clinicname=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, username);

ResultSet rs=ps.executeQuery();

while(rs.next())
{
	%><option value="<%=rs.getString(1) %>"><%=rs.getString(1) %></option>
	<%}} %>
	</select>
</div>

<div class="col-md-6" id="doctor">
  <label>Doctor name</label>   
  <select name="doctor" class="form-control1" required>
<option value="select" selected="selected">select doctor's name</option>
</select> 
</div>
		</div>
        
    <br>    
        <div class="row">
<div class="col-md-6" id="textbox" hidden="">
  <label>Registration_ID</label>  
  <input id="text" name="rid" type="text" placeholder="" class="form-control1" readonly="readonly"> 
</div>

<div class="col-md-12">
  <label>Mobile No</label>   
 
    <div class="input-group">
      <span class="input-group-addon">+91</span>
      <input id="text" name="mobile" class="form-control1" placeholder="Enter Your Mobile Number" type="text" required>
    </div>
  
</div>
		</div>
        
        <br>
        
        <div class="row">
<div class="col-md-6">
  <label>Disease</label>  
   <textarea class="form-control1" id="textarea" name="disease"></textarea> 
</div>

<div class="col-md-6">
  <label>Address</label>  
   <textarea class="form-control1" id="textarea" name="address" required></textarea> 
</div>
		</div>
		
<br>
		
        <div class="row">
<div class="col-md-6">
  <label>Date</label>  
  <input id="text" name="date" type="date" placeholder="" class="form-control1" required> 
</div>

<div class="col-md-6">
  <label>Time</label>   
  <input id="text" name="time" type="time" placeholder="" class="form-control1" required>
</div>
		</div>
        
<br>

<div class="row">
<div class="col-md-12">
<input type="submit" name="Submit" id="Submit" value="Submit" class="btn btn-primary">
</div>
</div>
       
      </div>
      </form>  
      </div>
	  <div class="span_11">
	    <div class="clearfix"> </div>
    </div>
    <div class="content_bottom">
      <div class="clearfix"> </div>
	    </div>
		<div class="copy">
          <p>Copyright &copy; 2015 SSTL. All Rights Reserved | Design by <a href="http://w3layouts.com/" target="_blank">SSTL</a> </p>
	    </div>
		</div>
       </div>
      <!-- /#page-wrapper -->
   </div>
    <!-- /#wrapper -->
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
</body>

</html>
