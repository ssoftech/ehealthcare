<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection"
import="java.sql.PreparedStatement" import="java.sql.ResultSet" import="java.io.IOException" import="Model.*"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Modern an Admin Panel Category Flat Bootstarp Resposive Website Template | Compose :: SSTL</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="CSS1/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="CSS1/style.css" rel='stylesheet' type='text/css' />
<link href="CSS1/style3.css" rel='stylesheet' type='text/css' />
<link href="CSS1/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="js/jquery.autocomplete_email.js"></script>
<script type="text/javascript" src="js/jquery.smart_autocomplete.js"></script>
<!----webfonts--->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!---//webfonts--->  
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
function mail()
{
	
	var xhttp;
	
	  var url = "AzaxEmail.jsp";
	  if (window.XMLHttpRequest) {
	    // code for modern browsers
	    xhttp = new XMLHttpRequest();
	    } else {
	    // code for IE6, IE5
	    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
	  }
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	      document.getElementById("ccd").innerHTML = xhttp.responseText;
		
	    }
	  };
	  xhttp.open("POST", url,true);
	  xhttp.send();
	
	}

</script>

<script type="text/javascript">
var count=0;
function shw() {
	count++;
	
	if(count%2!=0)
		{
	var s= document.getElementById("ccbcc");
	 s.style.display = 'block';
	 document.getElementById("btnid").value = "Hide";
		}
	else
		{
		
		var s= document.getElementById("ccbcc");
		 s.style.display = 'none';
		 document.getElementById("btnid").value = "Cc/Bcc";
		}
}
	</script>
<!-- 	<script>
jQuery(function(){
$("#textarea_autocomplete_field").autocomplete("list2.jsp");

$("#textarea_autocomplete_field").bind({

    keyIn: function(ev){
      var tag_list = ev.smartAutocompleteData.query.split(","); 
      //pass the modified query to default event
      ev.smartAutocompleteData.query = $.trim(tag_list[tag_list.length - 1]);
    },

    itemSelect: function(ev, selected_item){ 
     var options = $(this).smartAutoComplete();

     //get the text from selected item
     var selected_value = $(selected_item).text();
     var cur_list = $(this).val().split(","); 
     cur_list[cur_list.length - 1] = selected_value;
     $(this).val(cur_list.join(",") + ","); 

     //set item selected property
     options.setItemSelected(true);

     //hide results container
     $(this).trigger('lostFocus');
       
     //prevent default event handler from executing
     ev.preventDefault();
   },

 });




});
</script>  -->

   <script type="text/javascript">
$(function(){
    
<% String email=(String)session.getAttribute("email");
String path="emailjson/"+email+"emailadd.json";
System.out.println("Path is : "+path);
%>
    //example 6
    $("#textarea_autocomplete_field").smartAutoComplete({source: "<%=path%>", maxResults: 5, delay: 100 } );
    $("#textarea_autocomplete_field").bind({

       keyIn: function(ev){
         var tag_list = ev.smartAutocompleteData.query.split(","); 
         //pass the modified query to default event
         ev.smartAutocompleteData.query = $.trim(tag_list[tag_list.length - 1]);
       },

       itemSelect: function(ev, selected_item){ 
        var options = $(this).smartAutoComplete();

        //get the text from selected item
        var selected_value = $(selected_item).text();
        var cur_list = $(this).val().split(","); 
        cur_list[cur_list.length - 1] = selected_value;
        $(this).val(cur_list.join(",") + ","); 

        //set item selected property
        options.setItemSelected(true);

        //hide results container
        $(this).trigger('lostFocus');
          
        //prevent default event handler from executing
        ev.preventDefault();
      },

    });

    $("#textarea_autocomplete_field1").smartAutoComplete({source: "<%=path%>", maxResults: 5, delay: 100 } );
    $("#textarea_autocomplete_field1").bind({

       keyIn: function(ev){
         var tag_list = ev.smartAutocompleteData.query.split(","); 
         //pass the modified query to default event
         ev.smartAutocompleteData.query = $.trim(tag_list[tag_list.length - 1]);
       },

       itemSelect: function(ev, selected_item){ 
        var options = $(this).smartAutoComplete();

        //get the text from selected item
        var selected_value = $(selected_item).text();
        var cur_list = $(this).val().split(","); 
        cur_list[cur_list.length - 1] = selected_value;
        $(this).val(cur_list.join(",") + ","); 

        //set item selected property
        options.setItemSelected(true);

        //hide results container
        $(this).trigger('lostFocus');
          
        //prevent default event handler from executing
        ev.preventDefault();
      },

    });
    
    $("#textarea_autocomplete_field2").smartAutoComplete({source: "<%=path%>", maxResults: 5, delay: 100 } );
    $("#textarea_autocomplete_field2").bind({

       keyIn: function(ev){
         var tag_list = ev.smartAutocompleteData.query.split(","); 
         //pass the modified query to default event
         ev.smartAutocompleteData.query = $.trim(tag_list[tag_list.length - 1]);
       },

       itemSelect: function(ev, selected_item){ 
        var options = $(this).smartAutoComplete();

        //get the text from selected item
        var selected_value = $(selected_item).text();
        var cur_list = $(this).val().split(","); 
        cur_list[cur_list.length - 1] = selected_value;
        $(this).val(cur_list.join(",") + ","); 

        //set item selected property
        options.setItemSelected(true);

        //hide results container
        $(this).trigger('lostFocus');
          
        //prevent default event handler from executing
        ev.preventDefault();
      },

    });

});
</script> 


