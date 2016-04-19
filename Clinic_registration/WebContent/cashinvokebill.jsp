<%@page import="java.sql.Connection"%>
<%@page import="db.DB"%>
<%@page import="Model.DAO"%>
<%@page import="java.sql.*,bean.*,Model.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>BILL</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
.invoice-title h2, .invoice-title h3 {
    display: inline-block;
}

.table > tbody > tr > .no-line {
    border-top: none;
}

.table > thead > tr > .no-line {
    border-bottom: none;
}

.table > tbody > tr > .thick-line {
    border-top: 2px solid;
}
</style>
<script>
function myFunction() {
    window.print();
}
</script>
</head>

<body>
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
	   String Address=DAO.getAddress(email);
	   System.out.println("Address is :"+Address);
	   String Pathmobile=DAO.getmobile(email);
	   System.out.println("Mobile number is :"+Pathmobile);
System.out.println("Mobile no  is :"+Pathmobile);
if(username==null)
{
  response.sendRedirect("pathalogylogin.jsp");
}

String Pname=request.getParameter("pname");
String Padd=request.getParameter("padd");
String Vat=request.getParameter("vat");
String OrderDate=request.getParameter("testdate");
String Billdate=request.getParameter("billdate");
String P_mobile=request.getParameter("pmobile");
String Totalprice=request.getParameter("totalprice");
System.out.println("patientName is  :"+Pname);
System.out.println("Billdate is  :"+Billdate);

System.out.println("Address is :"+Padd);
%>
<%
String test="";

Connection con=DB.dbcon();
String sql="select * from bill where Mobile=?";
PreparedStatement ps= con.prepareStatement(sql);
ps.setString(1, P_mobile);
ResultSet rs=ps.executeQuery();
while(rs.next())
{
	test=rs.getString("TEST_SUBCATEGORY_NAME");
}
String[] sptTest=test.split(" ");
String[] testprice=new String[sptTest.length];
PreparedStatement ps1=null;
int cj=0;
int totalprice=0;
for(int t=0;t<sptTest.length;t++)
{
String sql1="select * from test_subcategory where TEST_SUBCATEGORY_NAME=? AND pathalogyname=?";
ps1= con.prepareStatement(sql1);

ps1.setString(1, sptTest[t]);
ps1.setString(2, username);

ResultSet rs1=ps1.executeQuery();

while(rs1.next())
{
	testprice[cj]=rs1.getString("PRICE");
	System.out.println("Price is: "+testprice[cj]);
	totalprice=totalprice+Integer.parseInt( testprice[cj]);
	System.out.println("Total price is: "+totalprice);
	cj++;
}
}
%>
<div class="container">
    <div class="row">
        <div class="col-xs-12">
    		<div class="invoice-title">
    			<h4>Pathology Name-<%=username %></h4><br>Phone Number <%=Pathmobile %><h3 class="pull-right"></h3>
    		</div>
    		<hr>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    				<strong>Billed To:</strong><br>
    					<%=Pname %><br>
    					<%=Padd %><br>
    				</address>
    			</div>
    			<div class="col-xs-6 text-right">
    				<address>
        			<strong>Shipped To:</strong><br>
    					<%=Pname %><br>
    					<%=Padd %><br>
    				</address>
    			</div>
    		</div>
    		<div class="row">
    			<div class="col-xs-6">
    					<address>
    					<strong>Order Date:</strong><br>
    					<%=OrderDate %><br><br>
    				</address>
    			</div>
    			<div class="col-xs-6 text-right">
    				<address>
    					<strong>Date:</strong><br>
    					<%=Billdate %><br><br>
    				</address>
    			</div>
    		</div>
    	</div>
    </div>
    
    <div class="row">
    	<div class="col-md-12">
    		<div class="panel panel-default">
    			<div class="panel-heading">
    				<h3 class="panel-title"><strong>Order summary</strong></h3>
    			</div>
    			<div class="panel-body">
    				<div class="table-responsive">
    					<table class="table table-condensed">
    						<thead>
                                <tr>
        							<td><strong>Item</strong></td>
        							<td class="text-center"><strong></strong></td>
        							
        							<td class="text-right"><strong>Totals</strong></td>
                                </tr>
    						</thead>
    						<tbody>
    							<!-- foreach ($order->lineItems as $line) or some such thing here -->
    							<%for(int i =0;i<sptTest.length;i++){ %>
    							<tr>
    							
    								<td><%=sptTest[i] %></td>
    								
    								<td class="text-center"></td>
    								
    								<td class="text-right"><%=testprice[i] %></td>
    							</tr>
    							<%} %>
                               
    							<tr>
    								<td class="thick-line"></td>
    								
    								<td class="thick-line text-right"><strong>Subtotal</strong></td>
    								<td class="thick-line text-right"><%=totalprice %></td>
    							</tr>
    							<tr>
    								<td class="no-line"></td>
    								
    								<td class="no-line text-right"><strong>Vat</strong></td>
    								<td class="no-line text-right"><%=Vat %> %</td>
    							</tr>
    							<tr>
    								<td class="no-line"></td>
    								
    								<td class="no-line text-right"><strong>Total price</strong></td>
    								<td class="no-line text-right"><%=Totalprice %></td>
    							</tr>
    						</tbody>
    					</table>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
             <center>
             <button class="btn btn-primary hidden-print" onclick="myFunction()"><span class="glyphicon glyphicon-print" aria-hidden="true"></span> Print</button>
	    </center>
</div>
</body>
</html>
