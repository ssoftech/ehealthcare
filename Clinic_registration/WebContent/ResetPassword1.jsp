<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script type="text/javascript">
    function Validate(form) {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("cnfpassword").value;
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    };
</script>
</head>
<body>
 <div class="container"> 
			<form action="ResetPwdServlet" method="post" onsubmit="return Validate(this);">
				 <div id="ResetPasswordbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
     				<div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title"><h3> Reset your password </h3></div>
			</div>
			<div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form id="ResetPwdform" class="form-horizontal" role="form">
			
      		<div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
 <input id="login-"email" type="text" class="form-control" name="email" value="" placeholder="Enter Your Email ID" required=""> 
     				 </div>
  				 
            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
  <input id="password" type="password" class="form-control" name="password" placeholder="Enter Your New Password" required="">
     				 </div>
           <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
 <input id="password" type="password" class="form-control" name="cnfpassword" placeholder="Enter Your New Password" required="">
     				 </div>
     				 <% String error = request.getParameter("error");
			String msg = request.getParameter("msg");
		 if(error!=null) 
		{%><span style="padding-left: 50px;"><font color="red" ><%=error%></font></span><%}
		else
		{%><span style="padding-left: 50px;"><font color="red" ><%=msg%></font></span><%}%>
            <div class="row">
            <div class="col-md-12">
             <button id="Submit" name="Submit" class="btn btn-info">Send </button>
             <button id="back" name="back" class="btn btn-info">back</button>
            </div>
            </div>
            </form>
              </div>
            </div>
			   </div>
			</form>
			</div>