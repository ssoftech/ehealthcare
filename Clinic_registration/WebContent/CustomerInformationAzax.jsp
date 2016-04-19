<%@page import="db.DB"%>
<%@page import="Model.DAO"%>
<%@page import="java.text.SimpleDateFormat,bean.Path_billBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection,java.sql.PreparedStatement,java.sql.ResultSet,java.io.IOException,java.util.*"%>
<%@page import="java.sql.*,bean.*,Model.*,java.util.*,java.util.Date"%>
<%  int totalprice=0; %>

<%
int chk=0;
String val=request.getParameter("val");
System.out.println("From azax mobile : "+val);
String test="";

Boolean mobchk =false;
Date date=new Date();
String DATE_FORMAT = "yyyy-MM-dd";
SimpleDateFormat s1=new SimpleDateFormat(DATE_FORMAT);
String currentDate= s1.format(date);
System.out.println(currentDate);
try{
    String s[]=null;
  
    String username = (String)session.getAttribute("pathalogyname");
    Connection con = DB.dbcon();

    
    
    
    String query ="select * from information where Mobile=?";
    PreparedStatement st=con.prepareStatement(query);
    st.setString(1, val);
    ResultSet rs = st.executeQuery();
%>

     <%
    
     if(rs.next())
      {
    	 chk=1;
    	  System.out.println(rs.getString("PATIENT_NAME"));
    	  System.out.println(rs.getString("patAddress"));
    	 
  
    	 
    	  %>
    		<script>

	jQuery(function(){
		$("#test").autocomplete("list.jsp");
		});
	jQuery(function(){
		$("#test1").autocomplete("list.jsp");
		});
	jQuery(function(){
		$("#test2").autocomplete("list.jsp");
		});
	jQuery(function(){
		$("#test3").autocomplete("list.jsp");
		});
	jQuery(function(){
		$("#test4").autocomplete("list.jsp");
		});
</script>
       <div class="row text-left">
      <div class="col-md-6">
      <label><span class="label label-primary">Name of the patient </span></label>
      <input type="text" class="form-control1" name="patientName" value=<%=rs.getString("PATIENT_NAME") %> placeholder="Enter Name of patient" required />
      </div>
      <div class="col-md-6">
      <label><span class="label label-primary">Name of suggested doctor</span></label>
      <input type="text" class="form-control1" name="Doctor" value=<%=rs.getString("SUGGESTED_DOCTOR") %> placeholder="Enter Name of suggested doctor" required />
      </div>
      </div>
        <br></br>
             <div class="row text-left">
      <div class="col-md-6">
      <label><span class="label label-primary">Age of patient</span></label>
      <input type="text" class="form-control1" name="age" value=<%=rs.getString("PATIENT_AGE") %>   placeholder="Enter Age of patient" required />
      </div>
      <div class="col-md-6">
      <label><span class="label label-primary">Gender of Patient</span></label>
     <select class="form-control1" name="sex" placeholder="Enter Gender of patient" required>
      	 <option value="<%=rs.getString("PATIENT_GENDER") %>"><%=rs.getString("PATIENT_GENDER") %></option>
	  	
      </select>
      </div>
      </div>
       <br></br>
             <div class="row text-left">

      <div class="col-md-6">
    <label><span class="label label-primary">Test Date</span></label>
      <input type="text" class="form-control1" name="testdate" placeholder="Enter Test Date" value="<%=rs.getString("TestDate") %>" readonly="readonly" />
      </div>
      <div class="col-md-6">
       <label><span class="label label-primary">Delivery Date</span></label>
      <input type="Date" class="form-control1" name="date" value="<%=rs.getString("DeliveryDate") %>" placeholder="Enter mobile number of patient" required />
      </div>
      </div>
       <br></br>
             <div class="row text-left">
      
      <div class="col-md-12">
    <label><span class="label label-primary">Address</span></label>
      <textarea class="form-control1" name="address"  placeholder="Enter Address"  required="required"><%=rs.getString("patAddress")%></textarea>
      </div>
           
      </div>
    <br></br>
     <div class="row text-left">
     <div class="col-md-6">
      <label><span class="label label-primary">Name of Test</span></label>
      <input type="text" class="form-control1" name="test" id="test" onkeyup="shww()" placeholder="Enter name of test" required />
      </div>
       

       <div class="col-md-4" style="padding-top: 30px;">
	<input id="btnAdd" type="button" value="Add" onclick="show()" />
      </div>
     
    </div>

<div id="hid" style="display:none;">
      <div class="row text-left" id="tr2" style="visibility: hidden;">
      <div class="col-md-6" >
	<label><span class="label label-primary">Name of Test</span></label>
	<input type="text" class="form-control1" name="test1" id="test1" onkeyup="prc" placeholder="Enter Name of Test" />

							</div>
							</div>
						
	<div class="row text-left" id="tr3" style="visibility: hidden;">
      <div class="col-md-6" >
	<label><span class="label label-primary">Name of Test</span></label>
	<input type="text" class="form-control1" name="test2" id="test2" onkeyup="prc" placeholder="Enter Name of Test" />
                 
                 </div>
                 </div>
                 	<div class="row text-left" id="tr4" style="visibility: hidden;">
      <div class="col-md-6" >
	<label><span class="label label-primary">Name of Test</span></label>
	<input type="text" class="form-control1" name="test3" id="test3" onkeyup="prc" placeholder="Enter Name of Test" />
                 
                 </div>
                 </div>
                 	<div class="row text-left" id="tr5" style="visibility: hidden;">
      <div class="col-md-6" >
	<label><span class="label label-primary">Name of Test</span></label>
	<input type="text" class="form-control1" name="test4" id="test4" onkeyup="prc" placeholder="Enter Name of Test" />
                 
                 </div>
                 </div>
                 </div>
                 <div class="row">
      <div class="col-md-10">
     <label>&nbsp;</label>
     <br>
      <input type="submit" class="btn btn-lg btn-primary" value="update">
      </div>
      </div>
 
    
<%}}
catch(Exception e)
{
	
}
if(chk!=1)
{
%>
 <div class="row text-left">
      <div class="col-md-6">
      <label><span class="label label-primary">Name of the patient </span></label>
      <input type="text" class="form-control1" name="patientName" placeholder="Enter Name of patient" required />
      </div>
      <div class="col-md-6">
      <label><span class="label label-primary">Name of suggested doctor</span></label>
      <input type="text" class="form-control1" name="Doctor" placeholder="Enter Name of suggested doctor" required />
      </div>
      </div>
        <br></br>
             <div class="row text-left">
      <div class="col-md-6">
      <label><span class="label label-primary">Age of patient</span></label>
      <input type="text" class="form-control1" name="age" placeholder="Enter Age of patient" required />
      </div>
      <div class="col-md-6">
      <label><span class="label label-primary">Gender of Patient</span></label>
     <select class="form-control1" name="sex" placeholder="Enter Gender of patient" required>
      	 <option value="">select</option>
	  	 <option value="Male">Male</option>
	  	 <option value="Female">Female</option>
	  	 <option value="Others">Others</option>
      </select>
      </div>
      </div>
       <br></br>
             <div class="row text-left">

      <div class="col-md-6">
    <label><span class="label label-primary">Test Date</span></label>
      <input type="text" class="form-control1" name="testdate" placeholder="Enter Test Date" value="<%=currentDate %>" readonly="readonly" />
      </div>
      <div class="col-md-6">
       <label><span class="label label-primary">Delivery Date</span></label>
      <input type="Date" class="form-control1" name="date" placeholder="Enter mobile number of patient" required />
      </div>
      </div>
       <br></br>
             <div class="row text-left">
      
      <div class="col-md-12">
    <label><span class="label label-primary">Address</span></label>
      <textarea class="form-control1" name="address" placeholder="Enter Address"  required="required"></textarea>
      </div>
           
      </div>
    <br></br>
     <div class="row text-left">
     <div class="col-md-6">
      <label><span class="label label-primary">Name of Test</span></label>
      <input type="text" class="form-control1" name="test" id="test" placeholder="Enter name of test" required />
      </div>
       

       <div class="col-md-4" style="padding-top: 30px;">
	<input id="btnAdd" type="button" value="Add" onclick="show()" />
      </div>
     
    </div>

<div id="hid" style="display:none;">
      <div class="row text-left" id="tr2" style="visibility: hidden;">
      <div class="col-md-6" >
	<label><span class="label label-primary">Name of Test</span></label>
	<input type="text" class="form-control1" name="test1" id="test1" onkeyup="prc" placeholder="Enter Name of Test" />

							</div>
							</div>
						
	<div class="row text-left" id="tr3" style="visibility: hidden;">
      <div class="col-md-6" >
	<label><span class="label label-primary">Name of Test</span></label>
	<input type="text" class="form-control1" name="test2" id="test2" onkeyup="prc" placeholder="Enter Name of Test" />
                 
                 </div>
                 </div>
                 	<div class="row text-left" id="tr4" style="visibility: hidden;">
      <div class="col-md-6" >
	<label><span class="label label-primary">Name of Test</span></label>
	<input type="text" class="form-control1" name="test3" id="test3" onkeyup="prc" placeholder="Enter Name of Test" />
                 
                 </div>
                 </div>
                 	<div class="row text-left" id="tr5" style="visibility: hidden;">
      <div class="col-md-6" >
	<label><span class="label label-primary">Name of Test</span></label>
	<input type="text" class="form-control1" name="test4" id="test4" onkeyup="prc" placeholder="Enter Name of Test" />
                 
                 </div>
                 </div>
                 </div>
                 <div class="row">
      <div class="col-md-10">
     <label>&nbsp;</label>
     <br>
      <input type="submit" class="btn btn-lg btn-primary" value="update">
      </div>
      </div>
    <%} %>       