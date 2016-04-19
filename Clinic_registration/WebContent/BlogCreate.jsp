<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection"
import="java.sql.PreparedStatement" import="java.sql.ResultSet" import="java.text.SimpleDateFormat" import="java.io.IOException"%>

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
<style type="text/css">
#apDiv1 {
	position: absolute;
	left: 5%;
	top: 10%;
	width: 200px;
	height:300px;
	bottom:11%
	z-index: 1;
	background-color: white;
	box-shadow: 10px 10px 15px #000000; 
}
#apDiv2 {
	position: absolute;
	left:350%;
	top: 10%;
	width: 75%;
	height:90%;
	z-index: 2;
	background-color: white;
	box-shadow: 10px 10px 15px #000000; 
}
#imagePreview {
      width: 150px;
      height: 100px;
    background-position: center center;
    background-size: cover;
    -webkit-box-shadow: 0 0 1px 1px rgba(0, 0, 0, .3);
    display: inline-block;
}

</style>

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
                <a class="navbar-brand" href="Doc_index.jsp">SSTL</a>
            </div>
            <!-- /.navbar-header -->
            <ul class="nav navbar-nav navbar-right">

            
				<li class="dropdown">
	        		<a href="Doc_index.jsp">
	        		
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
						<li class="m_2"><a href="Doc_ResetPasswordDashBoard.jsp"><i class="fa fa-refresh"></i> Reset Password</a></li>
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
       
     <form action="Panel_Servlet" method="post" enctype="multipart/form-data">
 
<div align="center">
<table> <tr ><td >&nbsp;&nbsp;&nbsp;&nbsp;<b>Blog Name: </b></td><td><input type="text" name="name" /></td>
<input type="text" name="email" value="<%=email %>" style="visibility: hidden;"/>
<td width="20px;"></td>
<td><b>Category: </b></td> <td><select id="rspc"  name="category" style="width:174px; height: 30px;" required>
		<option value=""> Select </option>
        <option value="Anaesthesiology & Critical care">Anaesthesiology & Critical care</option>
        <option value="Cardiology">Cardiology</option>
        <option value="Diabetology">Diabetology</option>
        <option value="ENT">ENT</option>
        <option value="Gastroentrology">Gastroentrology</option>
         <option value="General Physiology">General Physiology</option>
        <option value="Nephrology">Nephrology</option>
        <option value="Neurology">Neurology</option>
        <option value="Oncology">Oncology</option>
        <option value="Paediatrics">Paediatrics</option>
         <option value="Surgery">Surgery</option>
        <option value=" Urology"> Urology</option></select></td>

</tr>
</table><br><br><br>

  <script type="text/javascript" src="js/nicEdit1.js"></script> <script type="text/javascript">
				//<![CDATA[
        	bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
  				//]]>
  					</script>
                        <textarea rows="10" name="comment" class="form-control1 control2" style="width: 700px; height: 400px;"></textarea>
 
<br><br />

</div>
 
 <br>

<table>
<tr>
<td>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <div id="imagePreview"></div>
</td>
<td>
<br><br><br>
<input id="uploadFile"  type="file" style="width:90px;" name="file" class="img"/>
</td>
</tr>
</table>

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


<div align="center"><input type="submit" tabindex="110" name="Post Your Comment"  value="Post Your Comment"></div>


</form>
</div>
      </div>
      

      <div>
          <div id="ccd" style="visibility: hidden;" > 
 <td>Hello from DIV</td>
     <div id="ccd1" style="visibility: hidden;" > 
 <td>Hello from DIV</td>

</div>
    <div id="ddc" style="visibility: hidden;" > 
 <td>Hello from DIV</td>

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
