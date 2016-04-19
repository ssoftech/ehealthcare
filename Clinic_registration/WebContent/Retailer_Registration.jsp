<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOG IN</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>

@import "font-awesome.min.css";
@import "font-awesome-ie7.min.css";
/* Space out content a bit */
body {
  padding-top: 20px;
  padding-bottom: 20px;
}

/* Everything but the jumbotron gets side spacing for mobile first views */
.header,
.marketing,
.footer {
  padding-right: 15px;
  padding-left: 15px;
}

/* Custom page header */
.header {
  border-bottom: 1px solid #e5e5e5;
}
/* Make the masthead heading the same height as the navigation */
.header h3 {
  padding-bottom: 19px;
  margin-top: 0;
  margin-bottom: 0;
  line-height: 40px;
}

/* Custom page footer */
.footer {
  padding-top: 19px;
  color: #777;
  border-top: 1px solid #e5e5e5;
}

/* Customize container */
@media (min-width: 768px) {
  .container {
    max-width: 730px;
  }
}
.container-narrow > hr {
  margin: 30px 0;
}

/* Main marketing message and sign up button */
.jumbotron {
  text-align: center;
  border-bottom: 1px solid #e5e5e5;
}
.jumbotron .btn {
  padding: 14px 24px;
  font-size: 21px;
}

/* Supporting marketing content */
.marketing {
  margin: 40px 0;
}
.marketing p + h4 {
  margin-top: 28px;
}

/* Responsive: Portrait tablets and up */
@media screen and (min-width: 768px) {
  /* Remove the padding we set earlier */
  .header,
  .marketing,
  .footer {
    padding-right: 0;
    padding-left: 0;
  }
  /* Space out the masthead */
  .header {
    margin-bottom: 30px;
  }
  /* Remove the bottom border on the jumbotron for visual effect */
  .jumbotron {
    border-bottom: 0;
  }
}
</style>
<style>
.btn {
  background: #006765;
  background-image: -webkit-linear-gradient(top, #006765, #006765);
  background-image: -moz-linear-gradient(top, #006765, #006765);
  background-image: -ms-linear-gradient(top, #006765, #006765);
  background-image: -o-linear-gradient(top, #006765, #006765);
  background-image: linear-gradient(to bottom, #006765, #006765);
  -webkit-border-radius: 11;
  -moz-border-radius: 11;
  border-radius: 11px;
  font-family: Arial;
  color: #ffffff;
  font-size: 15px;
  padding: 10px 20px 10px 20px;
  text-decoration: none;
}

.btn:hover {
  background: #3cb0fd;
  background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
  background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
  text-decoration: none;
}

</style>
<!-- <script>
function register()
{
	window.location="Doctor_registration.html";
}
</script> -->
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
<body>
  
<form action="RetailerRegisterServlet" method="post" enctype="multipart/form-data" >
<div class="container">
    <h1 class="well">Registration Form</h1>
	<div class="col-lg-12 well">
     
	<div class="row">
				<form>
					
                   
						<div class="row">
							<div class="col-sm-12 form-group">
								<label>Retailer Name</label>
							
								<input type="text" name="retailername" placeholder="Enter Retailer Name Here.." class="form-control" required />
							
							</div>
						
						</div>
					<div class="row">
						<div class="col-sm-12 form-group">
						<label>Email Address</label>
						<input type="Email" name="Email" placeholder="@example.com" id="email" class="form-control" onblur="validateEmail(this.value)" required/>
                        <input type="hidden" name="user" id="user" value="Retailer">
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

</body>
</html>