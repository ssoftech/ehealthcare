<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.Date"%>
    <%@ page import="java.sql.*,db.*"%>
    <%@page import="Model.DAO,bean.Test_categorybean"%>
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
<script type="text/javascript">
function show_Date()
{
	
	document.getElementById("SUBCAT_TEST_DATE").value=new Date();
	
	
}
</script>
</head>
<body>
<%
int id=0;
String Name="";
%>
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
                <a class="navbar-brand" href="path_home.jsp">SSTL</a>
            </div>
            <!-- /.navbar-header -->
            <ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
	        		<a href="#">
	        		
			<%
	        		
					String PATH_NAME = (String)session.getAttribute("pathalogyname");
			        String email=(String)session.getAttribute("email");
			        String PATH_ADDRESS=(String)session.getAttribute("Address");
			        
				   if(PATH_NAME==null)
				   {
					  response.sendRedirect("pathalogylogin.jsp");
				   }
				   String filename=DAO.getfilefromDb4(email);
	                %>
		
<span><h5 style="margin-top: 15%;"><font color = white>welcome &nbsp;&nbsp; <%=PATH_NAME%></font></h5></span>
	        		</a>
	      
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="images/<%=filename%>" width="40px" height="40px"/></a>
	        		<ul class="dropdown-menu">
						
						<li class="dropdown-menu-header text-center">
							<strong>Account Settings</strong>
						</li>
					
						<li class="m_2"><a href="path_update_info.jsp"><i class="fa fa-shield"></i> Update profile</a></li>
						<li class="m_2"><a href="pathalogyresetPassword.jsp"><i class="fa fa-refresh"></i> Reset Password</a></li>
						<li class="m_2"><a href="pathalogyLogoutServlet"><i class="fa fa-power-off"></i> Logout</a></li>
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
                         <a href="path_home.jsp"><i class="fa fa-home nav_icon"></i>Home</a>
                         
                            <!-- /.nav-second-level -->
                        </li>
                          <li>
                         <a href="path_index.jsp"><i class="fa fa-user nav_icon"></i>profile</a>
                         
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-indent nav_icon"></i>Category<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="Category.jsp">Add Category</a>
                                </li>
                                <li>
                                    <a href="showCategoryTest.jsp">View Category</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                         <a href="#"><i class="fa fa-star nav_icon"></i>SubCategory<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="add-subcategory.jsp">Add SubCategory</a>
                                </li>
                                <li>
                                    <a href="view_tests.jsp">View SubCategory</a>
                                </li>
                         </ul>
                            <!-- /.nav-second-level -->
                        </li>
                             <li>
                         <a href="#"><i class="fa fa-plus-square-o nav_icon"></i>Customer Informtion<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                         
                         <li>
                                    <a href="Customerinformtion.jsp">Customer</a>
                                </li>
                            </ul>
                              <!-- /.nav-second-level -->
                        </li>
                              <li>
                         <a href="#"><i class="fa fa-plus-square nav_icon"></i>Refered Doctor<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                         
                         <li>
                                    <a href="Referreddoctor.jsp">Doctor</a>
                                </li>
                            </ul>
                              <!-- /.nav-second-level -->
                        </li>
                        
                            <li>
                           <a href="#"><i class="fa fa-asterisk nav_icon"></i>Sub Registration<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="Reception Registration.jsp">Reception Registration</a>
                                </li>
                                 <li>
                                    <a href="Cash Counter.jsp">Cash Counter Registration</a>
                                </li>
                                <li>
                                    <a href="Management Registration.jsp">Management Registration</a>
                                </li>
                                <li>
                                    <a href="Receptionchangepassword.jsp">Reception Change Password</a>
                                </li>
                                 <li>
                                    <a href="Cashchangepassword.jsp">Cash counter ChangePassword</a>
                                </li>
                                 <li>
                                <a href="Management Changepassword.jsp">Management Changepassword</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                       
                         <li>
                            <a href="#"><i class="fa fa-cogs nav_icon"></i>Work<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">Hospital</a>
                                </li>
                                <li>
                                    <a href="Chamber.jsp">Chamber</a>
                                </li>
                                 <li>
                                    <a href="BILL.jsp">Bill</a>
                                </li>
                                <li>
                                    <a href="Viewpath_Bill.jsp">Show Bill</a>
                                </li>
                                <li>
                                    <a href="viewpath_doctor.jsp">viewpath</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="pathalogyLogoutServlet"><i class="glyphicon glyphicon-off nav_icon"></i>Logout</a>
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
                      <a href="path_home.jsp"><strong>HOME</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-plus-square user2 icon-rounded"></i>
                    <div class="stats">
                       <a href="Category.jsp"><strong>Add Category</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-plus-square-o user2 icon-rounded"></i>
                    <div class="stats">
                     <a href="add-subcategory.jsp"><strong>Add SubCategory</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-file-text user2 icon-rounded"></i>
                    <div class="stats">
                     <a href="BILL.jsp"><strong>Bill</strong></a>
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
 <form action="SubCategory_testServ" method="POST">
