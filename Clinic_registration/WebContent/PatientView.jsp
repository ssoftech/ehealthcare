<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection"
import="java.sql.PreparedStatement" import="java.sql.ResultSet" import="java.text.SimpleDateFormat" import="java.io.IOException"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Modern an Admin Panel Category Flat Bootstarp Resposive Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="CSS1/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="CSS1/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="CSS1/lines.css" rel='stylesheet' type='text/css' />
<link href="CSS1/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="CSS/test.css" type="text/css" media="screen" title="Test Stylesheet" charset="utf-8" />
<!-- jQuery -->
<script src="js/jquery.min.js"></script>

 
<!----webfonts--->
 

<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!---//webfonts--->  
<!-- Nav CSS -->
<link href="CSS1/custom.css" rel="stylesheet">
 
<!-- Metis Menu Plugin JavaScript -->

<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<!-- Graph JavaScript -->
<script src="js/d3.v3.js"></script>
<script src="js/rickshaw.js"></script>


<script type="text/javascript">
function dis()
{
	var xhttp;
	  var url = "AzaxTesting.jsp";
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
		automail();
	    }
	  };
	  xhttp.open("POST", url,true);
	  xhttp.send();
	
	}
function automail()
{
	var xhttp;
	  var url = "AzaxTesting1.jsp";
	  if (window.XMLHttpRequest) {
	    // code for modern browsers
	    xhttp = new XMLHttpRequest();
	    } else {
	    // code for IE6, IE5
	    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
	  }
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	      document.getElementById("ddc").innerHTML = xhttp.responseText;

	    }
	  };
	  xhttp.open("POST", url,true);
	  xhttp.send();
	
	}
	
function azaxpatient()
{
	var xhttp;
	  var url = "AzaxPatientView.jsp";
	  if (window.XMLHttpRequest) {
	    // code for modern browsers
	    xhttp = new XMLHttpRequest();
	    } else {
	    // code for IE6, IE5
	    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
	  }
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	      document.getElementById("azaxoatientview").innerHTML = xhttp.responseText;

	    }
	  };
	  xhttp.open("POST", url,true);
	  xhttp.send();
	
	}
	
function automail()
{
	var xhttp;
	  var url = "AzaxTesting3.jsp";
	  if (window.XMLHttpRequest) {
	    // code for modern browsers
	    xhttp = new XMLHttpRequest();
	    } else {
	    // code for IE6, IE5
	    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
	  }
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	      document.getElementById("ccd1").innerHTML = xhttp.responseText;

	    }
	  };
	  xhttp.open("POST", url,true);
	  xhttp.send();
	
	}
		function del()
	{
			var inp = document.getElementById("chkk").value;
			
			
		if(inp.value!=null)
			{
			document.getElementById("myTable").deleteRow(0);
			}
		
	}
		
		  var auto = setInterval(function ()
				     {
				          $('#azaxoatientview').load('AzaxPatientView.jsp').fadeIn("slow");
				     }, 5000);
</script>

</head>
<body onload="dis(),del()" onclick="azaxpatient()">
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
			
			String delet= request.getParameter("del");
			String a="hello";
			int cnt=a.length();
			System.out.println("Count of delet is : "+cnt);

				
			String email=(String)session.getAttribute("email");
			String name = "";
			String filename="";
			HttpSession sees = request.getSession();
			try{
				Connection con = DB.dba();
				String sql = "Select * from doctor_reg where email=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, email);
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					name = rs.getString("fname");
					System.out.println("Fname is : " +name);
					sees = request.getSession();
					sees.setAttribute("fname", name);
					filename=rs.getString("Image");
				}
				}catch(Exception e){System.out.println(e);}
			
			String username = (String)session.getAttribute("fname");
			   if(username==null)
			   {
				  response.sendRedirect("Doctor_Login.jsp");
			   }
			   System.out.println("Email from Index JSP: " +email);
                %>
		
