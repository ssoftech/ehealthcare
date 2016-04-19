<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
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
	url= "Doc_EmailChecking.jsp?email="+email;
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
 <link rel="stylesheet" href="CSS1/jquery.datetimepicker.css" type="text/css" media="screen" title="no title" charset="utf-8">
<script src="js/jquery.datetimepicker.js" type="text/javascript" ></script>
<script src="js/jquery.datetimepicker.full.js"></script>



</head>
<body>
  
<form action="RegisterServlet" method="post" enctype="multipart/form-data">
<div class="container">
    <h1 class="well">Registration Form</h1>
	<div class="col-lg-12 well">
     
	<div class="row">
				<form>
					<div class="row">
							<div class="col-sm-6 form-group">
								<label>Registration Number</label>
							
								<input type="text" name="Rnum" placeholder="Enter your registration number" class="form-control" required>
							
							</div>
							<div class="col-sm-6 form-group">
								<label>Doctor Degree</label>
								<input type="text" name="Rdeg" placeholder="Enter your degree." class="form-control" required>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Doctor Specialization</label>
							<select class="form-control" id="Rspc" name="Rspc" required>
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
        <option value=" Urology"> Urology</option>
      </select>
							
							</div>
							<div class="col-sm-6 form-group">
								<label>Doctor Experience</label>
								<input type="text" name="Rexp" placeholder="Enter Experience Here.." class="form-control" required>
							</div>
						</div>
                   
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>First Name</label>
							
								<input type="text" name="Fname" placeholder="Enter First Name Here.." class="form-control" required>
							
							</div>
							<div class="col-sm-6 form-group">
								<label>Last Name</label>
								<input type="text" name="Lname" placeholder="Enter Last Name Here.." class="form-control" required>
							</div>
						</div>
					<div class="row">
						<div class="col-sm-6 form-group">
						<label>Email Address</label>
						<input type="text" name="Email" placeholder="@example.com" id="email" class="form-control" onblur="validateEmail(this.value)">
                        <input type="hidden" name="user" id="user" value="Doctor">
                        <span style="color: red" id="emailloc"></span> 
						</div>	
						<div class="col-sm-6 form-group">
								<label>Gender</label>
								<select class="form-control" id="sel1" name="gender" required>
      	 <option value="">select</option>
	  	 <option value="Male">Male</option>
	  	 <option value="Female">Female</option>
	  	 <option value="Others">Others</option>
      </select>
							</div>	
					</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Password</label>
								<input type="password" name="password" placeholder="Enter Password Here.." id="pass" class="form-control" onblur="return validatePassword(this.value)" required>
							<span style="color: red" id="passloc"></span> 
							</div>		
							<div class="col-sm-6 form-group">
								<label>Confirm Password</label>
								<input type="password" name="Confirmpassword" placeholder="Enter confirm Password Here.." id="cnfpass"  class="form-control" onblur="return validateCnfPassword(this.value);" required>
							<span style="color: red" id="cnfpassloc"></span> 
							</div>	
						</div>

	
						<div class="row">
							<div class="col-sm-4 form-group">
								<label>Country</label>
								<select class="form-control" id="sel1" name="country" onchange="fun(this.value)" required>
      	 <option value="">select</option>
	  	 <option value="India">India</option>
	  	 <option value="Usa">USA</option>
      </select>
							</div>	
							<div class="col-sm-4 form-group" id="state2">
								<label>State</label>
								<select class="form-control" id="state" name="state" required>
      	 <option value="">select</option>
      </select>
							</div>	
							<div class="col-sm-4 form-group" id="city2">
								<label>City</label>
								<select class="form-control" id="city" name="city" required>
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
						<div class="col-sm-6 form-group">
								<label>DOB</label>
								<input type="text" name="DOB" id="datetimepicker9" placeholder="Enter DOB.."  class="form-control"  required>
							<span style="color: red" id="cnfpassloc"></span> 
							</div>	
							<div class="col-sm-6 form-group">
								<label>Zipcode</label>
								<input type="text" name="PinCode" placeholder="Enter Zipcode Here.." class="form-control" required>
							</div>		
							</div>	
						<div class="row">						
					<div class="col-sm-12 form-group">
						<label>Phone Number</label>
						<input type="text" name="Mobile No" placeholder="Enter Phone Number Here.." class="form-control" required>
					</div>
                    </div>
                    <div class="row">
                    
                    <label class="col-md-1 control-label" for="Image">Image</label>
  <div class="col-md-3">
<div id="imagePreview"></div>
<input id="uploadFile" type="file" style="width:85px;" name="image" class="img"  />
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

$.datetimepicker.setLocale('en');


$('#datetimepicker_format').datetimepicker({value:'2015/04/15 05:03', format: $("#datetimepicker_format_value").val()});

$("#datetimepicker_format_change").on("click", function(e){
$("#datetimepicker_format").data('xdsoft_datetimepicker').setOptions({format: $("#datetimepicker_format_value").val()});
});

$("#datetimepicker_format_locale").on("change", function(e){
$.datetimepicker.setLocale($(e.currentTarget).val());
});

$('#datetimepicker').datetimepicker({
dayOfWeekStart : 1,

lang:'en',
disabledDates:['1986/01/08','1986/01/09','1986/01/10'],
startDate:	'1986/01/05'
});
$('#datetimepicker').datetimepicker({value:'2015/04/15 05:03',step:10});

$('.some_class').datetimepicker();


$('#default_datetimepicker').datetimepicker({
formatTime:'H:i',
formatDate:'d.m.Y',
//defaultDate:'8.12.1986', // it's my birthday
defaultDate:'+03.01.1970', // it's my birthday
defaultTime:'10:00',

timepickerScrollbar:false
});


var logic = function( currentDateTime ){
if (currentDateTime && currentDateTime.getDay() == 6){
	this.setOptions({
		minTime:'11:00'
	});
}else
	this.setOptions({
		minTime:'8:00'

});
};

$('#datetimepicker2').datetimepicker({
yearOffset:222,
lang:'ch',
timepicker:false,
format:'d/m/Y',
formatDate:'Y/m/d',

minDate:'-1970/01/02', // yesterday is minimum date
maxDate:'+1970/01/02' // and tommorow is maximum date calendar
});
	$('#datetimepicker9').datetimepicker({
	/* onGenerate:function( ct ){
		$(this).find('.xdsoft_date.xdsoft_weekend')
		
	.addClass('xdsoft_disabled');
	}, */
	timepicker:false,
	format:'d/m/Y',
	formatDate:'Y/m/d',
	weekends:['01.01.2014','02.01.2014','03.01.2014','04.01.2014','05.01.2014','06.01.2014']

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