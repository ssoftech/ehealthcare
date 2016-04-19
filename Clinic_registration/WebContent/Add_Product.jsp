<%@page import="db.DB"%>
<%@page import="Model.DAO1"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="controller.Retailervalidate.*"
	import="java.sql.Connection" import="java.sql.PreparedStatement"
	import="java.sql.ResultSet" import="db.Db.*"
	import="java.io.IOException"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Modern an Admin Panel Category Flat Bootstarp Resposive Website Template | Home :: w3layouts</title>

<script type="text/javascript">

	function f() {		
		var rang = document.getElementById("Range").value;	
		var rangL =parseInt(rang.substring(0,2));
		var val = 05;
		var rangH = rangL+val;
		var disc = parseInt(document.getElementById("discount").value);
		//alert("mnmn"+rangH);
		if(disc>=rangL && disc<=rangH)
			{
			
			}
		else
			{
				alert("Enter the discount values within given range");
			}
	}
</script>
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
<script type="application/x-javascript">
	

	 addEventListener("load", function() { 
		 setTimeout(hideURLbar, 0); 
		 }, false); 
	 
	 function hideURLbar(){ 
		 window.scrollTo(0,1); 
		 } 
</script>
<script type="text/javascript">
	window.onload = function() {
		//Get submit button
		var submitbutton = document.getElementById("tfq");
		//Add listener to submit button
		if (submitbutton.addEventListener) {
			submitbutton.addEventListener("click", function() {
				if (submitbutton.value == 'Search our website') {//Customize this text string to whatever you want
					submitbutton.value = '';
				}
			});
		}
	}
</script>
<script type="text/javascript">
	window.onload = function() {
		//Get submit button
		var submitbutton = document.getElementById("tfq");
		//Add listener to submit button
		if (submitbutton.addEventListener) {
			submitbutton.addEventListener("click", function() {
				if (submitbutton.value == 'Search our website') {//Customize this text string to whatever you want
					submitbutton.value = '';
				}
			});
		}
	}

	function pop(div) {
		document.getElementById(div).style.display = 'block';
	}
</script>
<script type="text/javascript">
	// Ajax Code for Select Type

	function setMedicineType(str) {
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
				document.getElementById("setprice").innerHTML = xhttp.responseText;
			}
		};
		xhttp.open("POST", "MedicineType.jsp?s=" + str, true);
		xhttp.send();
	}

	function calMRP() {
		var price = document.getElementById('price').value;
		var vat = document.getElementById('vat').value;
		var mrp = parseInt(price) + (parseInt(price) * (parseInt(vat) / 100));
		if (!isNaN(mrp)) {
			document.getElementById('mrp').value = mrp;
		}
	}
	
	
	function calquantity() {
		var qos = document.getElementById('quantity').value;
		var nos = document.getElementById('totalstrip').value;
		var tq =(parseInt(qos) * parseInt(nos));
		if (!isNaN(tq)) {
			document.getElementById('totalquantity').value = tq;
		}
	}
	
	
	function a() {

		var quan = document.getElementById('quantity').value;
		
		if (!isNaN(quan)) {
		
			document.getElementById('totalquantity').value = quan;
		}
	}
	
	
</script>
	 <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>	
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
                <a class="navbar-brand" href="Retailer_dashboard.jsp">SSTL</a>
            </div>
            <!-- /.navbar-header -->
            <ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
	        		<a href="#">
	        		
			<%
						String username = (String) session.getAttribute("Retailername");
						String email = (String) session.getAttribute("email");
						 if(username==null)
						   {
							  response.sendRedirect("Retailerlogin.jsp");
						   }
							String Retailerid = DAO1.getid(email);
							System.out.println("bbbbbbbbbbbbbbbbbbbb:"+Retailerid);
				
						String filename = DAO1.getfilefromDb(email);
						System.out.print(filename + " hello ");
					%>	
		
