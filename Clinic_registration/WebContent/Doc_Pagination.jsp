<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection"
import="java.sql.PreparedStatement" import="java.sql.ResultSet" import="java.util.*" import="java.text.*" import="java.text.SimpleDateFormat" import="java.io.IOException"%>

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

<link href="CSS/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->

<link href="CSS/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="CSS/lines.css" rel='stylesheet' type='text/css' />
<link href="CSS/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="CSS/test.css" type="text/css" media="screen" title="Test Stylesheet" charset="utf-8" />
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
  

      

<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>

<!---//webfonts--->  
<!-- Nav CSS -->
<link href="CSS/custom.css" rel="stylesheet">
 
<!-- Metis Menu Plugin JavaScript -->

<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<!-- Graph JavaScript -->
<script src="js/d3.v3.js"></script>
<script src="js/rickshaw.js"></script>


<script type="text/javascript">
function dis()
{
	var xhttp;
	  var url = "AzaxTesting.jsp";
	  if (window.XMLHttpRequest) {
	    // code for modern browsers
	    xhttp = new XMLHttpRequest();
	    } else {
	    // code for IE6, IE5
	    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
	  }
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	      document.getElementById("ccd").innerHTML = xhttp.responseText;
		automail();
	    }
	  };
	  xhttp.open("POST", url,true);
	  xhttp.send();
	
	}
function automail()
{
	var xhttp;
	  var url = "AzaxTesting1.jsp";
	  if (window.XMLHttpRequest) {
	    // code for modern browsers
	    xhttp = new XMLHttpRequest();
	    } else {
	    // code for IE6, IE5
	    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
	  }
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	      document.getElementById("ddc").innerHTML = xhttp.responseText;

	    }
	  };
	  xhttp.open("POST", url,true);
	  xhttp.send();
	
	}
	
function automail()
{
	var xhttp;
	  var url = "AzaxTesting3.jsp";
	  if (window.XMLHttpRequest) {
	    // code for modern browsers
	    xhttp = new XMLHttpRequest();
	    } else {
	    // code for IE6, IE5
	    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
	  }
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	      document.getElementById("ccd1").innerHTML = xhttp.responseText;

	    }
	  };
	  xhttp.open("POST", url,true);
	  xhttp.send();
	
	}
</script>

</head>
<body onload="dis()">
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
	        		<a href="index.jsp">
	        		
			<%
				
			String email=(String)session.getAttribute("email");
			String name = "";
			String filename="";
			HttpSession sees = request.getSession();
			try{
				Connection con = DB.dba();
				String sql = "Select * from doctor_reg where email=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, email);
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					name = rs.getString("fname");
					System.out.println("Fname is : " +name);
					sees = request.getSession();
					sees.setAttribute("fname", name);
					filename=rs.getString("Image");
				}
				}catch(Exception e){System.out.println(e);}
			
			String username = (String)session.getAttribute("fname");
			   if(username==null)
			   {
				  response.sendRedirect("Doctor_Login.jsp");
			   }
			   System.out.println("Email from Index JSP: " +email);
                %>
		
