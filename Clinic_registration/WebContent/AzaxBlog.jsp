<%@page import="bean.*"%>
<%@page import="bean.Panelbean"%>
<%@page import="java.util.ArrayList" import="java.io.IOException" import="java.io.InputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*,Model.*" import="java.time.LocalTime" import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Personal Blog a Blogging Category Flat Bootstarp  Responsive Website Template | Single :: w3layouts</title>
	<link href="CSS/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="CSS/styleblog.css" rel='stylesheet' type='text/css' />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Personal Blog Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" 
	/>

		<!--end slider -->
		<!--script-->

<!--/script-->
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>

<script type="text/javascript">
function blogvw()
{
	var lnkk=document.getElementById("lnk").value;
	var xhttp;
	  var url = "AzaxBlog1.jsp?val="+lnkk;
	  if (window.XMLHttpRequest) {
	    // code for modern browsers
	    xhttp = new XMLHttpRequest();
	    } else {
	    // code for IE6, IE5
	    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
	  }
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	      document.getElementById("blogview").innerHTML = xhttp.responseText;
		automail();
	    }
	  };
	  xhttp.open("POST", url,true);
	  xhttp.send();
	
	}


</script>
<!---->

</head>
<body>
    <br>
<div align="center">
<div id="blogview">


<table class="table"  rules="groups">
        <thead class="bg-warning">
        		  <tr>
                      <td align="center"><b>Image</b></td>
                      <td align="center"><b>Category</b></td>
                      <td align="center"></td>
                      <td align="center"><b>Blog Name</b></td>
                      
                 </tr>
         </thead>
<% Connection con11=DB.dba();
String sel= request.getParameter("val");
String st11="";
String st21="";
String email="";
String bname="";
String Cat="";
String img1="";
String sql1="select * from panel where category=?";
PreparedStatement ps1=con11.prepareStatement(sql1);
ps1.setString(1, sel);
ResultSet rs1=ps1.executeQuery();
while(rs1.next())
{
    st11= rs1.getString(2);
     st21= rs1.getString(4);
     email=  rs1.getString(6);
     bname=rs1.getString(3);
     img1=rs1.getString("file");

%>     

 
<tr>
<td align="center">
<img src="images/<%=img1 %>" width="100px" height="100px" >
</td>
<td align="center" style="border-right: none;" height="30px;">
<h3><b><%= st21%></b></h3>
</td>
<td align="center" width="40px;" height="30px;" style="border-left: none;" >
</td>
<td align="center" height="30px;">
<a href="AzaxBlog1.jsp?val=<%=bname %>" id="lnk" onclick="blogvw()"><h3><b><%=bname %></b></h3></a>
</td>
</tr>

     
<%}
String st31=st11+" ";
System.out.println(st31);

 String [] star11=st11.split("|"); 


String st41=st21+",";
System.out.println(st41);


String [] star111=st21.split(",");

String[] star21=st41.split(" ");


%>

</table>
</div>
</div> 


	</body>
</html>