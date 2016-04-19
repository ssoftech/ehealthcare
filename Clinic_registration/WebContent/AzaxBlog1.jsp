<%@page import="bean.*"%>
<%@page import="bean.Panelbean"%>
<%@page import="java.util.ArrayList" import="java.io.IOException" import="java.io.InputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*,Model.*" import="java.time.LocalTime" import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Personal Blog a Blogging Category Flat Bootstarp  Responsive Website Template | Single :: w3layouts</title>
	<link href="CSS1/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="CSS1/styleblog.css" rel='stylesheet' type='text/css' />
	
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="js/jquery.autocomplete_email.js"></script>
<script type="text/javascript" src="js/jquery.smart_autocomplete.js"></script>

<link href="CSS1/style3.css" rel='stylesheet' type='text/css' />
	
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
$(function(){

    //example 6
    $("#textarea_autocomplete_field").smartAutoComplete({source: "blogsearch.json", forceSelect: true, maxResults: 5, delay: 200 });

});
</script> 

<script>
function shw()
{
	var show= document.getElementById("apDivshw");

	
	show.style.visibility = 'visible';
	document.getElementById("apDiv2").innerHTML="";
}

</script>
<script type="text/javascript">
function blog()
{
	
	var xhttp;
	
	  var url = "AzaxBlogName.jsp";
	  if (window.XMLHttpRequest) {
	    // code for modern browsers
	    xhttp = new XMLHttpRequest();
	    } else {
	    // code for IE6, IE5
	    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
	  }
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	      document.getElementById("ccdd").innerHTML = xhttp.responseText;
		
	    }
	  };
	  xhttp.open("POST", url,true);
	  xhttp.send();
	
	}