<span><h5 style="margin-top: 15%;"><font color = white>welcome &nbsp;&nbsp; <%=username%></font></h5></span>
	        		</a>
	        		</li>
	        		
	        		            <li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-comments-o"></i><span class="badge">4</span></a>

	        		<ul class="dropdown-menu">
						<li class="dropdown-menu-header">
							<strong>Up Coming Schedule</strong>
							<div class="progress thin">
							  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
							    <span class="sr-only">40% Complete (success)</span>
							  </div>
							</div>
						</li>
						<li class="avatar">
							<a href="#">
								<img src="images/1.jpg" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>
								<span class="label label-info">NEW</span>
							</a>
						</li>
						<li class="avatar">
							<a href="#">
								<img src="images/2.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>
								<span class="label label-info">NEW</span>
							</a>
						</li>
						<li class="avatar">
							<a href="#">
								<img src="images/3.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>
							</a>
						</li>
						<li class="avatar">
							<a href="#">
								<img src="images/4.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>
							</a>
						</li>
						<li class="avatar">
							<a href="#">
								<img src="images/5.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>
							</a>
						</li>
						<li class="avatar">
							<a href="#">
								<img src="images/pic1.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>
							</a>
						</li>
						<li class="dropdown-menu-footer text-center">
							<a href="#">View all messages</a>
						</li>	
	        		</ul>
	      		</li>
	      
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="images/<%=filename%>" width="40px" height="40px"/></a>
	        		<ul class="dropdown-menu">
						
						<li class="dropdown-menu-header text-center">
							<strong>Account Settings</strong>
						</li>
							<li class="m_2"><a href="Doc_profile.jsp"><i class="fa fa-user"></i> Profile</a></li>
						<li class="m_2"><a href="Doc_update.jsp"><i class="fa fa-shield"></i> Update profile</a></li>
						<li class="m_2"><a href="Doc_ResetPasswordDashBoard.jsp"><i class="fa fa-refresh"></i> Reset Password</a></li>
						<li class="m_2"><a href="DoctorLogoutServlet"><i class="fa fa-power-off"></i> Logout</a></li>
	        		</ul>
	      		</li>
			</ul>
			<form class="navbar-form navbar-right">
			<div>
			

              <input type="text" class="form-control" value="Search..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search...';}">
            </div>
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
      <div class="col_1">
		    <div class="col-md-4 span_7">
            
            <div class="container"></div>
            
            </div>
		    <div class="clearfix"> </div>
	  </div>
      
        <div class="copy">
       
	<form>
	

	
      <%

int chk=0;
int arcnt=0;
Connection con= DB.dba();
String Reg_id ="";

String P_mobile=request.getParameter("del");
System.out.println("Patient mobile no is : "+P_mobile);




java.util.Date date = new java.util.Date();
SimpleDateFormat df = new SimpleDateFormat();
df.applyPattern("yyyy-MM-dd");
String dt= df.format(date);
String sql21 = "select * from doctor_reg where email=? ";
PreparedStatement ps21=con.prepareStatement(sql21);
ps21.setString(1, email);
ResultSet rs21=ps21.executeQuery();
while(rs21.next())
{
Reg_id=rs21.getString("Reg_ID");
System.out.println("Reg Id : "+Reg_id);
}

if(P_mobile!=null)
{
	System.out.println("Not Null");
    String sql2a = "delete from clinic_queue where MobileNo=?";
	PreparedStatement ps2a=con.prepareStatement(sql2a);
	ps2a.setString(1, P_mobile);
	ps2a.executeUpdate();
	
}
else
{
	System.out.println("Null");

}

int lp=0;
String sql2s = "select * from clinic_queue where Registrationid=? AND Date=?";
PreparedStatement ps2s=con.prepareStatement(sql2s);
ps2s.setString(1, Reg_id);
ps2s.setString(2, dt);
ResultSet rs2s=ps2s.executeQuery();
while(rs2s.next())
{
	lp++;
}


String pgNm="";
    
    String[] Confirm=new String[lp];
    String[] Pmob= new String[lp];
    
    String clinic_email ="";

   
    
    
