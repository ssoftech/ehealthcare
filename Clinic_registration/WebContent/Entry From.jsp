<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection"
import="java.sql.PreparedStatement" import="java.sql.ResultSet" import="java.io.IOException"%>
<%@page import="Model.DAO"%>
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
<script type="text/javascript">
function searchdoctor()
{
	var xhttp;
	var Reg_id= document.getElementById("regid").value;
	  var url = "EntryForm_Azax.jsp?regid="+Reg_id;
	  if (window.XMLHttpRequest) {
	    // code for modern browsers
	    xhttp = new XMLHttpRequest();
	    } else {
	    // code for IE6, IE5
	    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
	  }
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	      document.getElementById("ccdd").innerHTML = xhttp.responseText;
		automail();
	    }
	  };
	  xhttp.open("POST", url,true);
	  xhttp.send();
	
}
</script>
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
        <div class="col-md-12 graphs">
	   <div class="xs">
  	    <h3>Entry Form</h3>
  	    <div class="well1 white">
  	    <form action="entrydoctorservlet" method="Post">
  	    
          <fieldset>
            <div class="form-group"> 
              <label class="control-label">Clinic Name</label>
              <input type="text" class="form-control1"name="clinicname"  value="<%=username%>" required>
            </div>

              <div class="form-group">
              <label class="control-label"> Registration ID</label>
              <input type="text" class="form-control1" id="regid" name="registration" onkeyup="searchdoctor()" required>
            </div>
            <div id="ccdd">
                         <div class="form-group"> 
              <label class="control-label">Doctor Name</label>
              <input type="text" class="form-control1" name="Doctorname" required>
            </div>
            
             <div class="form-group filled"> 
              <label class="control-label">Specilization</label>
              <select class="form-control1" name="specilization" required>
                     <option value="">select</option>
<option value="Anesthesiologist">Anesthesiologist</option>
<option value="Cardiologist">Cardiologist</option>
<option value="Dermatologist">Dermatologist</option>
<option value="Epidemiologist">Epidemiologist</option>
<option value="ENT Specialist">ENT Specialist</option>
<option value="Neurologist">Neurologist</option>
<option value="Orthopedic Surgeon">Orthopedic Surgeon</option>
<option value="Physiologist">Physiologist</option>
<option value="Surgeon">Surgeon</option>
              </select>
            </div>
            <div class="form-group"> 
            <label class="control-label">Date</label>
             <input class="form-control1" id="Date" type="date" name="Date" />
            </div>
            
            <div class="form-group"> 
              <label class="control-label">From Time</label>
              <input type="time" class="form-control1" name="Fromtime" required>
              
            </div>
            
            <div class="form-group">
              <label class="control-label normal"> To Time</label>
              <input type="time" class="form-control1" name="Totime" required>
            </div>
           
            <div class="form-group">
              <button type="submit" class="btn btn-primary">Submit</button>
            </div>
            </div>
          </fieldset>
        </form>
      </div>
    </div>
  </div>  
	  <div class="span_11">
	    <div class="clearfix"> </div>
    </div>
    
		<div class="copy">
          <p>Copyright &copy; 2015 SSTL. All Rights Reserved | Design by <a href="http://w3layouts.com/" target="_blank">SSTL</a> </p>
	    </div>
		
      <!-- /#page-wrapper -->
     </div>
    <!-- /#wrapper -->
    </div>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
     
</body>
</html>
