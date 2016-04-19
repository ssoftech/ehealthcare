<%@page import= "java.util.Iterator" %>
<%@page import="bean.clinicbean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*" import="Model.DAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

  
<head>

<title>Medicine</title>

<style type="text/css">




ul{
        padding: 0;
        list-style: none;
        background: #FFF;
		
		
    }
    ul li{
	display: inline-block;
	position: relative;
	line-height: 25px;
	text-align: left;
    }
    ul li a{
        display: block;
        padding: 8px 25px;
        color: #333;
        text-decoration: none;
    }
    ul li a:hover{
        color: #fff;
        background: #939393;
    }
    ul li ul.dropdown{
        min-width: 125px; /* Set width of the dropdown */
        background: #f2f2f2;
        display: none;
        position: absolute;
        z-index: 999;
        left: 0;
    }
    ul li:hover ul.dropdown{
        display: block;	/* Display the dropdown */
    }
    ul li ul.dropdown li{
        display: block;
    }



	
div.img {
    margin: 5px;
    border: 10px solid #FFF;
    float: left;
    width: 180px;
}

div.img:hover {
    border: 1px solid #777;
}

div.img img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 15px;
    text-align: center;
}

</style>
 
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
 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="index.css" type="text/css" />
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
  }
  </style>
  <style>
/*--------------------------------------------------------------
1.0 - BASE SITE STYLES
--------------------------------------------------------------*/
*,*:after,*:before {
  box-sizing:border-box;
  -moz-box-sizing:border-box;
  -webkit-box-sizing:border-box;
}

.cf:before,
.cf:after {
    content:"";
    display:table;
}
.cf:after {
    clear:both;
}



/*--------------------------------------------------------------
2.0 - SEARCH FORM
--------------------------------------------------------------*/
.searchform {
	left: 35%;
  padding: 2px 5px;
  position: absolute;
	margin: -22px 0 0 -170px;
	top: 100%;
  width:60%;
  height:40px;
 
  border-radius: 10px;
  -moz-border-radius: 10px;
  -webkit-border-radius: 10px
}

.searchform input, .searchform button {
	float: left
}
.searchform input {
	background:#fefefe;
	border: none;
	font:12px/12px 'HelveticaNeue', Helvetica, Arial, sans-serif;
	margin-right: 5px;
	padding: 15px;
	width: 70%;
	box-shadow: 0 0 4px rgba(0,0,0,.4) inset, 1px 1px 1px rgba(255,255,255,.75);
	-moz-box-shadow: 0 0 4px rgba(0,0,0,.4) inset, 1px 1px 1px rgba(255,255,255,.75);
	-webkit-box-shadow: 0 0 4px rgba(0,0,0,.4) inset, 1px 1px 1px rgba(255,255,255,.75);
  border-radius: 9px;
  -moz-border-radius: 9px;
  -webkit-border-radius: 9px
}
	.searchform input:focus {
		outline: none;
		box-shadow:0 0 4px #0d76be inset;
		-moz-box-shadow:0 0 4px #0d76be inset;
		-webkit-box-shadow:0 0 4px #0d76be inset;
	}
	.searchform input::-webkit-input-placeholder {
  	font-style: italic;
  	line-height: 15px
	}

	.searchform input:-moz-placeholder {
	  font-style: italic;
  	line-height: 15px
	}