int cc=0;
int chkcnt=0;
System.out.println("Date is : "+dt);
    String sql2 = "select * from clinic_queue where Registrationid=? AND Date=?";
	PreparedStatement ps2=con.prepareStatement(sql2);
	ps2.setString(1, Reg_id);
	ps2.setString(2, dt);
ResultSet rs2=ps2.executeQuery();
while(rs2.next())
{
	
	Confirm[chkcnt]=rs2.getString("Confirmation");
	clinic_email=rs2.getString("email");
	rs2.getString("PatientName");
	rs2.getString("age");
	rs2.getString("Sex");
	rs2.getString("DISEASE");
	Pmob[chkcnt]=rs2.getString("MobileNo");
	chkcnt++;
}

System.out.println(chkcnt);
String sql10 = "select * from size where email=? ";
PreparedStatement ps10=con.prepareStatement(sql10);
ps10.setString(1, email);
ResultSet rs10=ps10.executeQuery();
while(rs10.next())
{
	pgNm=rs10.getString("Print");
}
String[] save_chk=new String[chkcnt];
for(int k=0;k<chkcnt;k++)
{
System.out.println("Confirm : "+Confirm[k]);
if(Confirm[k].equals("Yes"))
{
	
	save_chk[k]=Confirm[k];
	System.out.println("Confirm  Save Chk: "+save_chk[k]);
}

}


{


	    String sql2a = "select * from clinic_queue where Registrationid=? AND Date=? AND Confirmation=? ";
		PreparedStatement ps2a=con.prepareStatement(sql2a);
		ps2a.setString(1, Reg_id);
		ps2a.setString(2, dt);
		ps2a.setString(3, "Yes");

	
	ResultSet rs1=ps2a.executeQuery();
	String[] P_Name=new String[chkcnt];
	String[] P_Age=new String[chkcnt];
	String[] P_Sex=new String[chkcnt];
	String[] P_Disease=new String[chkcnt];

			%>		
			<div id="azaxoatientview">
			
				
<div class="container-fluid">
<div class="row">
<div class="col-md-12" >
<h2>Patients List</h2>
</div>

</div>

<div class="row text-left">
<div class="col-md-12">
<table class="table" rules="rows">
<thead class="bg-warning">
		 <tr>
    <td>Patient Number</td>
    <td>Patient Name</td>
    <td>Patient Age</td>
    <td>Patient Sex</td>
    <td>Patient Disease</td>
    <td></td>
    
   
  </tr>
  </thead>
 <%
 int  i=1;
int o=0;
	while(rs1.next())
	{
		P_Name[o]=rs1.getString("PatientName");
		P_Age[o]=rs1.getString("age");
		P_Sex[o]=rs1.getString("Sex");
		P_Disease[o]=rs1.getString("DISEASE");
		
	

	%>

	
				<tr>
	<td><%=i++%></td>
	
	<td><%=P_Name[o]%></td>

    <td ><%=P_Age[o] %></td>
        <td><%= P_Sex[o]%></td>
    <td><%= P_Disease[o]%></td>
    <td><button type="button" onclick="location.href='<%=pgNm%>.jsp?Pnm=<%=P_Name[o]%>&page=<%=P_Age[o] %>&psex=<%=P_Sex[o] %>&pdses=<%=P_Disease[o] %>&peml=<%=clinic_email %>&pmobile=<%=Pmob[o]  %>'">Click</button></td>
 

    				<%o++;}}

{%>
	

<%}

 %>
				 </tr>

 
</table> 
 </div>
 </div>
</div>
</div>
	<input type="hidden" id="chkk" value="<%=delet %>">
	
</form>
      </div>
      

      <div>
          <div id="ccd" style="visibility: hidden;" > 
 <td>Hello from DIV</td>
 </div>
     <div id="ccd1" style="visibility: hidden;" > 
 <td>Hello from DIV</td>

</div>
    <div id="ddc" style="visibility: hidden;" > 
 <td>Hello from DIV</td>

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
