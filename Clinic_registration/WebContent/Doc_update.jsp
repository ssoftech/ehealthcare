<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Model.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection,java.sql.PreparedStatement,java.sql.ResultSet,java.io.IOException,java.util.*"%>
<%@page import= "java.util.Iterator" import=" bean.*" %>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Modern an Admin Panel Category Flat Bootstarp Resposive Website Template | Home :: w3layouts</title>
<style>
#imagePreview {
      width: 100px;
      height: 100px;
    background-position: center center;
    background-size: cover;
    -webkit-box-shadow: 0 0 1px 1px rgba(0, 0, 0, .3);
    display: inline-block;
}

</style>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="CSS1/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="CSS1/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="CSS1/lines.css" rel='stylesheet' type='text/css' />
<link href="CSS1/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!----webfonts--->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!---//webfonts--->  
<!-- Nav CSS -->
<link href="CSS1/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<!-- Graph JavaScript -->
<script src="js/d3.v3.js"></script>
<script src="js/rickshaw.js"></script>

<script type="text/javascript">
function call() {
	var s= document.getElementById("imagePreview");
	var t= document.getElementById("imagePreview1");
	
	if(s!="")
		{
		s.innerHTML="";
		s.innerHTML= t.innerHTML;
		}
	
	
}
function call1() {
	var s= document.getElementById("imagePreview");
	
	$(function() {
	    $("#uploadFile").on("change", function()
	    {
	    	s.innerHTML="";
	        var files = !!this.files ? this.files : [];
	        if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support
	 
	        if (/^image/.test( files[0].type)){ // only image file
	            var reader = new FileReader(); // instance of the FileReader
	            reader.readAsDataURL(files[0]); // read the local file
	 
	            reader.onloadend = function(){ // set image data as background of div
	            	
	                $("#imagePreview").css("background-image", "url("+this.result+")");
					
	            }
	        }
	    });
	});
	
	
}

</script>
 <script type="text/javascript">

$(function() {
    $("#uploadFile").on("change", function()
    {
        var files = !!this.files ? this.files : [];
        if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support
 
        if (/^image/.test( files[0].type)){ // only image file
            var reader = new FileReader(); // instance of the FileReader
            reader.readAsDataURL(files[0]); // read the local file
 
            reader.onloadend = function(){ // set image data as background of div
            	
                $("#imagePreview").css("background-image", "url("+this.result+")");
				
            }
        }
    });
});
</script>

</head>
<body onload="call()" >
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
                <a class="navbar-brand" href="Doc_index.jsp">SSTL</a>
            </div>
            <!-- /.navbar-header -->
            <ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
	        		<a href="Doc_index.jsp">
	   <%
       		
				String username = (String)session.getAttribute("fname");
				String email=(String)session.getAttribute("email");
				String lname="";
				String country="";
				String state="";
				String city="";
				String address="";
				String Experience="";
				String Mobileno="";
				String Specilisation="";
				String degree="";
				String pincode="";
				String filename="";
				
					   if(username==null)
					   {
						   response.sendRedirect("Doctor_Login.jsp");
					   }
					 
					   
					   
					   Connection con= DB.dba();
				       
				        String sql1 = "select * from doctor_reg where email=?";
				        				PreparedStatement ps1=con.prepareStatement(sql1);
				        				ps1.setString(1, email);
				        			ResultSet rs1=ps1.executeQuery();
				        			while(rs1.next())
				        			{
				        				lname= rs1.getString("lname");
				        				country= rs1.getString("country");
				        				state= rs1.getString("state");
				        				city= rs1.getString("city");
				        				address= rs1.getString("address");
				        				Experience= rs1.getString("Experience");
				        				Mobileno= rs1.getString("mobileno");
				        				Specilisation= rs1.getString("Specilisation");
				        				degree= rs1.getString("degree");
				        				pincode=rs1.getString("pincode");
				        				filename=rs1.getString("Image");
				        				
				        				
				        				
				        			}
				        			%>
		
