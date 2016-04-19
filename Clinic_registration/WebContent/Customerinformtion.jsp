<%@page import="db.DB"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Model.DAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection,java.sql.PreparedStatement,java.sql.ResultSet,java.io.IOException,java.util.*"%>
<%@page import="java.sql.*,bean.*,Model.*,java.util.*,java.util.Date"%>
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
<link rel="stylesheet" type="text/css" href="css/style2.css" />
		<script type="text/javascript" src="js/jquery.smart_autocomplete.js"></script>
		<script src="js/jquery.autocomplete.js"></script>
<script type="text/javascript">
<%
Date date=new Date();
String DATE_FORMAT = "yyyy-MM-dd";
SimpleDateFormat s=new SimpleDateFormat(DATE_FORMAT);
String currentDate= s.format(date);
System.out.println(currentDate);

%>
</script>
	<script>
	

	
	jQuery(function(){
		$("#test").autocomplete("list.jsp");
		});
	jQuery(function(){
		$("#test1").autocomplete("list.jsp");
		});
	jQuery(function(){
		$("#test2").autocomplete("list.jsp");
		});
	jQuery(function(){
		$("#test3").autocomplete("list.jsp");
		});
	jQuery(function(){
		$("#test4").autocomplete("list.jsp");
		});
</script>
<script type="text/javascript">
var cnt=1;

function show()
{
	cnt=cnt+1;
	 var divhid= document.getElementById("hid");
	 var s2= document.getElementById("tr2");
	 var s3= document.getElementById("tr3");
	 var s4= document.getElementById("tr4");
	 var s5= document.getElementById("tr5");
	 divhid.style.display  = 'block';
	 if(cnt==1)
		 {
	 s2.style.visibility = 'visible';
		} 
	 if(cnt==2)
	 {
 s2.style.visibility = 'visible';
	}
	 if(cnt==3)
	 {
 s3.style.visibility = 'visible';
	}
	 if(cnt==4)
	 {
 s4.style.visibility = 'visible';
	}
	 if(cnt==5)
	 {
 s5.style.visibility = 'visible';
	}
	
}


function mobileajax()
{
	var x = document.getElementById("mobile").value;
	
    /* document.getElementById("demo").innerHTML = "You selected: " + x; */
   
    
    
    var xhttp;
	  var url = "CustomerInformationAzax.jsp?val="+x;
	  if (window.XMLHttpRequest) {
	    // code for modern browsers
	    xhttp = new XMLHttpRequest();
	    } else {
	    // code for IE6, IE5
	    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
	  }
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	      document.getElementById("abcd").innerHTML= xhttp.responseText;
	  	jQuery(function(){
			$("#test").autocomplete("list.jsp");
			});
		jQuery(function(){
			$("#test1").autocomplete("list.jsp");
			});
		jQuery(function(){
			$("#test2").autocomplete("list.jsp");
			});
		jQuery(function(){
			$("#test3").autocomplete("list.jsp");
			});
		jQuery(function(){
			$("#test4").autocomplete("list.jsp");
			});
	      
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
				   System.out.println("2 nd time:" +filename);
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
						<li class="m_2"><a href="pathalogyresetPassword.jsp"><i class="fa fa-refresh"></i> Reset Password</a></li>
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
      <div class="container-fluid">
 <form action="InformationServlet" method="post" >
  <input type="hidden" name="pathalogyname" value=<%=username%>  />
  <div class="row text-left">
        <div class="col-md-6">
      <label><span class="label label-primary">Mobile Number of Patient</span></label>
      <input type="text" class="form-control1" id="mobile" onkeyup="mobileajax()" name="mobile" placeholder="Enter mobile number of patient" required />
      </div>
      </div>
      <br></br>
      <div id="abcd">
              <div class="row text-left">
      <div class="col-md-6">
      <label><span class="label label-primary">Name of the patient </span></label>
      <input type="text" class="form-control1" name="patientName" placeholder="Enter Name of patient" required />
      </div>
      <div class="col-md-6">
      <label><span class="label label-primary">Name of suggested doctor</span></label>
      <input type="text" class="form-control1" name="Doctor" placeholder="Enter Name of suggested doctor" required />
      </div>
      </div>
        <br></br>
             <div class="row text-left">
      <div class="col-md-6">
      <label><span class="label label-primary">Age of patient</span></label>
      <input type="text" class="form-control1" name="age" placeholder="Enter Age of patient" required />
      </div>
      <div class="col-md-6">
      <label><span class="label label-primary">Gender of Patient</span></label>
     <select class="form-control1" name="sex" placeholder="Enter Gender of patient" required>
      	 <option value="">select</option>
	  	 <option value="Male">Male</option>
	  	 <option value="Female">Female</option>
	  	 <option value="Others">Others</option>
      </select>
      </div>
      </div>
       <br></br>
             <div class="row text-left">

      <div class="col-md-6">
    <label><span class="label label-primary">Test Date</span></label>
      <input type="text" class="form-control1" name="testdate" placeholder="Enter Test Date" value="<%=currentDate %>" readonly="readonly" />
      </div>
      <div class="col-md-6">
       <label><span class="label label-primary">Delivery Date</span></label>
      <input type="Date" class="form-control1" name="date" placeholder="Enter mobile number of patient" required />
      </div>
      </div>
       <br></br>
             <div class="row text-left">
      
      <div class="col-md-12">
    <label><span class="label label-primary">Address</span></label>
      <textarea class="form-control1" name="address" placeholder="Enter Address"  required="required"></textarea>
      </div>
           
      </div>
    <br></br>
     <div class="row text-left">
     <div class="col-md-6">
      <label><span class="label label-primary">Name of Test</span></label>
      <input type="text" class="form-control1" name="test" id="test" placeholder="Enter name of test" required />
      </div>
       

       <div class="col-md-4" style="padding-top: 30px;">
	<input id="btnAdd" type="button" value="Add" onclick="show()" />
      </div>
     
    </div>

<div id="hid" style="display:none;">
      <div class="row text-left" id="tr2" style="visibility: hidden;">
      <div class="col-md-6" >
	<label><span class="label label-primary">Name of Test</span></label>
	<input type="text" class="form-control1" name="test1" id="test1" onkeyup="prc" placeholder="Enter Name of Test" />

							</div>
							</div>
						
	<div class="row text-left" id="tr3" style="visibility: hidden;">
      <div class="col-md-6" >
	<label><span class="label label-primary">Name of Test</span></label>
	<input type="text" class="form-control1" name="test2" id="test2" onkeyup="prc" placeholder="Enter Name of Test" />
                 
                 </div>
                 </div>
                 	<div class="row text-left" id="tr4" style="visibility: hidden;">
      <div class="col-md-6" >
	<label><span class="label label-primary">Name of Test</span></label>
	<input type="text" class="form-control1" name="test3" id="test3" onkeyup="prc" placeholder="Enter Name of Test" />
                 
                 </div>
                 </div>
                 	<div class="row text-left" id="tr5" style="visibility: hidden;">
      <div class="col-md-6" >
	<label><span class="label label-primary">Name of Test</span></label>
	<input type="text" class="form-control1" name="test4" id="test4" onkeyup="prc" placeholder="Enter Name of Test" />
                 
                 </div>
                 </div>
                 </div>
                 <div class="row">
      <div class="col-md-10">
     <label>&nbsp;</label>
     <br>
      <input type="submit" class="btn btn-lg btn-primary" value="update">
      </div>
      </div>
      </div>
      </form>
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
