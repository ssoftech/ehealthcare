<%@page import="db.DB"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Model.DAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="bean.categoryShow_bean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection,java.sql.PreparedStatement,java.sql.ResultSet,java.io.IOException,java.util.*"%>
<%@page import="java.sql.*,bean.Pathalogy,Model.*,java.util.Date"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Modern an Admin Panel Category Flat Bootstarp Resposive Website Template | Home :: w3layouts</title>
<script type="text/javascript">
function f()
{
	if("${param.msg}")
		alert("${param.msg}");
}
function show_TEST_SUBCATEGORY_NAME(str)
{
	var xhttp; 
	  if (str == "") {
	    document.getElementById("ss").innerHTML = "";
	    return;
	  }
	  xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    document.getElementById("ss").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("GET", "Recep.jsp?category_id="+str, true);
	  xhttp.send();
}
function show_productdetails(str)
{
	var xhttp; 
	  if (str == "") {
	    document.getElementById("ww").innerHTML = "";
	    return;
	  }
	  xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    document.getElementById("ww").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("GET", "rece.jsp?category_id="+str, true);
	  xhttp.send();
}


</script>
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
                <a class="navbar-brand" href="Reception_home.jsp">SSTL</a>
            </div>
            <!-- /.navbar-header -->
            <ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
	        		<a href="#">
	        		
			<%
			 String Userid=(String)session.getAttribute("Userid");
			System.out.println("user id is :"+Userid);
					String username = DAO.getname(Userid);
			System.out.println("pathalogyname is :"+username);
			       String email=DAO.getemail(Userid);
			       System.out.println("email is :"+email);
				   if(Userid==null)
				   {
					  response.sendRedirect("Receptionlogin.jsp");
				   }
				   String filename=DAO.getfilefromDb4(email);
				   System.out.println(filename); 
	                %>
		
<span><h5 style="margin-top: 15%;"><font color = white>welcome &nbsp;&nbsp; <%=username%></font></h5></span>
	        		</a>
	      
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="images/<%=filename %>" width="40px" height="40px"/></a>
	        		<ul class="dropdown-menu">
						
						<li class="dropdown-menu-header text-center">
							<strong>Account Settings</strong>
						</li>
					
						<li class="m_2"><a href="Receptionistlogout"><i class="fa fa-power-off"></i> Logout</a></li>
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
                         <a href="Reception_home.jsp"><i class="fa fa-home nav_icon"></i>Home</a>
                         
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-indent nav_icon"></i>Category<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="receptionviewcat.jsp">View Category</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                         <a href="#"><i class="fa fa-star nav_icon"></i>SubCategory<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="Receptionsubcat.jsp">View SubCategory</a>
                                </li>
                         </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="Receptionistlogout"><i class="glyphicon glyphicon-off nav_icon"></i>Logout</a>
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
                      <a href="Reception_home.jsp"><strong>HOME</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-plus-square user2 icon-rounded"></i>
                    <div class="stats">
                       <a href="receptionviewcat.jsp"><strong>View Category</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-plus-square-o user2 icon-rounded"></i>
                    <div class="stats">
                     <a href="Receptionsubcat.jsp"><strong>View SubCategory</strong></a>
                      <!-- <span>New Orders</span> -->
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget">
        		<div class="r3_counter_box">
                    <i class="glyphicon glyphicon-off nav_icon"></i>
                    <div class="stats">
                     <a href="Receptionistlogout"><strong>Logout</strong></a>
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
      <h2 align="center">Search products</h2>
     <table class="table text-left"  rules="groups">
        <thead class="bg-warning">
        		  

<tr >

<td>Category of Test</td>
<td><select name="test_category" class="form-control1" onChange="show_TEST_SUBCATEGORY_NAME(this.value)">
<option selected="selected">select category</option>
<% String sql="Select NAME_OF_TESTS, TEST_ID from test_category GROUP BY NAME_OF_TESTS";
   Connection con=DB.dbcon();
   
   PreparedStatement ps=con.prepareStatement(sql);
   ResultSet rs=ps.executeQuery();
   while(rs.next())
   {
	   String name1=rs.getString("NAME_OF_TESTS");%>
		 <option value="<%=rs.getString("TEST_ID")%>"><%=name1%></option>
<%} %>
</select></td></tr>

<td>SubCategory Name</td>
<td id="ss"><select name="TEST_SUBCATEGORY_NAME" class="form-control1">
<option selected="selected">SubCategory Name</option>


</select></td>

 </tr>
    </thead>
</table>

<br>


	
<!--     
ArrayList<view_bean> ar=view_Model.show();
	
if(ar!=null)
	
	
	
{%> -->
<div id="ww">

</div>

      </div>
      
      <div>
      </div>
      
      <div class="span_11">
	    <div class="clearfix"> </div>
	    </div>
      
      <div class="copy">
      <h3 align="center"><u>View All Product Details</u></h3><br>
       <table class="table"  rules="all" style="border: 1px solid #000">
        <thead> 
	<tr class="bg-primary">
	<th class="text-center">TEST_NAME</th>
	<th class="text-center"><b>DETAILS.</b></th>
	<th class="text-center"><b>SPECIMEN</b></th>
	<th class="text-center"><b>PRICE</b></th>
	<th class="text-center"><b>RULES </b></th>
	<th class="text-center"><b>AVAILABILITY </b></th>
	<th class="text-center"><b>DISTANCE</b></th>
	</tr>
		
		
<%
Connection con1=DB.dbcon();
System.out.println("Connected");
String sql1="select * from test_subcategory";
PreparedStatement ps1=con.prepareStatement(sql1);
ResultSet rs1=ps1.executeQuery();
while(rs1.next())
{%>
		<tr>
	 <td><%=rs1.getString("TEST_SUBCATEGORY_NAME")%></td>
	 <td><%=rs1.getString("DETAILS") %></td>
	 <td><%=rs1.getString("SPECIMEN")%></td>
	 <td><%=rs1.getString("PRICE")%></td>
	 <td><%=rs1.getString("RULES")%></td>
	 <td><%=rs1.getString("AVAILABILITY")%></td>
	 <td><%=rs1.getString("DISTANCE")%></td>
	</tr>
	 <%  } %>
		
	</thead>
	</table>
      
      
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