<span><h5 style="margin-top: 15%;"><font color = white>welcome &nbsp;&nbsp; <%=username%></font></h5></span>
	        		</a>
	        		</li>
	        		
	        		            <li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-comments-o"></i><span class="badge">4</span></a>

	        		<ul class="dropdown-menu">
						<li class="dropdown-menu-header">
							<strong>Up Coming Schedule</strong>
							<div class="progress thin">
							  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
							    <span class="sr-only">40% Complete (success)</span>
							  </div>
							</div>
						</li>
						<li class="avatar">
							<a href="#">
								<img src="images/1.jpg" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>
								<span class="label label-info">NEW</span>
							</a>
						</li>
						<li class="avatar">
							<a href="#">
								<img src="images/2.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>
								<span class="label label-info">NEW</span>
							</a>
						</li>
						<li class="avatar">
							<a href="#">
								<img src="images/3.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>
							</a>
						</li>
						<li class="avatar">
							<a href="#">
								<img src="images/4.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>
							</a>
						</li>
						<li class="avatar">
							<a href="#">
								<img src="images/5.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>
							</a>
						</li>
						<li class="avatar">
							<a href="#">
								<img src="images/pic1.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>
							</a>
						</li>
						<li class="dropdown-menu-footer text-center">
							<a href="#">View all messages</a>
						</li>	
	        		</ul>
	      		</li>
	      
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="images/<%=filename%>" width="40px" height="40px"/></a>
	        		<ul class="dropdown-menu">
						
						<li class="dropdown-menu-header text-center">
							<strong>Account Settings</strong>
						</li>
							<li class="m_2"><a href="Doc_profile.jsp"><i class="fa fa-user"></i> Profile</a></li>
						<li class="m_2"><a href="Doc_update.jsp"><i class="fa fa-shield"></i> Update profile</a></li>
						<li class="m_2"><a href="ResetPassword.jsp"><i class="fa fa-refresh"></i> Reset Password</a></li>
						<li class="m_2"><a href="DoctorLogoutServlet"><i class="fa fa-power-off"></i> Logout</a></li>
	        		</ul>
	      		</li>
			</ul>
			<form class="navbar-form navbar-right">
			<div>
			

              <input type="text" class="form-control" value="Search..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search...';}">
            </div>
            </form>
              <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="#"><i class="glyphicon glyphicon-user nav_icon"></i>Profile<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="Doc_update.jsp">Edit Profile</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-indent nav_icon"></i>Work<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="Hospital.html">Hopital</a>
                                </li>
                                <li>
                                    <a href="PatientView.jsp">Patient View</a>
                                </li>
                                      <li>
                                    <a href="PrescriptionSettings.jsp">Prescription Settings</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-envelope nav_icon"></i>Mailbox<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="inbox.jsp">Inbox</a>
                                </li>
                                <li>
                                    <a href="Doc_contact.jsp">Compose email</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-envelope nav_icon"></i>Blog<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="BlogCreate.jsp">Create a Blog</a>
                                </li>
                                <li>
                                    <a href="BlogView.jsp">View Blog</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href=""><i class="glyphicon glyphicon-pushpin nav_icon"></i>Appointment<span class="fa arrow"></span></a>
                             <ul class="nav nav-second-level">
                          
                                <li>
                                    <a href="AddSchedule.jsp">Add Appointment</a>
                                </li>
                         
                                   <li>
                                    <a href="EditSchedule.jsp">Search & Edit Appointment</a>
                                </li>
                            
                        
                            </ul>
                            
                        </li>
                                <li>
                            <a href="#"><i class="glyphicon glyphicon-calendar nav_icon"></i>Schedule<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                   <a href="TodaySchedule.jsp">Today's Appointment</a>
                                </li>
                                <li>
                                    <a href="./CSS/Test.jsp">View all Appointment</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-table nav_icon"></i>Tables<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="basic_tables.html">Basic Tables</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="DoctorLogoutServlet"><i class="glyphicon glyphicon-off nav_icon"></i>Logout</a>
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
                       <a href="./CSS/Test.jsp"><strong>Schedule</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-pencil-square user2 icon-rounded"></i>
                    <div class="stats">
                     <a href="BlogView.jsp"><strong>Blog</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-search user2 icon-rounded"></i>
                    <div class="stats">
                     <a href="Doc_contact.jsp"><strong>Compose Mail</strong></a>
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
      <h1>Sourav</h1>
        <div class="copy">
       
      <form>
   
    
         <!-- Navigation -->

        <div class="container-fluid"><!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            DataTables Advanced Tables
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Medicine Name</th>
                                            <th>Uses For</th>
                                            <th>Medicine Type</th>
                                            <th>Power</th>
                                            <th>Price</th>
                                            <th>Company Name</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                    DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
                                    Date date = new Date();
                                   
                                    Calendar c = Calendar.getInstance();
                                    c.setTime(new Date()); // Now use today date.
                                    c.add(Calendar.DATE, -5); // Adding 5 days
                                    String output = dateFormat.format(c.getTime());
                                    System.out.println(output);
                                    
                                    System.out.println(dateFormat.format(date));
			
			try{
				Connection con = DB.dba();
				String sql = "Select * from retailer where ?>=Date AND ?<=Date";
				PreparedStatement ps = con.prepareStatement(sql);
				//ps.setString(1, email);
				ps.setString(1, dateFormat.format(date));
				ps.setString(2, output);
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					%>
								 <tr class="odd gradeX">
                                            <td><%=rs.getString("Medicinename") %></td>
                                            <td><%=rs.getString("Medicinetype") %></td>
                                            <td><%=rs.getString("Tagline") %></td>
                                            <td class="center"><%=rs.getString("Power") %></td>
                                            <td class="center"><%=rs.getString("Price") %></td>
                                            <td class="center"><%=rs.getString("Retailername") %></td>
                                        </tr>
					<%
				}
				}catch(Exception e){System.out.println(e);}
			
			                %>
                                       
                                       
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
           
            <!-- jQuery -->
    <script src="CSS/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="CSS/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="CSS/bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="CSS/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="CSS/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="CSS/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });
    </script>
        </div>
        <!-- /#page-wrapper -->

  
      </form>

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
    
    <div id="ccd" style="visibility: hidden;" > 
 <td>Hello from DIV</td>
 </div>
     <div id="ccd1" style="visibility: hidden;" > 
 <td>Hello from DIV</td>

</div>
    <div id="ddc" style="visibility: hidden;" > 
 <td>Hello from DIV</td>

</div>

</body>
        <script>
var d = new Date();
document.getElementById("date").innerHTML = d.getDate();
</script>
<script>
var d = new Date();
var days = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];
document.getElementById("day").innerHTML = days[d.getDay()];
</script>
<script>
var d = new Date();
document.getElementById("year").innerHTML = d.getFullYear();
</script>  
<script>
var d = new Date();
var months = ["January","February","March","April","May","June","July","August","September","October","November","December"];
document.getElementById("month").innerHTML = months[d.getMonth()];
</script> 
</html>