<span><h5 style="margin-top: 15%;"><font color = white>welcome &nbsp;&nbsp; <%=username%></font></h5></span>
	        		</a>
	      
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="images/<%=filename%>" width="40px" height="40px"/></a>
	        		<ul class="dropdown-menu">
						
						<li class="dropdown-menu-header text-center">
							<strong>Account Settings</strong>
						</li>
						<li class="m_2"><a href="Profile.jsp"><i class="fa fa-user"></i> Profile</a></li>
						<li class="m_2"><a href="Retailer_update.jsp"><i class="fa fa-wrench"></i> Settings</a></li>
						<li class="m_2"><a href="ResetPassword.jsp"><i class="fa fa-wrench"></i> Update password</a></li>
						<li class="m_2"><a href="RetailerLogoutServlet"><i class="fa fa-power-off"></i> Logout</a></li>
	        		</ul>
	      		</li>
			</ul>
			<form class="navbar-form navbar-right">
              <input type="text" class="form-control" value="Search..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search...';}">
            </form>
  <div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">

					<li><a href="#"><i
							class="glyphicon glyphicon-user nav_icon"></i>Profile<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="Retailer_update.jsp">Edit Profile</a></li>
							<li><a href="Edit profile.html">Account Settings</i><span
									class="fa arrow"></span></a>
								<ul class="nav nav-second-level">
									<li><a href="ChangePassword.jsp">Change Password</a></li>
								</ul></li>
						</ul> <!-- /.nav-second-level --></li>
					<li><a href="#"><i class="fa fa-indent nav_icon"></i>Services<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="Add_Product.jsp">Add Product</a></li>
							<li><a href="#">View Product<span class="fa arrow"></span></a>
								<ul class="nav nav-second-level">
									<li><a href="View_Medicine(All product).jsp">View all
											product</a></li>
									<li><a href="Price_low_high.jsp">View by Price Low to
											High</a></li>
									<li><a href="Price_high_low.jsp">View by Price High to
											Low</a></li>
									<li><a href="View_Medicine_type.jsp">View by Medicine
											Type</a></li>
								</ul></li>
							<li><a href="Edit.jsp">Edit Product</a></li>
							<li><a href="Delete_Product.jsp">Delete Product</a></li>
							
							<li><a href="#">View low stock product<span class="fa arrow"></span></a>
								<ul class="nav nav-second-level">
									<li><a href="View_All_product.jsp">View all Product</a></li>
									<li><a href="View_low_stock_product(L-H).jsp">View by
											Price Low to High</a></li>
									<li><a href="View_low_stock_product(H-L).jsp">View by
											Price High to Low</a></li>
									<li><a href="View_low_stock_product(M).jsp">View by
											Medicine Type</a></li>
								</ul></li>

						</ul> <!-- /.nav-second-level --></li>
					<li><a href="#"><i class="fa fa-envelope nav_icon"></i>Mailbox<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="inbox.html">Inbox</a></li>
							<li><a href="compose.html">Compose email</a></li>
						</ul> <!-- /.nav-second-level --></li>
					
					
					<li><a href="RetailerLogoutServlet"><i
							class="glyphicon glyphicon-off nav_icon"></i>Logout</a></li>
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
                      <a href="Retailer_dashboard.jsp"><strong>HOME</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-calendar user2 icon-rounded"></i>
                    <div class="stats">
                       <a href="View_Medicine(All product).jsp"><strong>View Medicine</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-pencil-square user2 icon-rounded"></i>
                    <div class="stats">
                     <a href="Add_Product.jsp"><strong>Add Product</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-search user2 icon-rounded"></i>
                    <div class="stats">
                     <a href="View_All_product.jsp"><strong>View All product</strong></a>
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
       <form action="AddServlet" method="post" enctype="multipart/form-data">
       <div class="container-fluid text-left">
       <div class="col-md-12 bg-primary text-center"><h3>ADD PRODUCT</h3></div>
					<input type="text" name="retailerid" id="retailerid"
								placeholder="Enter Retailer Id" size="20" style="height: 30px" value=<%=Retailerid%> hidden/ >
					<br></br>
					 <div class="row">
      <div class="col-md-10">
      <label><span class="label label-primary">Retailer Name</span></label>
			<input type="text" class="form-control1" name="retailername" id="retailername" placeholder="Enter Retailer Name" value="<%=username %>" readonly="readonly">
				 </div>
      </div>
      <br></br>
            <div class="row">
      <div class="col-md-10">
      <label><span class="label label-primary">Medicine Name</span></label>
		<input type="text" class="form-control1" name="medicinename" id="medicinename" placeholder="Enter Medicine Name">
							 </div>
      </div>
      <br></br>
						<div class="row">
      <div class="col-md-10">
      <label><span class="label label-primary">Medicine Type</span></label>
							<select class="form-control1" name="medicinetype" id="medicinetype" required onchange="setMedicineType(this.value)">
									<option>--select--</option>
									<option value="syrup">Syrup</option>
									<option value="tablet">Tablet/Capsule</option>
									<option value="drops">Drops</option>
									<option value="cream">Cream/Paste</option>
									<option value="ointment">Ointment</option>
							</select></div>
      </div>
						<table class="table text-left"  rules="groups">
							<td colspan="2" id="setprice"></td></table>
						<br></br>
						<div class="row">
      <div class="col-md-6">
      <label><span class="label label-primary">Manufacture date</span></label>
							<input type="date" class="form-control1" name="manufacturedate" id="manufacturedate">
						</div>
      <div class="col-md-6">
      <label><span class="label label-primary">Expiry date</span></label>
	<input type="date" class="form-control1" name="expirydate" id="expirydate">
						</div>
						</div>
      <br></br>
						<div class="row">
      <div class="col-md-6">
      <label><span class="label label-primary">Manufacturer name</span></label>
	<input type="text"  class="form-control1" name="manufacturername" id="manufacturername" placeholder="enter manufacturer name">
						</div>
						<div class="col-md-6">
      <label><span class="label label-primary">Location</span></label>
	<input type="text"  class="form-control1" name="location" id="location" placeholder="enter your location">
						</div>
						</div>
						 <br></br>
						<div class="row">
      <div class="col-md-6">
      <label><span class="label label-primary">Landmark</span></label>
      <input type="text"  class="form-control1" name="landmark" id="landmark" placeholder="enter your landmark" >
						</div>
						
							<div class="col-md-6">
<label><span class="label label-primary"> IMAGE </span></label>
							<img id="blah" src="#"  width="150px" height="150px" alt="upload picture" />
<input type="file" style="width:100px;" name="file" class="img"  onchange="readURL(this);" />

<script>
function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah')
                    .attr('src', e.target.result)
                    .width(150)
                    .height(150);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
</script>
						</div>
						</div>
						
							<div class="row">
      <div class="col-md-10">
     <label>&nbsp;</label>
     <br>
      <input type="submit" class="btn btn-lg btn-primary" value="add">
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
