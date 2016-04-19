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
if(s.equals("India")){%>
<label for="sel1">State</label>
<select class="form-control1" name="state" onchange="fun11(this.value)">
<option value="select">select</option>
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="West Bengal">West Bengal</option>
</select>
<%}if(s.equals("Usa")){ %>
<label for="sel1">State</label>
<select class="form-control1" name="state"  onchange="fun11(this.value)">
<option value="select">select</option>
<option value="California">California</option>
<option value="Florida">Florida</option>
<option value="New York">New York</option>
</select>
<%} %>
</body>
</html>