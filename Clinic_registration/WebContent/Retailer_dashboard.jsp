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
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/style2.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="css/lines.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet">
<!-- jQuery -->
<!-- <script src="js/jquery.min.js"></script> -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="js/jquery.autocomplete.js"></script>
<!----webfonts--->
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'
	rel='stylesheet' type='text/css'>
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
jQuery(function(){
$("#tfq").autocomplete("list1.jsp");
});
</script>
	<script type="text/javascript">
	// Ajax Code for Select Type

	 function show_med() {
		/* alert("********************"+str); */
	var str=document.getElementById("tfq").value;
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
				document.getElementById("show").innerHTML = xhttp.responseText;				
			}
			
		};
		xhttp.open("POST", "med_detailes.jsp?s=" + str, true);
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
                <a class="navbar-brand" href="Retailer_dashboard.jsp">SSTL</a>
            </div>
            <!-- /.navbar-header -->
            <ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
	        		<a href="#">
	        		
			<%
					String username = (String) session.getAttribute("Retailername");
					String email = (String) session.getAttribute("email");
					String filename = DAO1.getfilefromDb(email);
					System.out.print(filename + " hello ");
					 if(username==null)
					   {
						  response.sendRedirect("Retailerlogin.jsp");
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
						<li class="m_2"><a href="Profile.jsp"><i class="fa fa-user"></i> Profile</a></li>
						<li class="m_2"><a href="Retailer_update.jsp"><i class="fa fa-wrench"></i>Update Profile</a></li>
						<li class="m_2"><a href="Ret_ResetPassword.jsp"><i class="fa fa-wrench"></i> Update password</a></li>
						<li class="m_2"><a href="RetailerLogoutServlet"><i class="fa fa-power-off"></i> Logout</a></li>
	        		</ul>
	      		</li>
			</ul>
			<form class="navbar-form navbar-right">
              <input type="text" class="form-control" value="Search"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search...';}">
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
							<li><a href="Generate_Bill.jsp">Generate Bill</a></li>
							<li><a href="View_Bill.jsp">View Bill</a></li>
							<li><a href="View_low_stock_product .jsp"></i><span
									class="fa arrow"></span>view_low_stock_product</a>
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
	  <div class="container-fluid">
	  <div class="col-md-2"><h3 style="padding-top: 5px;">Search Box</h3></div>
		<div class="col-md-10">
			<form action="#" method="GET">
				<div class="input-group">
					<input type="text" name="Medicinename" id="tfq"
						class="form-control1 input-search" placeholder="Search..."
						onkeyup="show_med()"> <span
						class="input-group-btn">
						 <button class="btn btn-success"  onclick="show_med()" type="button">
							<i class="fa fa-search"></i>
						</button>
					</span>
				</div>
				<!-- Input Group -->
			</form>
		</div>
					</div>
	  </div>
	  <div class="span_11">
	    <div class="clearfix"> </div>
    </div>
      <div class="copy">
       
      <%
 try{
System.out.print(filename+" hello ");
Connection con= DB.dbcon();
String sql = "select * from retailer r1 INNER JOIN retailer_detail r2 ON r1.Retailername=r2.Retailername AND r2.Email=? ORDER BY Medicinename ASC LIMIT 10";

			PreparedStatement ps=con.prepareStatement(sql);	
			ps.setString(1, email);	
			ResultSet rs=ps.executeQuery();
			%>		
				
<table class="table"  rules="groups" id="show">
        <thead>
        		  <tr  class="bg-primary">

    <td><b>Medicine Name</b></td>
    <td><b>Medicine Type</b></td>
    <td><b>TagLine</b></td>
    <td><b>Price</b></td>
    <td><b>Quantity</b></td>
    <td><b>Mrp</b></td>
    <td><b>Discount</b></td>
    <td><b>Manufacture Date</b></td>
    <td><b>Expiry Date</b></td>
    <td><b>Manufacturer Name</b></td>
  	<td><b>Image</b></td>
          </tr>
         </thead>

 <%

while(rs.next())
	{
	String s2= rs.getString(3); 
	String filename1=rs.getString(19);
	System.out.println("File name is:"+filename1);
	%>

	<tr>

    <td><%=rs.getString(3) %>&nbsp;(<%=rs.getString(8) %>)</td>
    <td><%=rs.getString(4) %></td>
    <td><%=rs.getString(5) %></td>
    <td><%=rs.getString(6) %></td>
    <td><%=rs.getString(7) %></td>
    <td><%=rs.getString(10) %></td>  
    <td><%=rs.getString(12) %></td>
    <td><%=rs.getString(14) %></td>
    <td><%=rs.getString(15) %></td>
    <td><%=rs.getString(16) %></td> 
    
   
  <td><img src="images/<%=filename1%>" width="60" height="60"/></td></tr>
    
    <%} 
 }
 catch(Exception e)
 {
 	e.printStackTrace();
 }%>
</table>
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
