<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/addstyle.css">
<script src="js/addscript.js"></script>

</head>
<%
String username = (String)session.getAttribute("username");
if(username==null){
	response.sendRedirect("adminlogin.jsp");	
}
%>
<body>
<nav class="navbar navbar-default navbar-static-top navbar-fixed-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">
				Admin
			</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">			
			
			<ul class="nav navbar-nav navbar-right">
				<li><a href="http://www.pingpong-labs.com" target="_blank">Visit Site</a></li>
				<li class="dropdown ">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
						Account
						<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li class="dropdown-header">SETTINGS</li>
							<li class=""><a href="#">Other Link</a></li>
							<li class=""><a href="#">Other Link</a></li>
							<li class=""><a href="#">Other Link</a></li>
							<li class="divider"></li>
							<li><a href="Adminlogout">Logout</a></li>
						</ul>
					</li>
				</ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>

     <div class="row" style="margin-top:50px;">
    <!-- uncomment code for absolute positioning tweek see top comment in css -->
    <!-- <div class="absolute-wrapper"> </div> -->
    <!-- Menu -->
    <div class="side-menu">
    
    <nav class="navbar navbar-default" role="navigation">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <div class="brand-wrapper">
            <!-- Hamburger -->
            <button type="button" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <!-- Brand -->
            <div class="brand-name-wrapper">
                <a class="navbar-brand" href="#">
                    Brand
                </a>
            </div>

            <!-- Search -->
            <a data-toggle="collapse" href="#search" class="btn btn-default" id="search-trigger">
                <span class="glyphicon glyphicon-search"></span>
            </a>

            <!-- Search body -->
            <div id="search" class="panel-collapse collapse">
                <div class="panel-body">
                    <form class="navbar-form" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search">
                        </div>
                        <button type="submit" class="btn btn-default "><span class="glyphicon glyphicon-ok"></span></button>
                    </form>
                </div>
            </div>
        </div>

    </div>

    <!-- Main Menu -->
    <div class="side-menu-container">
        <ul class="nav navbar-nav">

            <li class="active"><a href="Admin.jsp"><span class="glyphicon glyphicon-send"></span>Home</a></li>
            <li class="active"><a href="#"><span class="glyphicon glyphicon-plane"></span>Empty Field</a></li>
            <li class="panel panel-default active" id="dropdown">
                <a data-toggle="collapse" href="#dropdown-lvl2">
                    <span class="glyphicon glyphicon-user"></span> View All <span class="caret"></span>
                </a>

                <!-- Dropdown level 1 -->
                <div id="dropdown-lvl2" class="panel-collapse collapse">
                    <div class="panel-body">
                        <ul class="nav navbar-nav">
                        	<li><a href="Clinic_view.jsp">Clinics</a></li>
                            <li><a href="Doctor_view.jsp">Doctors</a></li>
                            <li><a href="Retailer_view.jsp">Retailers</a></li>
                            <li><a href="#">Pathology</a></li>

                         </ul>
                    </div>
                </div>
            </li>

            <!-- Dropdown-->
            <li class="panel panel-default active" id="dropdown">
                <a data-toggle="collapse" href="#dropdown-lvl1">
                    <span class="glyphicon glyphicon-user"></span> Registration <span class="caret"></span>
                </a>

                <!-- Dropdown level 1 -->
                <div id="dropdown-lvl1" class="panel-collapse collapse">
                    <div class="panel-body">
                        <ul class="nav navbar-nav">
                            <li><a href="Adminclinic_registration.jsp">Clinic</a></li>
                            <li><a href="AdminDoctorRegistration.jsp">Doctor</a></li>
                            <li><a href="AdminRetailer_Registration.jsp">Retailer</a></li>
                            <li><a href="Adminpathalogy registration.jsp">Pathology</a></li>

                        </ul>
                    </div>
                </div>
            </li>

            <li><a href="#"><span class="glyphicon glyphicon-signal"></span> Management Team </a></li>

        </ul>
    </div><!-- /.navbar-collapse -->
</nav>
    
    </div>

    <!-- Main Content -->
    <div class="container-fluid">
        <div class="side-body">
           <h1> WELCOME TO ADMIN </h1>
           <pre> HAVE A NICE DAY </pre>
        </div>
        <div class="side-body">
           
           <%
String user_email=request.getParameter("eml");
String user=request.getParameter("user");
String Category=request.getParameter("category");
System.out.println("Category is: "+Category);
%>
<div class="container-fluid">
<div class="row">
<div class="col-md-12 text-center">
<h3>Approve  Request</h3>
<hr></hr>
</div>
</div>

<div class="row">
<form action="Admin_ApproveServlet" method="post">
<div class="col-md-3">

<input type="text" name="Email" class="form-control" placeholder="Enter Email" id="Email" value="<%=user_email%>" readonly="readonly"/>
 </div> 
 <div class="col-md-3">
<select class="form-control" id="sel1" name="User_Type" readonly="readonly" >
   <option value="<%=user%>"><%=user%></option>
</select>
</div>
 <div class="col-md-3">
 <input type="text"  class="form-control" name="user_id" placeholder="Enter user_id" id="user_id"/>
 </div>
  <div class="col-md-3">
<input type="submit"  class="form-control bg-primary" name="approve" id= "approve"/>
</div>
</form>
<% 
%>

</div>
</div>          
        </div>
    </div>
</div>
</body>
</html>
    