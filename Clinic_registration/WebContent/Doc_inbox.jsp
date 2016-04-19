<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection"
import="java.sql.PreparedStatement" import="java.sql.ResultSet" import="java.io.IOException" import="Model.*"%>

<!DOCTYPE HTML>
<html>
<head>
<title>SSTL an Admin Panel Category Flat Bootstarp Resposive Website Template | Inbox :: SSTL</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="CSS1/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="CSS1/style.css" rel='stylesheet' type='text/css' />
<link href="CSS1/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!----webfonts--->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!---//webfonts--->  
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
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
                <a class="navbar-brand" href="Doc_index.jsp">SSTL</a>
            </div>
            <!-- /.navbar-header -->
            <ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
	        		<a href="Doc_index.jsp">
	        		<%
	        		
			String username = (String)session.getAttribute("fname");
			String email=(String)session.getAttribute("email");
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
			        				
			        				filename=rs1.getString("Image");
			        				
			        				
			        				
			        			}
				 
	                %>
		
<h5 style="margin-top: 15%;"><font color = white>Welcome&nbsp;&nbsp;<%=username%></font></h5>
	        		
	        		</a>
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="images/<%=filename%>" width="40px" height="40px"/></a>
	        		<ul class="dropdown-menu">
						<li class="dropdown-menu-header text-center">
							<strong>Account Setting</strong>
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
	     <div class="xs">
  	     <h3>Inbox</h3>
  	        <div class="col-md-4 email-list1">
               <ul class="collection">
                    <li class="collection-item avatar email-unread">
                      <i class="fa fa-users icon_1"></i>
                      <div class="avatar_left">
                      	<span class="email-title">Social</span>
                        <p class="truncate grey-text ultra-small">Lorem Ipsum is simply dummy text of.</p>
                      </div>
                      <a href="#!" class="secondary-content"><span class="new badge blue">4</span></a>
                      <div class="clearfix"> </div>
                    </li>
                    <li class="collection-item avatar email-unread">
                      <i class="fa fa-exclamation-circle icon_2"></i>
                      <div class="avatar_left">
                      	<span class="email-title">Updates</span>
                        <p class="truncate grey-text ultra-small">It is a long established fact that a reader.</p>
                      </div>
                      <a href="#!" class="secondary-content"><span class="new badge red">4</span></a>
                      <div class="clearfix"> </div>
                    </li>
                    <li class="collection-item avatar email-unread">
                      <i class="fa fa-tag icon_3"></i>
                      <div class="avatar_left">
                      	<span class="email-title">Promotions</span>
                        <p class="truncate grey-text ultra-small">There are many variations of passages.</p>
                      </div>
                      <a href="#!" class="secondary-content"><span class="new badge blue1">4</span></a>
                      <div class="clearfix"> </div>
                    </li>
                    <li class="collection-item avatar email-unread">
                      <i class="icon_4">G</i>
                      <div class="avatar_left">
                      	<span class="email-title">Gmail</span>
                        <p class="truncate grey-text ultra-small">Sed ut perspiciatis unde omnis iste.</p>
                      </div>
                      <a href="#!" class="secondary-content"><span class="blue-text ultra-small">2:15 pm</span></a>
                      <div class="clearfix"> </div>
                    </li>
                    <li class="collection-item avatar email-unread">
                      <i class="icon_4 icon_5">F</i>
                      <div class="avatar_left">
                      	<span class="email-title">Facebook</span>
                        <p class="truncate grey-text ultra-small">But I must explain to you how.</p>
                      </div>
                      <a href="#!" class="secondary-content"><span class="blue-text ultra-small">2:15 pm</span></a>
                      <div class="clearfix"> </div>
                    </li>
                    <li class="collection-item avatar email-unread email_last">
                      <i class="icon_4 icon_6">T</i>
                      <div class="avatar_left">
                      	<span class="email-title">Twitter</span>
                        <p class="truncate grey-text ultra-small">At vero eos et accusamus et iusto odio.</p>
                      </div>
                      <a href="#!" class="secondary-content"><span class="blue-text ultra-small">2:15 pm</span></a>
                      <div class="clearfix"> </div>
                    </li>
              </ul>
         <div class="content-box  mrg15B">
          <div class="content-box-wrapper text-center">
            <h4 class="content-box-header">
            Chat
            <small>(Online friends)</small>
            </h4>
            <div class="status-badge mrg10A">
                <img class="img-circle" width="40" src="images/1.png" alt="">
                <div class="small-badge bg-red"></div>
            </div>
            <div class="status-badge mrg10A">
                <img class="img-circle" width="40" src="images/2.png" alt="">
                <div class="small-badge bg-orange"></div>
            </div>
            <div class="status-badge mrg10A">
                <img class="img-circle" width="40" src="images/3.png" alt="">
                <div class="small-badge bg-red"></div>
            </div>
            <div class="status-badge mrg10A">
                <img class="img-circle" width="40" src="images/4.png" alt="">
                <div class="small-badge bg-green1"></div>
            </div>
            <div class="status-badge mrg10A">
                <img class="img-circle" width="40" src="images/5.png" alt="">
                <div class="small-badge bg-orange"></div>
            </div>
            <div class="status-badge mrg10A">
                <img class="img-circle" width="40" src="images/1.png" alt="">
                <div class="small-badge bg-red"></div>
            </div>
            <div class="status-badge mrg10A">
                <img class="img-circle" width="40" src="images/2.png" alt="">
                <div class="small-badge bg-green1"></div>
            </div>
            <div class="status-badge mrg10A">
                <img class="img-circle" width="40" src="images/3.png" alt="">
                <div class="small-badge bg-orange"></div>
            </div>
          </div>
        </div>
        </div>
        <div class="col-md-8 inbox_right">
         	<form action="#" method="GET">
                <div class="input-group">
                    <input type="text" name="search" class="form-control1 input-search" placeholder="Search...">
                    <span class="input-group-btn">
                        <button class="btn btn-success" type="button"><i class="fa fa-search"></i></button>
                    </span>
                </div><!-- Input Group -->
            </form>
            <div class="mailbox-content">
               <div class="mail-toolbar clearfix">
			     <div class="float-left">
			        <div class="btn btn_1 btn-default mrg5R">
			           <i class="fa fa-refresh"> </i>
			        </div>
			        <div class="dropdown">
			            <a href="#" title="" class="btn btn-default" data-toggle="dropdown" aria-expanded="false">
			                <i class="fa fa-cog icon_8"></i>
			                <i class="fa fa-chevron-down icon_8"></i>
			            <div class="ripple-wrapper"></div></a>
			            <ul class="dropdown-menu float-right">
			                <li>
			                    <a href="#" title="">
			                        <i class="fa fa-pencil-square-o icon_9"></i>
			                        Edit
			                    </a>
			                </li>
			                <li>
			                    <a href="#" title="">
			                        <i class="fa fa-calendar icon_9"></i>
			                        Schedule
			                    </a>
			                </li>
			                <li>
			                    <a href="#" title="">
			                        <i class="fa fa-download icon_9"></i>
			                        Download
			                    </a>
			                </li>
			                <li class="divider"></li>
			                <li>
			                    <a href="#" class="font-red" title="">
			                        <i class="fa fa-times" icon_9=""></i>
			                        Delete
			                    </a>
			                </li>
			            </ul>
			        </div>
			        <div class="clearfix"> </div>
			    </div>
			    <div class="float-right">
			        
			              
                            <span class="text-muted m-r-sm">Showing 20 of 346 </span>
                            <div class="btn-group m-r-sm mail-hidden-options" style="display: inline-block;">
                                <div class="btn-group">
                                    <a class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-folder"></i> <span class="caret"></span></a>
                                    <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                        <li><a href="#">Social</a></li>
                                        <li><a href="#">Forums</a></li>
                                        <li><a href="#">Updates</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Spam</a></li>
                                        <li><a href="#">Trash</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">New</a></li>
                                    </ul>
                                </div>
                                <div class="btn-group">
                                    <a class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tags"></i> <span class="caret"></span></a>
                                    <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                        <li><a href="#">Work</a></li>
                                        <li><a href="#">Family</a></li>
                                        <li><a href="#">Social</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Primary</a></li>
                                        <li><a href="#">Promotions</a></li>
                                        <li><a href="#">Forums</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="btn-group">
                                <a class="btn btn-default"><i class="fa fa-angle-left"></i></a>
                                <a class="btn btn-default"><i class="fa fa-angle-right"></i></a>
                            </div>
                        
			        
			    </div>
               </div>
                <table class="table">
                    <tbody>
                        <tr class="unread checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star icon-state-warning"></i>
                            </td>
                            <td class="hidden-xs">
                                Google
                            </td>
                            <td>
                                Nullam quis risus eget urna mollis ornare vel eu leo
                            </td>
                            <td>
                            </td>
                            <td>
                                12 march
                            </td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">
                            	<input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star icon-state-warning"></i>
                            </td>
                            <td class="hidden-xs">
                                Dropbox
                            </td>
                            <td>
                                Lorem ipsum dolor sit amet, consectetuer adipiscing elit
                            </td>
                            <td>
                            </td>
                            <td>
                                02 march
                            </td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star icon-state-warning"></i>
                            </td>
                            <td class="hidden-xs">
                                Adobe
                            </td>
                            <td>
                                Nullam quis risus eget urna mollis ornare vel eu leo
                            </td>
                            <td>
                                <i class="fa fa-paperclip"></i>
                            </td>
                            <td>
                                8 march
                            </td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star icon-state-warning"></i>
                            </td>
                            <td class="hidden-xs">
                                Apple
                            </td>
                            <td>
                                Lorem ipsum dolor sit amet, consectetuer adipiscing elit
                            </td>
                            <td>
                                <i class="fa fa-paperclip"></i>
                            </td>
                            <td>
                                4 march
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                            <td class="hidden-xs">
                                Microsoft
                            </td>
                            <td>
                                Nullam quis risus eget urna mollis ornare vel eu leo
                            </td>
                            <td>
                                <i class="fa fa-paperclip"></i>
                            </td>
                            <td>
                                1 march
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                            <td class="hidden-xs">
                                Microsoft
                            </td>
                            <td>
                                Lorem ipsum dolor sit amet, consectetuer adipiscing elit
                            </td>
                            <td>
                                <i class="fa fa-paperclip"></i>
                            </td>
                            <td>
                                15 march
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                            <td class="hidden-xs">
                                Microsoft
                            </td>
                            <td>
                                Nullam quis risus eget urna mollis ornare vel eu leo
                            </td>
                            <td>
                            </td>
                            <td>
                                16 march
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                            <td class="hidden-xs">
                                Microsoft
                            </td>
                            <td>
                                Lorem ipsum dolor sit amet, consectetuer adipiscing elit
                            </td>
                            <td>
                                <i class="fa fa-paperclip"></i>
                            </td>
                            <td>
                                9 march
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star icon-state-warning"></i>
                            </td>
                            <td class="hidden-xs">
                                Microsoft
                            </td>
                            <td>
                                Lorem ipsum dolor sit amet, consectetuer adipiscing elit
                            </td>
                            <td>
                                <i class="fa fa-paperclip"></i>
                            </td>
                            <td>
                                16 march
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star icon-state-warning"></i>
                            </td>
                            <td class="hidden-xs">
                                Dropbox
                            </td>
                            <td>
                                Nullam quis risus eget urna mollis ornare vel eu leo
                            </td>
                            <td>
                            </td>
                            <td>
                                10 march
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                            <td class="hidden-xs">
                                Dropbox
                            </td>
                            <td>
                                Lorem ipsum dolor sit amet, consectetuer adipiscing elit
                            </td>
                            <td>
                                <i class="fa fa-paperclip"></i>
                            </td>
                            <td>
                                14 march
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                            <td class="hidden-xs">
                                Dropbox
                            </td>
                            <td>
                                Nullam quis risus eget urna mollis ornare vel eu leo
                            </td>
                            <td>
                            </td>
                            <td>
                                11 march
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                            <td class="hidden-xs">
                                Dropbox
                            </td>
                            <td>
                                Lorem ipsum dolor sit amet, consectetuer adipiscing elit
                            </td>
                            <td>
                                <i class="fa fa-paperclip"></i>
                            </td>
                            <td>
                                20 march
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                            <td class="hidden-xs">
                                Dropbox
                            </td>
                            <td>
                                Nullam quis risus eget urna mollis ornare vel eu leo
                            </td>
                           <td>
                                <i class="fa fa-paperclip"></i>
                            </td>
                            <td>
                                25 march
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                            <td class="hidden-xs">
                                Twitter
                            </td>
                            <td>
                                Lorem ipsum dolor sit amet, consectetuer adipiscing elit
                            </td>
                            <td>
                                <i class="fa fa-paperclip"></i>
                            </td>
                            <td>
                                26 march
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                            <td class="hidden-xs">
                                Twitter
                            </td>
                            <td>
                                Nullam quis risus eget urna mollis ornare vel eu leo
                            </td>
                            <td>
                            </td>
                            <td>
                                28 march
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star icon-state-warning"></i>
                            </td>
                            <td class="hidden-xs">
                                Twitter
                            </td>
                            <td>
                                Lorem ipsum dolor sit amet, consectetuer adipiscing elit
                            </td>
                            <td>
                                <i class="fa fa-paperclip"></i>
                            </td>
                            <td>
                                06 march
                            </td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                            <td class="hidden-xs">
                                Twitter
                            </td>
                            <td>
                                Nullam quis risus eget urna mollis ornare vel eu leo
                            </td>
                            <td>
                                <i class="fa fa-paperclip"></i>
                            </td>
                            <td>
                                8 march
                            </td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                            <td class="hidden-xs">
                                Dropbox
                            </td>
                            <td>
                                Lorem ipsum dolor sit amet, consectetuer adipiscing elit
                            </td>
                            <td>
                                <i class="fa fa-paperclip"></i>
                            </td>
                            <td>
                                10 march
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                            <td class="hidden-xs">
                                Dropbox
                            </td>
                            <td>
                                Nullam quis risus eget urna mollis ornare vel eu leo
                            </td>
                            <td>
                                <i class="fa fa-paperclip"></i>
                            </td>
                            <td>
                                16 march
                            </td>
                        </tr>
                    </tbody>
                </table>
               </div>
            </div>
            <div class="clearfix"> </div>
       </div>
       <div class="copy_layout">
         <p>Copyright © 2015 SSTL. All Rights Reserved | Design by <a href="http://w3layouts.com/" target="_blank">SSTL</a> </p>
       </div>
   </div>
      </div>
      <!-- /#page-wrapper -->
   </div>
    <!-- /#wrapper -->
<!-- Nav CSS -->
<link href="CSS1/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
</body>
</html>