function search()
{
	
	var xhttp;
	var url=document.getElementById("textarea_autocomplete_field").value;
	
	  var url = "AzaxBlogSearch.jsp?val="+url;
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

</script>


</head>
<body >

    <br>



<% Connection con11=DB.dba();
String st11="";
String st21="";
String email="";
String bname="";
String Cat="";
String filename="";
int cnt=0;
String lnk=request.getParameter("val");
String lnk1=request.getParameter("search");

System.out.println("From view azax page: "+lnk);

String sql1="select * from panel where name=?";
PreparedStatement ps1=con11.prepareStatement(sql1);
ps1.setString(1, lnk);
ResultSet rs1=ps1.executeQuery();
while(rs1.next())
{
    st11= rs1.getString(2);
     st21= rs1.getString(4);
     email=  rs1.getString(6);
     bname=rs1.getString(3);
     Cat= rs1.getString("category");
     filename=rs1.getString("file");
  
    cnt=rs1.getInt("like_blog");
%>     




     
<%
}
String st31=st11+" ";
System.out.println(st31);

 String [] star11=st11.split("|"); 


String st41=st21+",";
System.out.println(st41);


String [] star111=st21.split(",");

String[] star21=st41.split(" ");


%>




	 <div class="container" >
	 <div class="row">
		  <div class="col-md-12 single-main">				 
			  <div class="single-grid">
		
	<div align="center" >



<%

 String Name= email;
String filenameqqqq=Dao3.getfilefromDB(Name);
 System.out.println("filename from Jsp " + filename); 
%>






	 <div class="container">
		  <div class="logo" style="height: 10px; width: 150px;">
			 
			<img src="images/Blog_(1).jpg"><br><b><%=bname %></b>
		  </div>
			 <!---start-top-nav---->
			 <div class="top-menu">
				 <div class="search">
					 <form>
					 <input type="text" id="textarea_autocomplete_field" placeholder="search" onclick="blog()" onkeyup="search()" name="search1" required="">
					 <input type="submit" value=""/>
					 </form>
				 </div>
				  <span class="menu"> </span> 
				   <ul>
						<li class="active"><a href="Doc_index.jsp">HOME</a></li>						
						<li><a href="BlogView.jsp">Blog</a></li>	
						<li><a href="Doc_contact.jsp">Compose Mail</a></li>						
						<div class="clearfix"> </div>
				 </ul>
			 </div>
			 </div>
			 <div class="clearfix"></div>
					<script>
					$("span.menu").click(function(){
					$(".top-menu ul").slideToggle("slow" , function(){
					});
					});
					</script>
				<!---//End-top-nav---->					
	 </div>


<div id="ddc">
<div class="col-md-3 single-main">
<div id="apDiv1" align="left"><img src="images/<%=filename %>" width="185px" height="185px" align="left"></div>
</div>




<div id="apDiv2" align="center"><table   width="80%" border="2px" align="center">
<p>
<%  
String newst= st11.substring(0,((st11.length()/3)));
System.out.println("Str Length: "+st11.length());


{
	
%>
<%=newst %> 
	
<%}

%>
<a href="#" onclick="shw()"><font style="font-style: italic;color: lime; "><u>Continue Reading.....</u></font></a>			  

</p>
<p>
Category from...

<%  
	
for(int i=0;i<star111.length;i++)
{
	
%>
<%=st21 %> 
	
<%}

%>

</p>

			  
 <%  Connection con=DB.dba();
String[] st1=new String[100];
String[] st2=new String[100];
String[] dt=new String[100];
int i=0;
String sql="select * from leave_comment where BlogName=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, lnk);
ResultSet rs=ps.executeQuery();
while(rs.next())
{
    st1[i]= rs.getString(2);
     st2[i]= rs.getString(5);
     dt[i]=rs.getString(6);
	i++;
   
}
String st3=st1+" ";
System.out.println(st3);
System.out.println("value of I is : "+i);

/* String [] star=st1.split(" ");


String st4=st2+",";
System.out.println(st4);


String [] star1=st2.split(",");

 String[] star2=st4.split("|");
 */

%>

</table>

</div>

<div id="apDivshw" align="center" style="visibility: hidden;" ><table   width="80%" border="2px" align="center">
<p>
<%  



{
	
%>
<%=st11 %> 
	
<%}

%>
</p>
<p>
Category from...

<%  
	
for(int ib=0;ib<star111.length;ib++)
{
	
%>
<%=st21 %> 
	
<%}

%>

</p>

			  
			  
 <% con=DB.dba();
String[] st1a=new String[100];
String[] st2a=new String[100];
String[] dta=new String[100];
int ia=0;
String sqla="select * from leave_comment where BlogName=?";
PreparedStatement psa=con.prepareStatement(sqla);
psa.setString(1, lnk);
ResultSet rsa=psa.executeQuery();
while(rsa.next())
{
    st1a[ia]= rsa.getString(2);
     st2a[ia]= rsa.getString(5);
     dta[ia]=rsa.getString(6);
	ia++;
   
}
String flag="";
String email1=(String)session.getAttribute("email");
String sqlb="select * from like_email where name=? AND email =?";
PreparedStatement psb=con.prepareStatement(sqlb);
psb.setString(1, lnk);
psb.setString(2, email1);
ResultSet rsb=psb.executeQuery();
while(rsb.next())
{
    flag= rsb.getString("like_flag");
    
   
}
System.out.println("Flag is :" +flag);
System.out.println("Flag email is :" +email1);
String st3a=st1a+" ";
System.out.println(st3a);
System.out.println("value of I is : "+ia);

/* String [] star=st1.split(" ");


String st4=st2+",";
System.out.println(st4);


String [] star1=st2.split(",");

 String[] star2=st4.split("|");
 */

%>

</table>


</div>

 <br>
  	 <div align="left">
		  	     <script type="text/javascript">
		  	    function s()
		  	     {
		  	    	 /* var v1=document.getElementById("like").value;
		  	    	 var v2=document.getElementById("dislike").value;
		  	    	 alert("V1"+v1);
		  	    	alert("V2"+v2); */
		  	    	
		  	    	
		  	     }
    var hit = 0;
    function onClick() {
        hit += 1;
        document.getElementById("hit").innerHTML = hit;
        document.getElementById("like").disabled=true;
        document.getElementById("dislike").disabled=false;
        
        s();
    };
    </script>
    <script type="text/javascript">
    var hit = 0;
    function onClick1() {
    	if(hit==0)
    		{
        hit -= 0;
    		}
    	else
    		{
    		hit -= 1;
    		}
        document.getElementById("hit").innerHTML = hit;
        document.getElementById("dislike").disabled=true;
        document.getElementById("like").disabled=false;
        s();
    };
    </script>
		  	<form action="likeservlet?val=<%=lnk %>" method="post" >
		  	<%if(flag.equals("YES"))
		  		{%>
    <button type="submit" class="btn btn-primary"  id="like" name="like"  disabled value="like"><span class="glyphicon glyphicon-thumbs-up"></span> Like</button>
   
    <button type="submit" class="btn btn-danger"  id="dislike" name="dislike"   value="dislike"><span class="glyphicon glyphicon-thumbs-down"></span> Dislike</button>
    &nbsp; &nbsp;  <a id="hit"><%=cnt %></a>
    <%} 
    
    else if(flag.equals("NO")){%>
    
    <button type="submit" class="btn btn-primary"  id="like" name="like"   value="like"><span class="glyphicon glyphicon-thumbs-up"></span> Like</button>
   
    <button type="submit" class="btn btn-danger"  id="dislike" name="dislike" disabled  value="dislike"><span class="glyphicon glyphicon-thumbs-down"></span> Dislike</button>
  &nbsp; &nbsp;  <a id="hit"><%=cnt %></a>
  <%} 
  else
  {
  %>
  <button type="submit" class="btn btn-primary"  id="like" name="like"   value="like"><span class="glyphicon glyphicon-thumbs-up"></span> Like</button>
   
    <button type="submit" class="btn btn-danger"  id="dislike" name="dislike"   value="dislike"><span class="glyphicon glyphicon-thumbs-down"></span> Dislike</button>
  &nbsp; &nbsp;  <a id="hit"><%=cnt %></a>
 
  <%} %>
    
    </form>
    </div>

 <div align="center">

<div class="clearfix"></div>
	 <div class="col-md-8 single-main">	  	 
		 <table>
<tr>
<%
for(int k=0;k<i;k++)
{ %>
<br>
<font style="font-style:normal; font-family:serif;">
<%  
	

	
%>
    <b><%=st2[k] %> </b>
	
<%

%>


</font>
<br>
<font style="font-size: small;font-style: italic;font-family: sans-serif;">Commented by.. </font><font style="font-family: cursive; "><a style="color: red;" href=""><%  
	

%>
    <%=st1[k] %>
	
<%

%></a><font style="font-size: x-small;"> on <%=dt[k] %></font></font>
<%} %>

</tr>

</table> 	 
		  	 <br><br><br>
		
			  <div class="content-form">
					 <h3>Leave a comment</h3>
					<form action="Leave_Comment" method="post">
						<input type="text" name="name" placeholder="Name" required/>
						<input type="text" name="email" placeholder="Email" required/>
						<input type="text" name="phone_no" placeholder="Phone" required/>
						<textarea placeholder="Message" name="message"></textarea>
						<input type="hidden" name="BlogName" value="<%=lnk%>"/>
						<input type="submit" value="SEND"/>
				   </form>
						 </div>
		
		
		<div class="footer">
	 <div class="container">
	 <p>Copyrights © 2015 SSTL All rights reserved | Template by SSTLS</p>
	 </div>
</div>
		
		</div>
		</div>
		</div>
		</div>
		</div>
		</div>
	 <div id="ccdd" style="visibility: hidden;" > 
 <td>Hello from DIV</td>
 </div>
	</body>
</html>