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
<link rel="stylesheet" type="text/css" href="css/style2.css" />
		<script type="text/javascript" src="js/jquery.smart_autocomplete.js"></script>
		<script src="js/jquery.autocomplete.js"></script>
		<script>
		function fun()
		{

			
			
			 var vat2= parseFloat(document.getElementById("vat").value);
			 
			 var vatdiv2=vat2/100;
			
			var price= parseFloat(document.getElementById("pricehid").value);
			var pricestore=parseFloat(document.getElementById("pricestore").value);
			var sum20= price+(vatdiv2*price);
			if(!vat2)
			{
			 document.getElementById("price").innerHTML = pricestore; 
			 document.getElementById("pricesave").value = pricestore; 

			}
			else
			{
		 document.getElementById("price").innerHTML = sum20;
		 document.getElementById("pricesave").value = sum20; 
			}

			
		}
		</script>
				<script>
		jQuery(function(){
		$("#country").autocomplete("list.jsp");
		});
		jQuery(function(){
			$("#country1").autocomplete("list.jsp");
			});

		jQuery(function(){
			$("#country2").autocomplete("list.jsp");
			});

		jQuery(function(){
			$("#country3").autocomplete("list.jsp");
			});

		jQuery(function(){
			$("#country4").autocomplete("list.jsp");
			});
		jQuery(function(){
			$("#mobile").autocomplete("mobileno.jsp");
			});

		</script>
		<script type="text/javascript">
		var cnt=1;
		var delcnt =1;
		var priceee1=0;
		var priceee2=0;
		var priceee3=0;
		var priceee4=0;
		var priceee5=0;
		var vat=0;


		function show()
		{
			cnt=cnt+1;
			 var s2= document.getElementById("tr2");
			 var s3= document.getElementById("tr3");
			 var s4= document.getElementById("tr4");
			 var s5= document.getElementById("tr5");
			 
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
			  var url = "Azaxmobile.jsp?val="+x;
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
			      
			    }
			  };
			  xhttp.open("POST", url,true);
			  xhttp.send();
		}

		function prc()
		{
			var x = document.getElementById("country").value;
			
		    /* document.getElementById("demo").innerHTML = "You selected: " + x; */
		    document.getElementById('demo1').value = x;
		    
		    
		    var xhttp;
			  var url = "AzaxPrice.jsp?val="+x;
			  if (window.XMLHttpRequest) {
			    // code for modern browsers
			    xhttp = new XMLHttpRequest();
			    } else {
			    // code for IE6, IE5
			    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
			  }
			  xhttp.onreadystatechange = function() {
			    if (xhttp.readyState == 4 && xhttp.status == 200) {
			      document.getElementById("demo").value=priceee1 = xhttp.responseText;
			      Total();
				
			    }
			  };
			  xhttp.open("POST", url,true);
			  xhttp.send();
		}
		function prc1()
		{
			var x = document.getElementById("country1").value;
			
		    /* document.getElementById("demo").innerHTML = "You selected: " + x; */
		    document.getElementById('demo1a').value = x;
		    
		    
		    var xhttp;
			  var url = "AzaxPrice.jsp?val="+x;
			  if (window.XMLHttpRequest) {
			    // code for modern browsers
			    xhttp = new XMLHttpRequest(); 
			    } else {
			    // code for IE6, IE5
			    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
			  }
			  xhttp.onreadystatechange = function() {
			    if (xhttp.readyState == 4 && xhttp.status == 200) {
			      document.getElementById("demoa").value=priceee2 = xhttp.responseText;
			      Total();
			    }
			  };
			  xhttp.open("POST", url,true);
			  xhttp.send();
		}
		function prc2()
		{
			var x = document.getElementById("country2").value;
			
		    /* document.getElementById("demo").innerHTML = "You selected: " + x; */
		    document.getElementById('demo1b').value = x;
		    
		    
		    var xhttp;
			  var url = "AzaxPrice.jsp?val="+x;
			  if (window.XMLHttpRequest) {
			    // code for modern browsers
			    xhttp = new XMLHttpRequest();
			    } else {
			    // code for IE6, IE5
			    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
			  }
			  xhttp.onreadystatechange = function() {
			    if (xhttp.readyState == 4 && xhttp.status == 200) {
			      document.getElementById("demob").value=priceee3 = xhttp.responseText;
			      Total();
			    }
			  };
			  xhttp.open("POST", url,true);
			  xhttp.send();
		}
		function prc3()
		{
			var x = document.getElementById("country3").value;
			
		    /* document.getElementById("demo").innerHTML = "You selected: " + x; */
		    document.getElementById('demo1c').value = x;
		    
		    
		    var xhttp;
			  var url = "AzaxPrice.jsp?val="+x;
			  if (window.XMLHttpRequest) {
			    // code for modern browsers
			    xhttp = new XMLHttpRequest();
			    } else {
			    // code for IE6, IE5
			    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
			  }
			  xhttp.onreadystatechange = function() {
			    if (xhttp.readyState == 4 && xhttp.status == 200) {
			      document.getElementById("democ").value=priceee4 = xhttp.responseText;
			      Total();
			    }
			  };
			  xhttp.open("POST", url,true);
			  xhttp.send();
		}
		function prc4()
		{
			var x = document.getElementById("country4").value;
			
		    /* document.getElementById("demo").innerHTML = "You selected: " + x; */
		    document.getElementById('demo1d').value = x;
		    
		    
		    var xhttp;
			  var url = "AzaxPrice.jsp?val="+x;
			  if (window.XMLHttpRequest) {
			    // code for modern browsers
			    xhttp = new XMLHttpRequest();
			    } else {
			    // code for IE6, IE5
			    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
			  }
			  xhttp.onreadystatechange = function() {
			    if (xhttp.readyState == 4 && xhttp.status == 200) {
			      document.getElementById("demod").value =priceee5= xhttp.responseText;
			      Total();
			    }
			  };
			  xhttp.open("POST", url,true);
			  xhttp.send();
		}

		function validateDec(key) {
		    //getting key code of pressed key
		    var keycode = (key.which) ? key.which : key.keyCode;
		    //comparing pressed keycodes
		    if (!(keycode == 8 || keycode == 46) && (keycode < 48 || keycode > 57)) {
		        return false;
		    }
		    else {
		var parts = key.srcElement.value.split('.');
		        if (parts.length > 1 && keycode == 46)
		            return false;
		        return true;
		    }
		}

		function addSlashes(input) {
		    var v = input.value;
		    if (v.match(/^\d{3}$/) !== null)  {
		        input.value = v + '/';
		    } 
		}
