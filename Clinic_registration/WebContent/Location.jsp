<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Model.DAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection,java.sql.PreparedStatement,java.sql.ResultSet,java.io.IOException,java.util.*"%>
<%@page import= "java.util.Iterator" import=" bean.Doctorentry" %>
<%@page import="java.util.ArrayList"%>



<%@page import="bean.Doctorbean"%>


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
	      document.getElementById("state").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("POST", "state.jsp?s="+str, true);
	  xhttp.send();
	}
function fun11(str) {
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
	      document.getElementById("city").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("POST", "city.jsp?s="+str, true);
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
       
    <div class="container-fluid">
<div class="row">

<form action="LocationServlet" method="post">


<div class="col-md-3">

<div class="form-group">
      <label for="sel1">Country</label>
<select name="country" class="form-control1" onchange="fun(this.value)">
<option value="selec">select</option>
<option value="India">India</option>
<option value="Usa">USA</option>
</select>
</div>
</div>


<div class="col-md-3">

<div class="form-group" id="state">
      <label for="sel1">State</label>
<select class="form-control1" name="state" >
<option value="select">select</option>
</select>
</div>
</div>

<div class="col-md-3">

<div class="form-group" id="city">
      <label for="sel1">City</label>
<select class="form-control1" name="city" >
<option value="select">select</option>
</select>
</div>
</div>
<div class="col-md-3">
<div class="form-group" style="padding-top: 25px;">
 
<input type="submit" class="form-control1 btn-primary" name="Go" id="Go" value="submit"/>
</div>
</div>
</form>
</div>
</div>
<br />

<div class="container-fluid">
<div class="row">

<%  try{
	ArrayList<Doctorbean> ar=(ArrayList<Doctorbean>)request.getAttribute("ar");
System.out.println("ssssss");
  if(ar!=null)
  { 
	  System.out.println("ar"+ar);
  %><table class="table text-left">
  <thead class="bg-primary">
  <th>Image</th>
  <th>Firstname</th>
  <th>Lastname</th>
  <th hidden="">Email</th>
  <th>Gender</th>
  <th>Experience</th>
  <th>Qualification</th>
  <th>Spcilization</th>
  <th>Mobile</th>
  <th>Contact</th>
	</thead>  
	 <% Iterator<Doctorbean> it=ar.iterator() ;
	 /* System.out.println("hiiiiiii"+it); */
	 while(it.hasNext())
	  {
		  Doctorbean ad=it.next();
		  System.out.println("hiiiiii "+ad.getFirstname()+" "+ ad.getLastname()+""+ad.getEmail());
		  
		  %>
<tr><td><img src="images/<%=ad.getFile()%>" height="40" width="40"></img></td>
<td><%=ad.getFirstname() %></td>
<td><%=ad.getLastname() %></td>
<td hidden=""><%=ad.getEmail() %></td>
<td><%=ad.getGender() %></td>
<td><%=ad.getExperience() %></td>
<td><%=ad.getQualification() %></td>
<td><%=ad.getSpecilization() %></td>
<td><%=ad.getMobile() %></td>
<td><a href="contact.jsp?email_id=<%=ad.getEmail()%>">Click Here</a></td>
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
</table>
</div>
</div>

      </div>
      
      <div>
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
