<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection"
import="java.sql.PreparedStatement" import="java.sql.ResultSet" import="java.io.IOException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String  s=request.getParameter("s");
System.out.println("s "+s);
if(s.equals("select"))
{
%>	

<% 
}
try{
Connection con=DB.dbcon();
String sql="Select password,confirmpassword from reception where userid=?";
PreparedStatement st=con.prepareStatement(sql);
st.setString(1, s);
ResultSet rs = st.executeQuery();
%>
<% 
if(rs.next())
  {
	  System.out.println(rs.getString("password"));
	  System.out.println(rs.getString("confirmpassword"));
	 
	  %>
<div class="row">

      <div class="col-md-12">
      <label><span class="label label-primary">Password </span></label>
      <input type="password" class="form-control1" name="password" value="<%=rs.getString("password") %>"   />
      </div>
      </div>
      <br></br>
      <div class="row">

      <div class="col-md-12">
      <label><span class="label label-primary">Confirm Password </span></label>
      <input type="password" class="form-control1" name="confirmpassword" value="<%=rs.getString("confirmpassword") %>"   />
      </div>
      </div>
      <%}}
      catch(Exception e)
      {
      	
      }
      %>
</body>
</html>