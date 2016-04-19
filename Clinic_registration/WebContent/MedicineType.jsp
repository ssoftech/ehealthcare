<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	

		</head>
<body>
	<%
		String s = request.getParameter("s");
		System.out.println("s " + s);
		if (s.equals("syrup")) {
	%>
<div class="container-fluid text-left">
	<table class="table text-left"  rules="groups">
		<div class="row">
      <div class="col-md-6">
			 <label><span class="label label-primary">Power</span></label>
		<input type="text" class="form-control1" name="power" id="power" placeholder="enter power"></div>
			<div class="col-md-6">
			 <label><span class="label label-primary">Power</span></label>
			<select class="form-control1"  name="selectpower" id="selectpower">
				 	<option selected>ml</option>
			</select></div>
		</div>
		 <br></br>
		<div class="row">
			<div class="col-md-12">
			 <label><span class="label label-primary">Tag Line</span></label>
			<input type="text" class="form-control1"  name="tagline" id="tagline" placeholder="enter your tag line"></div>
		</div>
		 <br></br>
		<div class="row">
			<div class="col-md-6">
			 <label><span class="label label-primary">Price per Bottle</span></label>
			<input type="text" class="form-control1" name="price" id="price" placeholder="Enter price " /></div>
			<div class="col-md-6">
			 <label><span class="label label-primary"> Quantity</span></label>
			<input type="text" class="form-control1" name="quantity" id="quantity" placeholder="Enter Quantity" onkeyup="a();"></div>	
		</div>
		 <br></br>
		<div class="row">
		<div class="col-md-6">
			 <label><span class="label label-primary">Total Quantity</span></label>	
			<input type="text" class="form-control1" name="totalquantity" id="totalquantity"  >
			</div>
			<div class="col-md-5">
			 <label><span class="label label-primary">Vat</span></label>
		<input type="text" class="form-control1" name="vat" id="vat" placeholder="Enter vat" onkeyup="calMRP();"></div>
		<div class="col-md-1" style="padding-top: 30px;">%</div>
		</div>
		<br></br>
		<div class="row">
			<div class="col-md-12">
			 <label><span class="label label-primary">MRP</span></label>
  <input type="text" class="form-control1" name="mrp" id="mrp" placeholder="Enter mrp" readonly="readonly"></div>
		</div>
		<br></br>
		<div class="row">
			<div class="col-md-6">
			 <label><span class="label label-primary">Discount Range</span></label>
			 <select name="Range" class="form-control1" id="Range">

					<option selected>--Select--</option>
					<option value="00%-05%">00%-05%</option>
					<option value="05%-10%">05%-10%</option>
					<option value="10%-15%">10%-15%</option>
					<option value="10%-15%">15%-20%</option>
			</select></div>
			<div class="col-md-5">
			 <label><span class="label label-primary">Discount</span></label>
			 <input type="text" class="form-control1" name="discount" id="discount" placeholder="Enter discount" onchange="f()">
			</div>
			<div class="col-md-1" style="padding-top: 30px;">%</div>
		</div>
	</table>
	</div>
	<%
		}
		if (s.equals("tablet")) {
	%>
	<div class="container-fluid text-left">
	<table class="table text-left"  rules="groups">
			<div class="row">
      <div class="col-md-6">
			 <label><span class="label label-primary">Power</span></label>
			<input type="text" class="form-control1" name="power" id="power" placeholder="enter power"></div>
			<div class="col-md-6">
			 <label><span class="label label-primary">Power</span></label>
			<select class="form-control1"  name="selectpower" id="selectpower">
				 	<option selected>mg</option>
			</select></div>
		</div>
		 <br></br>
		<div class="row">
			<div class="col-md-12">
			 <label><span class="label label-primary">Tag Line</span></label>
			<input type="text" class="form-control1"  name="tagline" id="tagline" placeholder="enter your tag line"></div>
		</div>
		 <br></br>
		<div class="row">
			<div class="col-md-6">
			 <label><span class="label label-primary">Price per strip</span></label>
	<input type="text" class="form-control1" name="price" id="price" placeholder="Enter price "></div>
			<div class="col-md-6">
			 <label><span class="label label-primary">Quantity in 1 Strip</span></label>
			 <input type="text" class="form-control1" name="quantity" id="quantity" placeholder="Enter Quantity in 1 Strip"></div>
		</div>
		<br></br>
		<div class="row">
			<div class="col-md-6">
			 <label><span class="label label-primary">Total Strip</span></label>
			<input type="text" class="form-control1" name="totalstrip" id="totalstrip" placeholder="Enter Total Strip" onkeyup="calquantity();" /></div>
			<div class="col-md-6">
			 <label><span class="label label-primary">Total Quantity</span></label>	
			<input type="text" class="form-control1" name="totalquantity" id="totalquantity" placeholder="Enter Total Quantity" readonly="readonly"></div>		
		</div>
		<br></br>
		<div class="row">
			<div class="col-md-11">
			 <label><span class="label label-primary">Vat</span></label>
		<input type="text" class="form-control1" name="vat" id="vat" placeholder="Enter vat" onkeyup="calMRP();"></div>
		<div class="col-md-1" style="padding-top: 30px;">%</div>
		</div>
		<br></br>
		<div class="row">
			<div class="col-md-12">
			 <label><span class="label label-primary">MRP</span></label>
  <input type="text" class="form-control1" name="mrp" id="mrp" placeholder="Enter mrp" readonly="readonly"></div>
		</div>
		<br></br>
		<div class="row">
			<div class="col-md-6">
			 <label><span class="label label-primary">Discount Range</span></label>
			 <select name="Range" class="form-control1" id="Range">

					<option selected>--Select--</option>
					<option value="00%-05%">00%-05%</option>
					<option value="05%-10%">05%-10%</option>
					<option value="10%-15%">10%-15%</option>
					<option value="10%-15%">15%-20%</option>
			</select></div>
			<div class="col-md-5">
			 <label><span class="label label-primary">Discount</span></label>
			 <input type="text" class="form-control1" name="discount" id="discount" placeholder="Enter discount" onchange="f()">
			</div>
			<div class="col-md-1" style="padding-top: 30px;">%</div>
		</div>
	</table>
	</div>
	<%
		}
		if (s.equals("drops")) {
	%>
	<div class="container-fluid text-left">
	<table class="table text-left"  rules="groups">
			<div class="row">
      <div class="col-md-6">
			 <label><span class="label label-primary">Power</span></label>
		<input type="text" class="form-control1" name="power" id="power" placeholder="enter power"></div>
			<div class="col-md-6">
			 <label><span class="label label-primary">Power</span></label>
			<select class="form-control1"  name="selectpower" id="selectpower">
				 	<option selected>ml</option>
			</select></div>

		</div>
		 <br></br>
		<div class="row">
			<div class="col-md-12">
			 <label><span class="label label-primary">Tag Line</span></label>
			<input type="text" class="form-control1"  name="tagline" id="tagline" placeholder="enter your tag line"></div>
		</div>
		<br></br>
		<div class="row">
			<div class="col-md-6">
			 <label><span class="label label-primary">Price per File</span></label>
			<input type="text" class="form-control1" name="price" id="price" placeholder="Enter price "></div>
			<div class="col-md-6">
			 <label><span class="label label-primary">Quantity</span></label>
			 <input type="text" class="form-control1" name="quantity" id="quantity" placeholder="Enter Quantity" onkeyup="a();"></div>		
		</div>
		<br></br>
		<div class="row">
		<div class="col-md-6">
			 <label><span class="label label-primary">Total Quantity</span></label>	
			<input type="text" class="form-control1" name="totalquantity" id="totalquantity"  >
			</div>
			<div class="col-md-5">
			 <label><span class="label label-primary">Vat</span></label>
		<input type="text" class="form-control1" name="vat" id="vat" placeholder="Enter vat" onkeyup="calMRP();"></div>
		<div class="col-md-1" style="padding-top: 30px;">%</div>
		</div>
		<br></br>
		<div class="row">
			<div class="col-md-12">
			 <label><span class="label label-primary">MRP</span></label>
  <input type="text" class="form-control1" name="mrp" id="mrp" placeholder="Enter mrp" readonly="readonly"></div>
		</div>
		<br></br>
		<div class="row">
			<div class="col-md-6">
			 <label><span class="label label-primary">Discount Range</span></label>
			 <select name="Range" class="form-control1" id="Range">

					<option selected>--Select--</option>
					<option value="00%-05%">00%-05%</option>
					<option value="05%-10%">05%-10%</option>
					<option value="10%-15%">10%-15%</option>
					<option value="10%-15%">15%-20%</option>
			</select></div>
			<div class="col-md-5">
			 <label><span class="label label-primary">Discount</span></label>
			 <input type="text" class="form-control1" name="discount" id="discount" placeholder="Enter discount" onchange="f()">
			</div>
			<div class="col-md-1" style="padding-top: 30px;">%</div>
		</div>
	</table>
	</div>
	<%
		}
		if (s.equals("cream")) {
	%>
	<div class="container-fluid text-left">
	<table class="table text-left"  rules="groups">
			<div class="row">
      <div class="col-md-6">
			 <label><span class="label label-primary">Power</span></label>
		<input type="text" class="form-control1" name="power" id="power" placeholder="enter power"></div>
			<div class="col-md-6">
			 <label><span class="label label-primary">Power</span></label>
			<select class="form-control1"  name="selectpower" id="selectpower">
				 	<option selected>mg</option>
			</select></div>

		</div>
		 <br></br>
		<div class="row">
			<div class="col-md-12">
			 <label><span class="label label-primary">Tag Line</span></label>
			<input type="text" class="form-control1"  name="tagline" id="tagline" placeholder="enter your tag line"></div>
		</div>
		<br></br>
		<div class="row">
			<div class="col-md-6">
			 <label><span class="label label-primary">Price per File</span></label>
			<input type="text" class="form-control1" name="price" id="price" placeholder="Enter price "></div>
			<div class="col-md-6">
			 <label><span class="label label-primary">Quantity</span></label>
			 <input type="text" class="form-control1" name="quantity" id="quantity" placeholder="Enter Quantity"  onkeyup="a();"></div>		
		</div>
		<br></br>
		<div class="row">
		<div class="col-md-6">
			 <label><span class="label label-primary">Total Quantity</span></label>	
			<input type="text" class="form-control1" name="totalquantity" id="totalquantity"  >
			</div>
			<div class="col-md-5">
			 <label><span class="label label-primary">Vat</span></label>
		<input type="text" class="form-control1" name="vat" id="vat" placeholder="Enter vat" onkeyup="calMRP();"></div>
		<div class="col-md-1" style="padding-top: 30px;">%</div>
		</div>
		<br></br>
		<div class="row">
			<div class="col-md-12">
			 <label><span class="label label-primary">MRP</span></label>
  <input type="text" class="form-control1" name="mrp" id="mrp" placeholder="Enter mrp" readonly="readonly"></div>
		</div>
		<br></br>
		<div class="row">
			<div class="col-md-6">
			 <label><span class="label label-primary">Discount Range</span></label>
			 <select name="Range" class="form-control1" id="Range">

					<option selected>--Select--</option>
					<option value="00%-05%">00%-05%</option>
					<option value="05%-10%">05%-10%</option>
					<option value="10%-15%">10%-15%</option>
					<option value="10%-15%">15%-20%</option>
			</select></div>
			<div class="col-md-5">
			 <label><span class="label label-primary">Discount</span></label>
			 <input type="text" class="form-control1" name="discount" id="discount" placeholder="Enter discount" onchange="f()">
			</div>
			<div class="col-md-1" style="padding-top: 30px;">%</div>
		</div>
	</table>
	</div>
	<%
		}
		if (s.equals("ointment")) {
	%>
	<div class="container-fluid text-left">
	<table class="table text-left"  rules="groups">
			<div class="row">
      <div class="col-md-6">
			 <label><span class="label label-primary">Power</span></label>
		<input type="text" class="form-control1" name="power" id="power" placeholder="enter power"></div>
			<div class="col-md-6">
			 <label><span class="label label-primary">Power</span></label>
			<select class="form-control1"  name="selectpower" id="selectpower">
				 	<option selected>mg</option>
			</select></div>

		</div>
		 <br></br>
		<div class="row">
			<div class="col-md-12">
			 <label><span class="label label-primary">Tag Line</span></label>
			<input type="text" class="form-control1"  name="tagline" id="tagline" placeholder="enter your tag line"></div>
		</div>
		<br></br>
		<div class="row">
			<div class="col-md-6">
			 <label><span class="label label-primary">Price per File</span></label>
			<input type="text" class="form-control1" name="price" id="price" placeholder="Enter price "></div>
			<div class="col-md-6">
			 <label><span class="label label-primary">Quantity</span></label>
			 <input type="text" class="form-control1" name="quantity" id="quantity" placeholder="Enter Quantity"  onkeyup="a();"></div>		
		</div>
		<br></br>
		<div class="row">
		<div class="col-md-6">
			 <label><span class="label label-primary">Total Quantity</span></label>	
			<input type="text" class="form-control1" name="totalquantity" id="totalquantity"  >
			</div>
			<div class="col-md-5">
			 <label><span class="label label-primary">Vat</span></label>
		<input type="text" class="form-control1" name="vat" id="vat" placeholder="Enter vat" onkeyup="calMRP();"></div>
		<div class="col-md-1" style="padding-top: 30px;">%</div>
		</div>
		<br></br>
		<div class="row">
			<div class="col-md-12">
			 <label><span class="label label-primary">MRP</span></label>
  <input type="text" class="form-control1" name="mrp" id="mrp" placeholder="Enter mrp" readonly="readonly"></div>
		</div>
		<br></br>
		<div class="row">
			<div class="col-md-6">
			 <label><span class="label label-primary">Discount Range</span></label>
			 <select name="Range" class="form-control1" id="Range">

					<option selected>--Select--</option>
					<option value="00%-05%">00%-05%</option>
					<option value="05%-10%">05%-10%</option>
					<option value="10%-15%">10%-15%</option>
					<option value="10%-15%">15%-20%</option>
			</select></div>
			<div class="col-md-5">
			 <label><span class="label label-primary">Discount</span></label>
			 <input type="text" class="form-control1" name="discount" id="discount" placeholder="Enter discount" onchange="f()">
			</div>
			<div class="col-md-1" style="padding-top: 30px;">%</div>
		</div>
	</table>
	</div>
	<%
		}
	%>

</body>
</html>