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
<script type="text/javascript">
function validateEmail() {
	var email = document.getElementById("email").value;
	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	var status = false;
	if (email == null || email == "" || !filter.test(email)) {
		document.getElementById("emailloc").innerHTML = "Enter Valid Email ID";
		return false;
	} /* else {
		document.getElementById("emailloc").innerHTML = "<img src='images/Tick_mark.png'/>";
		return true;
	} */
	var xhttp = new XMLHttpRequest();
	var url;
	url= "EmailChecking.jsp?email="+email;
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	      document.getElementById("emailloc").innerHTML = xhttp.responseText;
	      gg(email);
	    }
	  };
	  xhttp.open("GET", url, true);
	  xhttp.send();
	

}
function validatePassword() {
	var password = document.getElementById("pass").value;
	var status = false;
	if (password == null || password == "" || password.length < 7) {
		document.getElementById("passloc").innerHTML = "minimum 7 charecter";
		return false;
	} else {
		document.getElementById("passloc").innerHTML = "";
		return true;
	}
}

function validateCnfPassword() {
	var password = document.getElementById("pass").value
	var cnfpassword = document.getElementById("cnfpass").value;
	var status = false;
	if (cnfpassword == null || cnfpassword == "" || password != cnfpassword) {
		document.getElementById("cnfpassloc").innerHTML = "Password not match";
		return false;
	} else {
		document.getElementById("cnfpassloc").innerHTML = "Password  match";
		return true;
	}
}

</script>

<script>
function fun(str) {
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
	      document.getElementById("state2").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("POST", "state2.jsp?s="+str, true);
	  xhttp.send();
	}
function fun11(str) {
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
	      document.getElementById("city2").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("POST", "city2.jsp?s="+str, true);
	  xhttp.send(); 
	}
</script>

<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
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
                            <li><a href="AdminPathathogyview.jsp">Pathology</a></li>

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
          <form action="AdminRetailerRegisterServlet" method="post" enctype="multipart/form-data" >
<div class="container-fluid">
    <h3 class="well">Retailer Registration Form</h3>
	<div class="col-lg-12 well">
     
	<div class="row">
				<form>
					
                   
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Retailer Name</label>
							
								<input type="text" name="retailername" placeholder="Enter Retailer Name Here.." class="form-control" required />
							
							</div>
							<div class="col-sm-6 form-group">
								<label>User ID</label>
								<input type="text" name="userid" placeholder="Enter your User ID Here.." class="form-control" required/>
							</div>
						
						</div>
					<div class="row">
						<div class="col-sm-12 form-group">
						<label>Email Address</label>
						<input type="Email" name="Email" placeholder="@example.com" id="email" class="form-control" onblur="validateEmail(this.value)" required/>
                        <span style="color: red" id="emailloc"></span> 
						</div>
					</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>password</label>
								<input type="password" name="password" placeholder="Enter Password Here.." id="pass" class="form-control" onblur="return validatePassword(this.value)" required/>
							<span style="color: red" id="passloc"></span>
							</div>		
							<div class="col-sm-6 form-group">
								<label>Confirm Password</label>
								<input type="password" name="confirmpassword" placeholder="Enter confirm Password Here.." id="cnfpass"  class="form-control" onblur="return validateCnfPassword(this.value);" required/>
							<span style="color: red" id="cnfpassloc"></span>
							</div>	
						</div>

	
						<div class="row">
							<div class="col-sm-4 form-group">
								<label>Country</label>
								<select class="form-control" id="sel1" name="country" onchange="fun(this.value)" required/>
      	 <option value="">Select</option>
	  	 <option value="India">India</option>
	  	 <option value="Usa">USA</option>
      </select>
							</div>	
							<div class="col-sm-4 form-group" id="state2">
								<label>State</label>
								<select class="form-control" id="state" name="state" required/>
      	 <option value="">select</option>
      </select>
							</div>	
							<div class="col-sm-4 form-group" id="city2">
								<label>City</label>
								<select class="form-control" id="city" name="city" required/>
      	 <option value="">select</option>
      </select>
							</div>	
						</div>	
						<div class="row">
						
						<div class="col-sm-12 form-group">
							<label>Address</label>
							<textarea placeholder="Enter Address Here.." name="Address" rows="3" class="form-control" required></textarea>
						</div>

						</div>


						<div class="row">
							<div class="col-sm-12 form-group">
								<label>Zipcode</label>
								<input type="text" name="PinCode" placeholder="Enter Zipcode Here.." class="form-control" required/>
							</div>		
							</div>	
						<div class="row">						
					<div class="form-group">
  <label class="col-md-12 control-label" for="MOBILE_NO">Mobile Number</label>
  <div class="col-md-12">
    <div class="input-group">
      <span class="input-group-addon">+91</span>
      <input id="MOBILE_NO" name="MobileNo" class="form-control" placeholder="Enter Your Mobile Number " type="text" required="">
    </div>
    <p class="help-block">10 Digit Number</p>
  </div>
</div>


                    </div>
<div class="row">
							<div class="col-sm-12 form-group">
								<label>Delivery Range</label>
								<select class="form-control" id="sel1" name="Range" required>
                                <option value="">select</option>
                                <option value="0km-5km">0km-5km</option>
                                <option value="5km-10km">5km-10km</option>
                                <option value="10km-15km">10km-15km</option>
                                 <option value="15km-20km">15km-20km</option>
                                 </select>
							</div>		
							</div>	
<div class="row">
							<div class="col-sm-12 form-group">
								<label>Minimum Price For Delivary</label>
								<input type="text" name="minimum price for delivary" placeholder="Enter Minimum Price.." class="form-control" required/>
							</div>		
							</div>	
                    <div class="row">
                    
                    <label class="col-md-1 control-label" for="Image">Image</label>
  <div class="col-md-3">
<div id="imagePreview"></div>
<input id="uploadFile" type="file" style="width:90px;" name="file" class="img"  />
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

                    
                    </div>
                    <div>

					<div class="row">
                    <div class="col-sm-12 text-center">
                    <br></br>
					<button type="submit" name="submit" class="btn btn-lg btn-info" value="submit">Submit</button>					
					</div>
                    </div>
 </form> 
  
  



				</div>
	</div>
	</div>
</form>
        </div>
        
    </div>
</div>
</body>
</html>
    