<span><h5 style="margin-top: 15%;"><font color = white>welcome &nbsp;&nbsp; <%=username%></font></h5></span>
	        		</a>
	      
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="images/<%=filename%>" width="40px" height="40px"/></a>
	        		<ul class="dropdown-menu">
						
						<li class="dropdown-menu-header text-center">
							<strong>Account Settings</strong>
						</li>
						<li class="m_2"><a href="Doc_profile.jsp"><i class="fa fa-user"></i> Profile</a></li>
						<li class="m_2"><a href="Doc_update.jsp"><i class="fa fa-shield"></i> Update profile</a></li>
						<li class="m_2"><a href="Doc_ResetPasswordDashBoard.jsp"><i class="fa fa-refresh"></i> Reset Password</a></li>
						<li class="m_2"><a href="DoctorLogoutServlet"><i class="fa fa-power-off"></i> Logout</a></li>
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
                                    <a href="Doc_inbox.jsp">Inbox</a>
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
                                    <a href="./CSS1/Test.jsp">View all Appointment</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-table nav_icon"></i>Tables<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                     <a href="pagination_sample.jsp">New Medicine</a>
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
                      <a href="Doc_index.jsp"><strong>HOME</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-calendar user2 icon-rounded"></i>
                    <div class="stats">
                       <a href="./CSS1/Test.jsp"><strong>Schedule</strong></a>
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
	 
      <div class="copy">
       
      <div class="container-fluid">
      <form action="Doc_updateServlet" method="post" enctype="multipart/form-data">
      <div class="row">
      <input type="text" name="Email" value="<%=email%>" hidden="">
      <div class="col-md-12"><h2>UPDATE YOUR PROFILE</h2></div>
      </div>
      <div class="row">
      <div class="col-md-1">
      <label><span class="label label-primary"> IMAGE </span></label>
     <div  id="imagePreview1" hidden=""><img  src="images/<%=filename%>" width="100px" height="100px"/></div>
     <input type="hidden" name="lstimg" value="<%=filename%>">
      <div id="imagePreview"></div>

<input id="uploadFile" type="file" style="width:90px;" onclick="call1()"  name="file" class="img1" />

      </div>
      </div>
      
      <div class="row">
      <div class="col-md-12">
      <label><span class="label label-primary"> Name </span></label>
      <input type="text" class="form-control1" name="Name" value="<%=username+" " + lname%>"/>
      
      
      
      </div>
      
      </div>
      <br></br>
            <div class="row">
      <div class="col-md-12">
      <label><span class="label label-primary"> Country </span></label>
      <input type="text" class="form-control1" name="Country" value="<%=country%>"/>
      
      
      
      </div>
      
      </div>
            <br></br>
            <div class="row">
      <div class="col-md-12">
      <label><span class="label label-primary"> State </span></label>
      <input type="text" class="form-control1" name="State" value="<%=state%>"/>
      
      
      
      </div>
      
      </div>
            <br></br>
            <div class="row">
      <div class="col-md-12">
      <label><span class="label label-primary"> City </span></label>
      <input type="text" class="form-control1" name="City" value="<%=city%>"/>
      
      
      
      </div>
      
      </div>
            <br></br>
            <div class="row">
      <div class="col-md-12">
      <label><span class="label label-primary"> Address </span></label>
      <input type="text" class="form-control1" name="Address" value="<%=address%>"/>
      
      
      
      </div>
      
      </div>
            <br></br>
            <div class="row">
      <div class="col-md-12">
      <label><span class="label label-primary">Pincode</span></label>
      <input type="text" class="form-control1" name="Pincode" value="<%=pincode%>"/>
      
      
      
      </div>
      
      </div>
            <br></br>
            <div class="row">
      <div class="col-md-12">
      <label><span class="label label-primary"> Mobile No.</span></label>
      <input type="text" class="form-control1" name="Mobile" value="<%=Mobileno%>"/>
      
      
      
      </div>
      
      </div>
              <br></br>
            <div class="row">
      <div class="col-md-12">
      <label><span class="label label-primary"> Degree</span></label>
      <input type="text" class="form-control1" name="degree" value="<%=degree%>"/>
      
      
      
      </div>
      
      </div>
              <br></br>
            <div class="row">
      <div class="col-md-12">
      <label><span class="label label-primary"> Specilisation</span></label>
      <input type="text" class="form-control1" name="Specilisation" value="<%=Specilisation%>"/>
      
      
      
      </div>
      
      </div>
              <br></br>
            <div class="row">
      <div class="col-md-12">
      <label><span class="label label-primary">Experience</span></label>
      <input type="text" class="form-control1" name="Experience" value="<%=Experience%>"/>
      
      
      
      </div>
      
      </div>
      
               <div class="row">
      <div class="col-md-12">
     <label>&nbsp;</label>
     <br>
      <input type="submit" class="btn btn-lg btn-primary" value="Update">
      
      
      
      </div>
      
      </div>
      
      </form>
      
      </div>

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
