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
<select class="form-control1" name="city">
<option value="selec">select</option>
<option value="Visakhapatnam">Visakhapatnam</option>
<option value="Srikakulam">Srikakulam</option>
<option value="Vizianagaram">Vizianagaram</option>
</select>
<%}if(s.equals("Maharashtra")){ %>
<label for="sel1">City</label>
<select class="form-control1" name="city">
<option value="select">select</option>
<option value="1">Mumbai</option>
<option value="2">Pune</option>
<option value="2">Nagpur</option>
</select>
<%}if(s.equals("Tamil Nadu")){ %>
<label for="sel1">City</label>
<select class="form-control1" name="city">
<option value="select">select</option>
<option value="1">Chennai</option>
<option value="2">Coimbatore</option>
<option value="2">Tiruchirappalli</option>
</select>
<%}if(s.equals("West Bengal")){ %>
<label for="sel1">City</label>
<select class="form-control1" name="city">
<option value="select">select</option>
<option value="kolkata">Kolkata</option>
<option value="Durgapur">Durgapur</option>
<option value="Nadia">Nadia</option>
</select>
<%} if(s.equals("u1")){ %>
<label for="sel1">City</label>
<select class="form-control1" name="city">
<option value="select">select</option>
<option value="1">u11</option>
<option value="2">u22</option>
</select>
<%} if(s.equals("c")){ %>
<label for="sel1">City</label>
<select class="form-control1" name="city">
<option value="select">select</option>
<option value="California">California</option>
</select>
<%} if(s.equals("f")){ %>
<label for="sel1">City</label>
<select class="form-control1" name="city">
<option value="select">select</option>
<option value="forida">forida</option>

</select>
<%} if(s.equals("n")){ %>
<label for="sel1">City</label>
<select class="form-control1" name="city">
<option value="select">select</option>
<option value="New york">New york</option>

</select>
<%} %>
</body>
</html>