.searchform button {
	background: rgb(52,173,236);
	background: -moz-linear-gradient(top, rgba(52,173,236,1) 0%, rgba(38,145,220,1) 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(52,173,236,1)), color-stop(100%,rgba(38,145,220,1)));
	background: -webkit-linear-gradient(top, rgba(52,173,236,1) 0%,rgba(38,145,220,1) 100%);
	background: -o-linear-gradient(top, rgba(52,173,236,1) 0%,rgba(38,145,220,1) 100%);
	background: -ms-linear-gradient(top, rgba(52,173,236,1) 0%,rgba(38,145,220,1) 100%);
	background: linear-gradient(to bottom, rgba(52,173,236,1) 0%,rgba(38,145,220,1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#34adec', endColorstr='#2691dc',GradientType=0 );
	border: none;
	color:#fff;
	cursor: pointer;
	font: 13px/13px 'HelveticaNeue', Helvetica, Arial, sans-serif;
	padding: 15px;
	width:106px;
	box-shadow: 0 0 2px #2692dd inset;
	-moz-box-shadow: 0 0 2px #2692dd inset;
	-webkit-box-shadow: 0 0 2px #2692dd inset;
  border-radius: 9px;
  -moz-border-radius: 9px;
  -webkit-border-radius: 9px;
}
	.searchform button:hover {
		opacity:.9;
	}


  </style>
</head>

<body>
<!-- 1st row-->
	<div class="row bg-primary text-center" style="padding-top:8px;">
    	<div class="col-md-4">
        	<p><span class="glyphicon glyphicon-earphone"></span> : 1800-7070-6464</p>
        </div>
        <div class="col-md-4">
        	<p>Download Our App <span class="glyphicon glyphicon-save"></span></p>
        </div>
        <div class="col-md-4">
        	<p>Contact With Us <span class="glyphicon glyphicon-home"></span></p>
        </div>
    </div>
<div class="container">

<header>

 
<!-- 2nd row-->
<div class="row">
<div class="col-md-2">
       <img src="Dekstop/New folder/Logo.jpg" width="125px" height="90px" />
</div>

<div id="col-md-10" style="padding-top:50px;">
 <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">About</a></li>
        <li>
            <a href="#">Our Services &#9662;</a>
            <ul class="dropdown">
                <li><a href="#">Doctors</a></li>
                <li><a href="#">Medicine Shop</a></li>
                <li><a href="#">Pharma</a></li>
                <li><a href="#">Hospital</a></li>
            </ul>
        </li>
        <li>
            <a href="#">Login as &#9662;</a>
            <ul class="dropdown">
            	<li><a href="#">Customer</a></li>
                <li><a href="#">Doctor</a></li>
                <li><a href="#">Medicine Shop</a></li>
                <li><a href="#">Pharma</a></li>
                <li><a href="#">Hospital</a></li>
                <li><a href="#">Clinic</a></li>
            </ul>
        </li>
        <li><a href="#">Contact</a></li>
  </ul>
</div>

</div>
<!--end 2nd row-->
</header>
 
 <!--end header-->
 


<!--<div class="clearfix"></div>-->
<br />


<div class="container">

<div class="row">
<div class="col-md-12 well-sm bg-primary text-center">
<div class="col-md-4"></div>
<div class="col-md-4"><h5>WELCOME</h5></div>
<div class="col-md-4" align="right">
<script src="http://www.clocklink.com/embed.js"></script> <script type="text/javascript" language="JavaScript">obj=new Object;obj.clockfile="5012-orange.swf";obj.TimeZone="India_Calcutta"; obj.width=91;obj.height=35;obj.wmode="transparent";showClock(obj);</script>
</div>
</div>
</div>
</div>
<!-- Work -->
<div class="container">
<div class="row">
<h1 align="center">Find Clinic</h1><hr />
<form action="SearchServlet" method="post">
<div class="col-md-3">

<div class="form-group">
      <label for="sel1">Country</label>
      <select class="form-control" id="sel1" name="country" onchange="fun(this.value)">
      	 <option value="selec">select</option>
	  	 <option value="India">India</option>
	  	 <option value="Usa">USA</option>
      </select>
</div>
</div>
<div class="col-md-3">

<div class="form-group" id="state2">
      <label for="sel1">State</label>
      <select class="form-control" id="sel1" name="state">
      	 <option value="selec">select</option>
      </select>
</div>
</div>
<div class="col-md-3">

<div class="form-group" id="city2">
      <label for="sel1">City</label>
      <select class="form-control" id="sel1" name="city">
      	 <option value="selec">select</option>
      </select>
</div>
</div>
<div class="col-md-3" style="padding-top:25px;">
<button type="submit" class="btn btn-primary" name="Go" id="Go" value="Search">Search</button>
</div>
</form>
</div>
<div class="row">
<form>
 <%
  String filename=request.getParameter("file");
                
 System.out.println(filename);
                %>
<%  try{
	ArrayList<clinicbean> ar=(ArrayList<clinicbean>)request.getAttribute("ar");
System.out.println("ssssss");
  if(ar!=null)
  { 
	  System.out.println("ar"+ar);
  %>
	  <table class="table"  rules="groups">
        <thead>
        		  <tr  class="bg-primary">
                      <td><b>Image</b></td>
                      <td><b>Clinicname</b></td>
                      <td><b>Address</b></td>
                      <td><b>Mobileno</b></td>
                      <td><b>Click Here</b></td>
                 </tr>
         </thead>
	 <% Iterator<clinicbean> it=ar.iterator() ;
	 /* System.out.println("hiiiiiii"+it); */
	 while(it.hasNext())
	  {
		 clinicbean cb=it.next();  
		  %>
<tr><td><img src="images/<%=cb.getFile()%>" height="100" width="100"></img></td>
<td><%=cb.getClinicname() %></td>
<td><%=cb.getAddress() %></td>
<td><%=cb.getMobile() %></td>
<td><a href="Clinic.jsp?ClinicName=<%=cb.getClinicname()%>&Mobile=<%=cb.getMobile()%>">Click Here</a></td></tr>

<%
/* System.out.println(cb.getMobile()); */
	  }}
  else
	  { 
	  System.out.println("s");
	  }
	  }
catch(Exception e)
{
	e.printStackTrace();
}%>

</table>
</form>
</div>
</div>

<div class="row">
  <hr />

</div>
<!-- End Work -->
<div class="container-fluid">

<div class="row">

<div class="col-md-3">

<ul class="list-group">
<h3>About</h3>
  <li class="list-group-item">Letest News</li>
  <li class="list-group-item">Company Overview</li>
  <li class="list-group-item">Our Approach</li>
  <li class="list-group-item">More about SSTL</li>
</ul>

</div>

<div class="col-md-3">

<ul class="list-group">
<h3>Our Services</h3>
  <li class="list-group-item">Doctor</li>
  <li class="list-group-item">Clinic</li>
  <li class="list-group-item">Pathology</li>
  <li class="list-group-item">Hospital</li>
</ul>

</div>

<div class="col-md-3">
<ul class="list-group">
<h3>Contact Us</h3>
  <li class="list-group-item"><img src="Dekstop/New folder/Logo.jpg" width="80" height="46"/><font size="+2"><b>SSTL</b></font></li>
  <li class="list-group-item">DN-10, Salt Lake, Sec-V, Kolkata-91</li>
  <li class="list-group-item"><span class="glyphicon glyphicon-earphone"></span> : 1800-7070-6464</li>
  
</ul>

</div>

<div class="col-md-3">
<ul class="list-group">
<h3>Popular Links</h3>
  <li class="list-group-item">Careers</li>
  <li class="list-group-item">Contact SSTL</li>
  <li class="list-group-item">Customer Complaints</li>
  <li class="list-group-item">Services</li>
</ul>

</div>

</div>
</div>

<div class="row well well-sm">
  <div class="col-sm-4">
  <h4>FOLLOW US</h4>
  <img src="Dekstop/New folder/1457101080_facebook-circle.png" width="50" height="50"/>
  <img src="Dekstop/New folder/1457101091_twitter-circle.png" width="50" height="50"/>
  <img src="Dekstop/New folder/1457101100_send-mail-circle.png" width="50" height="50"/>
  </div>
  <div class="col-sm-4">
  <h4>DOWNLOAD OUR FREE APP</h4>
  <img src="Dekstop/New folder/android.png" width="120" height="50"/>
  <img src="Dekstop/New folder/available-on-the-app-store-1345130940.jpg" width="120" height="50"/>
  </div>
  <div class="col-sm-4">
  <h4>PAYMENT OPTIONS</h4><marquee behavior="scroll" direction="left" onmouseover="this.stop();" onmouseout="this.start();">
  <img src="Dekstop/New folder/1457101656_Visa-Curved.png" width="70" height="40"/>
  <img src="Dekstop/New folder/1457101646_Mastercard-Curved.png" width="70" height="40"/>
  <img src="Dekstop/New folder/1457101677_American-Express-Curved.png" width="70" height="40"/>
  <img src="Dekstop/New folder/1457101684_Paypal-Curved.png" width="70" height="40"/>
</marquee>
 
  
  </div>
</div>

</div>


<div class="container bg-primary">
	<div class="row">
    	<div class="col-md-12 text-center" style="padding-top:10px;">
        	<p>Copyright © 2015 SSTL. All Rights Reserved | Design by SSTL</p>
        </div>
    </div>
</div>

</div>
</body>
</html>
