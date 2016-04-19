<%@page import="db.DB"%>
<%@page import="Model.DAO1"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="controller.Retailervalidate.*" import="java.sql.Connection"
import="java.sql.PreparedStatement" import="java.sql.ResultSet" import="db.Db.*" import="java.io.IOException"%>

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
window.onload = function(){ 
	//Get submit button
	var submitbutton = document.getElementById("tfq");
	//Add listener to submit button
	if(submitbutton.addEventListener){
		submitbutton.addEventListener("click", function() {
			if (submitbutton.value == 'Search our website'){//Customize this text string to whatever you want
				submitbutton.value = '';
			}
		});
	}
}
</script>
<script type="text/javascript">
window.onload = function(){ 
	//Get submit button
	var submitbutton = document.getElementById("tfq");
	//Add listener to submit button
	if(submitbutton.addEventListener){
		submitbutton.addEventListener("click", function() {
			if (submitbutton.value == 'Search our website'){//Customize this text string to whatever you want
				submitbutton.value = '';
			}
		});
	}
}

function pop(div) {
	document.getElementById(div).style.display = 'block';
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
				String username = (String)session.getAttribute("Retailername");
			String email=(String)session.getAttribute("email");
		 String mobile=(String)session.getAttribute("mobile");
			String Address=(String)session.getAttribute("Address");
			String City=(String)session.getAttribute("City");
			   if(username==null)
			   {
				  response.sendRedirect("Retailerlogin.jsp");
			   }
			   String filename=DAO1.getfilefromDb(email);
			System.out.print(filename+" hello ");
                %> 
 <%
			String retailername = "";
       		String Mobile="";
       		String address="";
       		String city="";
			HttpSession sees = request.getSession();
			String Email = (String)session.getAttribute("email");
			System.out.println("email from Servlet"+email);
		
			System.out.println("Email is" + email);
			if (email != "" || email != null) {
				try{
				Connection con = DB.dbcon();
				String sql = "Select Retailername, Mobile, Address, City from medical.retailer_detail where Email=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, email);
				ResultSet rs = ps.executeQuery();
				if (rs.next()) {
					retailername = rs.getString("Retailername");
					Mobile = rs.getString("Mobile");
				
					address = rs.getString("Address");
					city = rs.getString("City");
					sees = request.getSession();
					sees.setAttribute("Retailername", retailername);
					sees.setAttribute("Mobile", Mobile);
					sees.setAttribute("Address", address);
					sees.setAttribute("City", city);
				}
				}catch(Exception e){System.out.println(e);}
			}
		%>  
			<%
				String Username = (String)session.getAttribute("Retailername");
			
				System.out.println("Username is" + session.getAttribute("Retailername"));
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
      <div class="row">
      <div class="col-md-5  toppad  pull-right col-md-offset-3 ">
           

      </div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 toppad" >
   
   
          <div class="panel panel-info text-left">
            <div class="panel-heading">
              <h3 class="panel-title"><%=username%></h3>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-3 col-lg-3 " align="center"> <img src="images/<%=filename%>" height="120" width="120"></img></div>
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>Name:</td>
                        <td><%=username%></td>
                      </tr>
                        
                        <tr>
                        <td>Home Address:</td>
                        <td><%=address%></td>
                      </tr>
                      <tr>
                        <td>City:</td>
                        <td><%=city%></td>
                      </tr>
                      <tr>
                        <td>Email:</td>
                        <td><%=email%></td>
                      </tr>
                      <tr>
                        <td>Phone Number:</td>
                        <td><%=Mobile%></td>
                           </tr>
                      
                     
                    </tbody>
                  </table>
                  <table  align="center"><tr><td>
                  <a href="Retailer_update.jsp" class="btn btn-info"><span><i class="glyphicon glyphicon-edit"></i>Edit Profile</span></a>
                  <a href="Retailer_dashboard.jsp" class="btn btn-info">Back</a>
                  </td></tr></table>
                </div>
              </div>
            </div>
            </div>
        </div>
        </div>
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
