<%@page import="db.DB"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Model.DAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection,java.sql.PreparedStatement,java.sql.ResultSet,java.io.IOException,java.util.*"%>
<%@page import="java.sql.*,bean.Pathalogy,Model.*,java.util.Date"%>
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
                <a class="navbar-brand" href="path_home.jsp">SSTL</a>
            </div>
            <!-- /.navbar-header -->
            <ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
	        		<a href="#">
	        		
			<%
	        		
					String username = (String)session.getAttribute("pathalogyname");
			        String email=(String)session.getAttribute("email");
				   if(username==null)
				   {
					  response.sendRedirect("pathalogylogin.jsp");
				   }
				   String filename=DAO.getfilefromDb4(email);
				   System.out.println(filename);
	                %>
		
<span><h5 style="margin-top: 15%;"><font color = white>welcome &nbsp;&nbsp; <%=username%></font></h5></span>
	        		</a>
	      
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="images/<%=filename%>" width="40px" height="40px"/></a>
	        		<ul class="dropdown-menu">
						
						<li class="dropdown-menu-header text-center">
							<strong>Account Settings</strong>
						</li>
					
						<li class="m_2"><a href="path_update_info.jsp"><i class="fa fa-shield"></i> Update profile</a></li>
						<li class="m_2"><a href="pathalogyresetPassword.jsp""><i class="fa fa-refresh"></i> Reset Password</a></li>
						<li class="m_2"><a href="pathalogyLogoutServlet"><i class="fa fa-power-off"></i> Logout</a></li>
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
                         <a href="path_home.jsp"><i class="fa fa-home nav_icon"></i>Home</a>
                         
                            <!-- /.nav-second-level -->
                        </li>
                          <li>
                         <a href="path_index.jsp"><i class="fa fa-user nav_icon"></i>profile</a>
                         
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-indent nav_icon"></i>Category<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="Category.jsp">Add Category</a>
                                </li>
                                <li>
                                    <a href="showCategoryTest.jsp">View Category</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                         <a href="#"><i class="fa fa-star nav_icon"></i>SubCategory<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="add-subcategory.jsp">Add SubCategory</a>
                                </li>
                                <li>
                                    <a href="view_tests.jsp">View SubCategory</a>
                                </li>
                         </ul>
                            <!-- /.nav-second-level -->
                        </li>
                             <li>
                         <a href="#"><i class="fa fa-plus-square-o nav_icon"></i>Customer Informtion<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                         
                         <li>
                                    <a href="Customerinformtion.jsp">Customer</a>
                                </li>
                            </ul>
                              <!-- /.nav-second-level -->
                        </li>
                              <li>
                         <a href="#"><i class="fa fa-plus-square nav_icon"></i>Refered Doctor<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                         
                         <li>
                                    <a href="Referreddoctor.jsp">Doctor</a>
                                </li>
                            </ul>
                              <!-- /.nav-second-level -->
                        </li>
                        
                            <li>
                           <a href="#"><i class="fa fa-asterisk nav_icon"></i>Sub Registration<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="Reception Registration.jsp">Reception Registration</a>
                                </li>
                                 <li>
                                    <a href="Cash Counter.jsp">Cash Counter Registration</a>
                                </li>
                                <li>
                                    <a href="Management Registration.jsp">Management Registration</a>
                                </li>
                                <li>
                                    <a href="Receptionchangepassword.jsp">Reception Change Password</a>
                                </li>
                                 <li>
                                    <a href="Cashchangepassword.jsp">Cash counter ChangePassword</a>
                                </li>
                                 <li>
                                <a href="Management Changepassword.jsp">Management Changepassword</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                       
                         <li>
                            <a href="#"><i class="fa fa-cogs nav_icon"></i>Work<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">Hospital</a>
                                </li>
                                <li>
                                    <a href="Chamber.jsp">Chamber</a>
                                </li>
                                 <li>
                                    <a href="BILL.jsp">Bill</a>
                                </li>
                                <li>
                                    <a href="Viewpath_Bill.jsp">Show Bill</a>
                                </li>
                                <li>
                                    <a href="viewpath_doctor.jsp">viewpath</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="pathalogyLogoutServlet"><i class="glyphicon glyphicon-off nav_icon"></i>Logout</a>
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
                      <a href="path_home.jsp"><strong>HOME</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-plus-square user2 icon-rounded"></i>
                    <div class="stats">
                       <a href="Category.jsp"><strong>Add Category</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-plus-square-o user2 icon-rounded"></i>
                    <div class="stats">
                     <a href="add-subcategory.jsp"><strong>Add SubCategory</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-file-text user2 icon-rounded"></i>
                    <div class="stats">
                     <a href="BILL.jsp"><strong>Bill</strong></a>
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
 <form>
   
    
  <input type="text" name=Clinicname value="<%=username%>" hidden=""/>
		<h1 align="center">Today's DELIVERY</h1>

		<table class="table"  rules="groups">
        <thead>
        		  <tr  class="bg-primary">
                      <td><b>Date</b></td>
                      <td><b>PATIENT NAME</b></td>
                      <td><b>MOBILE NUMBER</b></td>
                      <td><b>REFERRED DOCTOR</b></td>
                      <td><b>TEST</b></td>
                 </tr>
         </thead>
           
         			
         			
                 		   

              
       
        <% 

      Date date=new Date();
        String DATE_FORMAT = "yyyy-MM-dd";
     SimpleDateFormat s=new SimpleDateFormat(DATE_FORMAT);
     String currentDate= s.format(date);
       System.out.println(currentDate);
Connection con=DB.dbcon();
System.out.println("Connected");
       String sql="select PATIENT_NAME,Mobile,SUGGESTED_DOCTOR,Test from  information where TestDate=? AND pathalogyname=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,currentDate);
		
		ps.setString(2, username);
		System.out.println("name is"+username);
ResultSet rs=ps.executeQuery();
%>
            <% while(rs.next())
	{
	%>
	
	<tbody>
	 <tr>  
	  <td>
                  <p id="date" name="date"></p> <script>
var d = new Date();
document.getElementById("date").innerHTML = d.getDate();
</script>
                                        <p id="day"></p><script>
var d = new Date();
var days = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];
document.getElementById("day").innerHTML = days[d.getDay()];
</script>
                                     <p id="year"></p><script>
var d = new Date();
document.getElementById("year").innerHTML = d.getFullYear();
</script> 

    
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>

</tr>
 </tbody>
	<%
	}%>
 
  
     
     
         			
        
       </table>
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
</body>
</html>