<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  function mailcheck() {
  	
  	 var email=document.getElementById("email").value;
  	if(email.length==0)
  		{
  		document.getElementById("alert").innerHTML = "";
  		}
  	else
  		{
      var xhttp = new XMLHttpRequest();
  	var url;
  	url= "Path_EmailChecking1.jsp?EMAIL="+email;
  	  xhttp.onreadystatechange = function() {
  	    if (xhttp.readyState == 4 && xhttp.status == 200) {
  	      document.getElementById("alert").innerHTML = xhttp.responseText;
  	      
  	    }
  	  
  	  };
  	  xhttp.open("GET", url, true);
  	  xhttp.send();  
  		}
  }
  </script>
</head>

<body>
    <div class="container"> 
  <form action="pathemail.jsp" method="post"> 
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Forget Password</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="Cliniclogin.jsp">Back to Login</a></div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >
      <span>Please enter your Email</span>
  <br></br>
                       <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                        <input id="email" type="email" class="form-control" name="To" placeholder="Enter Your valid Email Id"  onkeyup="mailcheck()"/>                                        
                                    </div>
                     <div id="alert" align="center" style="color: red;"></div>
                           


                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->

                                    <div class="col-sm-12 controls">
                                      <a id="btn-back" href="pathalogylogin.jsp" class="btn btn-primary">Back  </a>
                                      <input type="submit" id="submit" name="submit" class="btn btn-success" value="submit">
                                     

                                    </div>
                                </div>


                                
                                </div>    
                             
                        </div>                     
                    </div> 
    </form> 
        </div>
</body>
</html>