<div class="container-fluid">
<div class="row">
 <h3>ADD SUBCATEGORY</h3> 
</div>
<br></br>
<div class="row">

<% 
try{
String sql12="Select NAME_OF_TESTS from test_category where pathalogyname=?"; 
Connection con=DB.dbcon();
                    PreparedStatement ps=con.prepareStatement(sql12);
                            	ps.setString(1,PATH_NAME);
                            	ResultSet rs1=ps.executeQuery();

                            	while(rs1.next())
                            	{
                            	    System.out.println(PATH_NAME+"PATH_NAME");
                            		String NAME_OF_TESTS=rs1.getString("NAME_OF_TESTS");%>            		
                            		
                            		
                            		<% }%>
      



<% 
   Connection con1=DB.dbcon();
String sql="Select NAME_OF_TESTS, TEST_ID from test_category GROUP BY NAME_OF_TESTS";
PreparedStatement ps1=con.prepareStatement(sql);
ResultSet rs=ps1.executeQuery(sql);
%> 
	   
<div class="col-md-6 text-left">Category of Test</div>
<div class="col-md-6"><select name="test_category" class="form-control1" onChange="show_TEST_SUBCATEGORY_NAME(this.value)">
<option value="">select category</option>
<% while(rs.next())
   {%> 
	   
	   

	   
		 <option value="<%=rs.getString("TEST_ID")%>"><%=rs.getString("NAME_OF_TESTS")%></option>

<%} %>

</select></div>




<input type="hidden" class="form-control1" name="path_name" value=<%=PATH_NAME%>  />
<input type="hidden" class="form-control1" name="path_adress" value=<%=PATH_ADDRESS%>  />
<input type="hidden" class="form-control1" name="path_email" value=<%=email%>  /> 

<%   
   }
     		catch(Exception ex)
     		{
     			ex.printStackTrace();
     		}
	
	%> 
<br></br><hr>
<div class="col-md-6 text-left">Classification of Test</div>
<div class="col-md-6"><input type="text" class="form-control1" name="TEST_SUBCATEGORY_NAME" placeholder="enter your Test Name" required></div>


<br></br><hr>
<div class="col-md-6 text-left">Description of test</div>
<div class="col-md-6"><textarea class="form-control1" name="DETAILS" placeholder="enter your details" required></textarea></div>



<br></br><hr>
<div class="col-md-6 text-left">Specimen</div>
<div class="col-md-6"><input type="text" class="form-control1" name="SPECIMEN" placeholder="enter your Specimen" required ></div>


<br></br><hr>
<div class="col-md-6 text-left">Method</div>
<div class="col-md-6"><input type="text" class="form-control1" name="METHOD"placeholder="enter Specimen" required ></div>


<br></br><hr>
<div class="col-md-6 text-left">Prices</div>
<div class="col-md-6"><input type="text" class="form-control1" name="PRICE" placeholder="enter Price" required></div>



<br></br><hr>
<div class="col-md-6 text-left">Rules </div>
<div class="col-md-6"><textarea class="form-control1"  name="RULES"></textarea></div>

<br></br><hr>
<div class="col-md-6 text-left">Availability</div>
<div class="col-md-6">
<select name="AVAILABILITY" class="form-control1" required>
<option value="">Select</option>
  <option value="Home only">Home</option>
  <option value="Clinic only">Clinic</option>
  <option value="Home and Clinic Both Available">Home and Clinic Both Available</option>
</select>
</div>


<br></br><hr>
<div class="col-md-6 text-left">Distance</div>
<div class="col-md-6"><input type="text" class="form-control1" name="DISTANCE" value="0-10km only" readonly="readonly"></div>


<br></br><hr>
<div class="col-md-6 text-left">Test Date</div>
<div class="col-md-6"><input type="text" class="form-control1" name="SUBCAT_TEST_DATE" id="SUBCAT_TEST_DATE" value="<%=new Date() %>" readonly="readonly"></div>


<!-- <tr> <td><center><input type="submit" value="Submit" ></center></td></tr> -->




<br></br><hr><br></br>
<div class="col-md-12 text-center">
<input type="hidden" class="form-control1" name="name_of_Test" value="<%=Name %>">
<input type="submit" name="btnSubmit" class="btn btn-danger"value="Submit" onClick="Submit"/></div>
</div>
</div>
</form>
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