</head>
<body onclick="mail()">
  
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
                <a class="navbar-brand" href="Doc_index.jsp">SSTL</a>
            </div>
            <!-- /.navbar-header -->
            <ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
	        		<a href="Doc_index.jsp">
	   <%
	        		
			String username = (String)session.getAttribute("fname");
			
			String filename="";
				   if(username==null)
				   {
					   response.sendRedirect("Doctor_Login.jsp");
				   }
				   Connection con= DB.dba();
			       
			        String sql1 = "select * from doctor_reg where email=?";
			        				PreparedStatement ps1=con.prepareStatement(sql1);
			        				ps1.setString(1, email);
			        			ResultSet rs1=ps1.executeQuery();
			        			while(rs1.next())
			        			{
			        				
			        				filename=rs1.getString("Image");
			        				
			        				
			        				
			        			}
	                %>
		
<h5 style="margin-top: 15%;"><font color = white>Welcome&nbsp;&nbsp;<%=username%></font></h5>
	        		
	        		</a>
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="images/<%=filename%>" width="40px" height="40px"/></a>
	        		<ul class="dropdown-menu">
						<li class="dropdown-menu-header text-center">
							<strong>Account</strong>
						</li>
						
						<li class="m_2"><a href="Doc_profile.jsp"><i class="fa fa-user"></i> Profile</a></li>
						<li class="m_2"><a href="Doc_update.jsp"><i class="fa fa-shield"></i> Update profile</a></li>
						<li class="m_2"><a href="Doc_ResetPasswordDashBoard.jsp"><i class="fa fa-refresh"></i> Reset Password</a></li>
						<li class="m_2"><a href="DoctorLogoutServlet"><i class="fa fa-power-off"></i> Logout</a></li>
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
                            <a href="#"><i class="glyphicon glyphicon-user nav_icon"></i>Profile<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="Doc_update.jsp">Edit Profile</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-indent nav_icon"></i>Work<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="Hospital.html">Hopital</a>
                                </li>
                                <li>
                                    <a href="PatientView.jsp">Patient View</a>
                                </li>
                                      <li>
                                    <a href="PrescriptionSettings.jsp">Prescription Settings</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-envelope nav_icon"></i>Mailbox<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="Doc_inbox.jsp">Inbox</a>
                                </li>
                                <li>
                                    <a href="Doc_contact.jsp">Compose email</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-envelope nav_icon"></i>Blog<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="BlogCreate.jsp">Create a Blog</a>
                                </li>
                                <li>
                                    <a href="BlogView.jsp">View Blog</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href=""><i class="glyphicon glyphicon-pushpin nav_icon"></i>Appointment<span class="fa arrow"></span></a>
                             <ul class="nav nav-second-level">
                          
                                <li>
                                    <a href="AddSchedule.jsp">Add Appointment</a>
                                </li>
                         
                                   <li>
                                    <a href="EditSchedule.jsp">Search & Edit Appointment</a>
                                </li>
                            
                        
                            </ul>
                            
                        </li>
                                <li>
                            <a href="#"><i class="glyphicon glyphicon-calendar nav_icon"></i>Schedule<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                   <a href="TodaySchedule.jsp">Today's Appointment</a>
                                </li>
                                <li>
                                    <a href="./CSS1/Test.jsp">View all Appointment</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-table nav_icon"></i>Tables<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                   <a href="pagination_sample.jsp">New Medicine</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="DoctorLogoutServlet"><i class="glyphicon glyphicon-off nav_icon"></i>Logout</a>
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
                      <a href="Doc_index.jsp"><strong>HOME</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-calendar user2 icon-rounded"></i>
                    <div class="stats">
                       <a href="./CSS1/Test.jsp"><strong>Schedule</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-pencil-square user2 icon-rounded"></i>
                    <div class="stats">
                     <a href="BlogView.jsp"><strong>Blog</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-search user2 icon-rounded"></i>
                    <div class="stats">
                     <a href="Doc_contact.jsp"><strong>Compose Mail</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	 </div>
        	<div class="clearfix"> </div>
      </div>
	     <div class="xs">
  	       <h3>Compose</h3>
  	       <div class="col-md-8 inbox_right">
        	<div class="Compose-Message">               
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Compose New Message 
                    </div>
                    <div class="panel-body">
                        <%String email1=request.getParameter("email_id"); %>
						<form action="Doc_Emailsending.jsp" method="post">
                        <hr>
                         <div class="input-group">
                        <label>Recipient Name : </label>
                        <input type="text"  name="recipient"  autocomplete="off" id="textarea_autocomplete_field" class="form-control1 control3">
                      <span class="input-group-btn">
        <input  class="btn btn-default" type="button" onclick="shw()" id="btnid" style="height: 40px; margin-top: 12px;" value="Cc/Bcc">
      </span>
    </div>
                      <div id="ccbcc" hidden="">
                           <label>Recipient Cc Name : </label>
                        <input type="text"  name="recipientcc" autocomplete="off" id="textarea_autocomplete_field1" class="form-control1 control3">
                           <label>Recipient Bcc Name : </label>
                        <input type="text"  name="recipientbcc" autocomplete="off" id="textarea_autocomplete_field2" class="form-control1 control3">
                     </div>
                        <label>Enter Subject :  </label>
                        <input type="text" name="subject" class="form-control1 control3">
                        <label>Enter Message : </label>
                         <script type="text/javascript" src="js/nicEdit1.js"></script> <script type="text/javascript">
				//<![CDATA[
        	bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
  				//]]>
  					</script>
                        <textarea rows="10" name="message" class="form-control1 control2"></textarea>
                        <hr>
                        <button type="submit" name="Send"  class="btn btn-warning btn-warng1"><span  class="glyphicon glyphicon-envelope tag_02"></span>Send Message</button>
                      	<a href="Doc_index.jsp" class="btn btn-success btn-warng1"><span class="glyphicon glyphicon-home"></span> Back </a>
                        </form>
                    </div>
              </div>
          </div>
         </div>
       
          
   </div>
      <div>
 <div id="ccd" style="visibility: hidden;" > 
 <td>Hello from DIV</td>
 </div>
      </div>
	  <div class="span_11">
	    <div class="clearfix"> </div>
    </div>
    <div class="content_bottom">
      <div class="clearfix"> </div>
	    </div>
  
    <div class="copy_layout">
         <p>Copyright © 2016 SSTL. All Rights Reserved | Design by <a href="http://w3layouts.com/" target="_blank">SSTL</a> </p>
       </div>
   </div>
      </div>
      <!-- /#page-wrapper -->
   </div>

    <!-- /#wrapper -->
<!-- Nav CSS -->
<link href="CSS1/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>

</body>
</html>
