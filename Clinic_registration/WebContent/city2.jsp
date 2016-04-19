<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% String  s=request.getParameter("s");
System.out.println("s "+s);
if(s.equals("Andhra Pradesh")){%>
      <label for="sel1">City</label>
<select class="form-control" id="sel1" name="city">
      
      		<option value="selec">select</option>
			<option value="Visakhapatnam">Visakhapatnam</option>
			<option value="Srikakulam">Srikakulam</option>
			<option value="Vizianagaram">Vizianagaram</option>
      		
	  </select>
<%}if(s.equals("Maharashtra")){ %>
      <label for="sel1">City</label>
      <select class="form-control" id="sel1" name="city">
      
      		<option value="select">select</option>
			<option value="Mumbai">Mumbai</option>
			<option value="Pune">Pune</option>
			<option value="Nagpur">Nagpur</option>
      		
	  </select>
<%}if(s.equals("Tamil Nadu")){ %>
 <label for="sel1">City</label>
      <select class="form-control" id="sel1" name="city">
      
      		<option value="select">select</option>
			<option value="Chennai">Chennai</option>
			<option value="Coimbatore">Coimbatore</option>
			<option value="Tiruchirappalli">Tiruchirappalli</option>
	  </select>
<%}if(s.equals("West Bengal")){ %>

      <label for="sel1">City</label>
      <select class="form-control" id="sel1" name="city">
      
      		<option value="select">select</option>
			<option value="Kolkata">Kolkata</option>
			<option value="Durgapur">Durgapur</option>
			<option value="Nadia">Nadia</option>
      		
	  </select>

<%} if(s.equals("California")){ %>
<label for="sel1">City</label>
      <select class="form-control" id="sel1" name="city">
			<option value="select">select</option>
			<option value="California">California</option>
</select>
<%} if(s.equals("Florida")){ %>
<label for="sel1">City</label>
      <select class="form-control" id="sel1" name="city">
			<option value="select">select</option>
			<option value="forida">forida</option>

</select>
<%} if(s.equals("New York")){ %>
<label for="sel1">City</label>
      <select class="form-control" id="sel1" name="city">
			<option value="select">select</option>
			<option value="New york">New york</option>

</select>
<%} %>
</body>
</html>