</script>
<%
Date date=new Date();
String DATE_FORMAT = "yyyy-MM-dd";
SimpleDateFormat s=new SimpleDateFormat(DATE_FORMAT);
String currentDate= s.format(date);
System.out.println(currentDate);

%>
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
                <a class="navbar-brand" href="cashhome.jsp">SSTL</a>
            </div>
            <!-- /.navbar-header -->
            <ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
	        		<a href="#">
	        		
			<%
			 String Userid=(String)session.getAttribute("Userid");
			System.out.println("user id is :"+Userid);
					
				   if(Userid==null)
				   {
					  response.sendRedirect("CashCounterlogin.jsp");
				   }%>
				   <% 
				   String username = DAO.getname1(Userid);
					System.out.println("pathalogyname is :"+username);
					       String email=DAO.getemail1(Userid);
					       System.out.println("email is :"+email);
				   String filename=DAO.getfilefromDb4(email);
				   System.out.println(filename); 
				   String Address=DAO.getAddress(email);
				   System.out.println("Address is :"+Address);
				   String Pathmobile=DAO.getmobile(email);
				   System.out.println("Mobile number is :"+Pathmobile);
	                %>
		
<span><h5 style="margin-top: 15%;"><font color = white>welcome &nbsp;&nbsp; <%=username%></font></h5></span>
	        		</a>
	      
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="images/<%=filename%>" width="40px" height="40px"/></a>
	        		<ul class="dropdown-menu">
						
						<li class="dropdown-menu-header text-center">
							<strong>Account Settings</strong>
						</li>
						<li class="m_2"><a href="cashlogout"><i class="fa fa-power-off"></i> Logout</a></li>
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
                         <a href="cashhome.jsp"><i class="fa fa-home nav_icon"></i>Home</a>
                         
                            <!-- /.nav-second-level -->
                        </li>
                         <li>
                            <a href="#"><i class="fa fa-cogs nav_icon"></i>Work<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                 <li>
                                    <a href="cashbill.jsp">Bill</a>
                                </li>
                                <li>
                                    <a href="cashshowbill.jsp">Show Bill</a>
                                </li>
                                <li>
                                    <a href="viewpath_doctor.jsp">view doctor</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="cashlogout"><i class="glyphicon glyphicon-off nav_icon"></i>Logout</a>
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
                      <a href="cashhome.jsp"><strong>HOME</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-plus-square-o user2 icon-rounded"></i>
                    <div class="stats">
                       <a href="cashshowbill.jsp"><strong>Show Bill</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-pencil-square user2 icon-rounded"></i>
                    <div class="stats">
                     <a href="#"><strong>view doctor</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-file-text user2 icon-rounded"></i>
                    <div class="stats">
                     <a href="cashbill.jsp"><strong>Bill</strong></a>
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
 <div class="container">
      <form action="path_billserv" method="post" >
      <div class="row">
      <div class="col-md-10">
      <label><span class="label label-primary">Mobile no of the patient </span></label>
      <input type="text" class="form-control1" id="mobile" name="mobile" onkeyup="mobileajax()" placeholder="Enter Mobile no of patient" required />
      </div>
      </div>
      <input type="hidden" name="address" value="<%=Address%>">
      <input type="hidden" name="pathmobile" value=<%=Pathmobile %>>
      <br></br>
      <div id="abcd">
       
      </div>
              <div class="row">
      <div class="col-md-10">
     <label>&nbsp;</label>
     <br>
    <input type="hidden" name="pathalogyname" value=<%=username%>  />
      <input type="submit" class="btn btn-lg btn-primary" value="submit">
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
