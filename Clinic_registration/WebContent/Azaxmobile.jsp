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


Date date=new Date();
String DATE_FORMAT = "yyyy-MM-dd";
SimpleDateFormat s1=new SimpleDateFormat(DATE_FORMAT);
String currentDate= s1.format(date);
System.out.println(currentDate);
try{
    String s[]=null;
  
    String username = (String)session.getAttribute("pathalogyname");
    Connection con = DB.dbcon();
    String query1 ="select * from information where Mobile=?";
    PreparedStatement st1=con.prepareStatement(query1);
    st1.setString(1, val);
    ResultSet rs1 = st1.executeQuery();
    while(rs1.next())
    {
    	test=rs1.getString("Test");
    }
    String[] sptTest=test.split(" ");
    String[] testprice=new String[sptTest.length];
    int cj=0;
    for(int t=0;t<sptTest.length;t++)
    {
    String sql1="select * from test_subcategory where TEST_SUBCATEGORY_NAME=? AND pathalogyname=?";
    PreparedStatement ps1= con.prepareStatement(sql1);

    ps1.setString(1, sptTest[t]);
    ps1.setString(2, username);

    ResultSet rs2=ps1.executeQuery();

    while(rs2.next())
    {
    	testprice[cj]=rs2.getString("PRICE");
    	totalprice=totalprice+Integer.parseInt( testprice[cj]);
    	cj++;
    }
    
    }
    
    
    
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
    	
          <div class="row">

      <div class="col-md-10">
      <label><span class="label label-primary">Name of the patient </span></label>
      <input type="text" class="form-control1" name="patientName" value="<%=rs.getString("PATIENT_NAME") %>"  />
      </div>
      </div>
      <br></br>
             <div class="row">
      <div class="col-md-10">
      <label><span class="label label-primary">Name of suggested doctor</span></label>
      <input type="text" class="form-control1" name="SUGGESTED_DOCTOR" value="<%=rs.getString("SUGGESTED_DOCTOR") %>" placeholder="Enter Name of suggested doctor" required />
      </div>
      </div>
        <br></br>
             <div class="row">
      <div class="col-md-10">
      <label><span class="label label-primary">Age of patient</span></label>
      <input type="text" class="form-control1" name="age" value="<%=rs.getString("PATIENT_AGE") %>" placeholder="Enter Age of patient" required />
      </div>
      </div>
        <br></br>
             <div class="row">
      <div class="col-md-10">
      <label><span class="label label-primary">Gender of Patient</span></label>
      <input type="text" class="form-control1" name="Sex" value="<%=rs.getString("PATIENT_GENDER") %>" placeholder="Enter Gender of patient" required />
      </div>
      </div>
     <br></br>
       <div class="row">
      <div class="col-md-10">
      <label><span class="label label-primary">Test Date</span></label>
      <input type="text" class="form-control1" name="testdate" value="<%=rs.getString("TestDate") %>" placeholder="Enter Gender of patient" required />
      </div>
      </div>
      <br></br>
       <div class="row">
     <div class="col-md-10">
      <label><span class="label label-primary">patient Address</span></label>
      <textarea class="form-control1" name="pataddress"  placeholder="Enter Address"  required="required"><%=rs.getString("patAddress") %></textarea>
      </div>
      </div>
      <br></br>
    
      <div class="row">
     <div class="col-md-10">
      <label><span class="label label-primary">VAT</span></label>
      <input type="text" class="form-control1" name="vat" id="vat" placeholder="Enter VAT" onkeyup="fun();"   required="required"/>
      </div>
      </div>
      <br></br>
     <div class="row">
     <div class="col-md-10">
      <label><span class="label label-primary">Bill Date</span></label>
      <input type="text" class="form-control1" name="billdate" placeholder="Enter Test Date" value="<%=currentDate %>" readonly="readonly" />
      </div>
      </div>
      <br></br>
      <div class="col-md-4">
      <label><span class="label label-primary">Name of Test</span></label>
      </div>
      <div class="col-md-5" style="padding-right: 120px;">
      <label><span class="label label-primary">Price</span></label>
      </div>
      <%for(int i =0;i<sptTest.length;i++){
      System.out.println("Test name is : "+sptTest[i]);
      %>
                <div class="row">
      <div class="col-md-4">

<input type="text" class="form-control1" id="country"  name="medi" value="<%=sptTest[i] %>"  style="height:25px;" placeholder="Enter Name of Test" />
</div>
<input type="hidden" id="demo1" name="price" />

      <div class="col-md-4">

<input type="text" class="form-control1" name="serial" id="demo" style="height:25px;" value="<%=testprice[i] %>" placeholder="Enter Price" required >
</div>

								</div>
								<%} %>
								<br><br>
								      <div class="col-md-10">
      <label><span class="label label-primary">Total Price</span></label>
      <label id="price" name="total_price" >&nbsp;&nbsp;&nbsp;&nbsp;<%=totalprice %></label>
     
     <input type="hidden" id="pricesave" name="prcsave" value="<%=totalprice %>">
      <input type="hidden" id="pricehid" value="<%=totalprice %>">
      <input type="hidden" id="pricestore" value="<%=totalprice %>">
      <input type="hidden" name="p_test" value="<%=test %>">
     
      </div>
 
    
<%}}
catch(Exception e)
{
	
}
if(chk!=1)
{
%>

    <%} %>       