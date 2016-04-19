<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection"
import="java.sql.PreparedStatement" import="java.sql.ResultSet" import="java.text.SimpleDateFormat" import="java.io.IOException"%>
		
		
      <%
   //   response.setIntHeader("Refresh", 10);	
int chk=0;
int arcnt=0;
Connection con= DB.dba();
String Reg_id ="";

String P_mobile=request.getParameter("del");
System.out.println("Patient mobile no is : "+P_mobile);


String email=(String)session.getAttribute("email");

java.util.Date date = new java.util.Date();
SimpleDateFormat df = new SimpleDateFormat();
df.applyPattern("yyyy-MM-dd");
String dt= df.format(date);
String sql21 = "select * from doctor_reg where email=? ";
PreparedStatement ps21=con.prepareStatement(sql21);
ps21.setString(1, email);
ResultSet rs21=ps21.executeQuery();
while(rs21.next())
{
Reg_id=rs21.getString("Reg_ID");
System.out.println("Reg Id : "+Reg_id);
}

if(P_mobile!=null)
{
	System.out.println("Not Null");
    String sql2a = "delete from clinic_queue where MobileNo=?";
	PreparedStatement ps2a=con.prepareStatement(sql2a);
	ps2a.setString(1, P_mobile);
	ps2a.executeUpdate();
	
}
else
{
	System.out.println("Null");

}

int lp=0;
String sql2s = "select * from clinic_queue where Registrationid=? AND Date=?";
PreparedStatement ps2s=con.prepareStatement(sql2s);
ps2s.setString(1, Reg_id);
ps2s.setString(2, dt);
ResultSet rs2s=ps2s.executeQuery();
while(rs2s.next())
{
	lp++;
}


String pgNm="";
    
    String[] Confirm=new String[lp];
    String[] Pmob= new String[lp];
    
    String clinic_email ="";

   
    
    
int cc=0;
int chkcnt=0;
System.out.println("Date is : "+dt);
    String sql2 = "select * from clinic_queue where Registrationid=? AND Date=?";
	PreparedStatement ps2=con.prepareStatement(sql2);
	ps2.setString(1, Reg_id);
	ps2.setString(2, dt);
ResultSet rs2=ps2.executeQuery();
while(rs2.next())
{
	
	Confirm[chkcnt]=rs2.getString("Confirmation");
	clinic_email=rs2.getString("email");
	rs2.getString("PatientName");
	rs2.getString("age");
	rs2.getString("Sex");
	rs2.getString("DISEASE");
	Pmob[chkcnt]=rs2.getString("MobileNo");
	chkcnt++;
}

System.out.println(chkcnt);
String sql10 = "select * from size where email=? ";
PreparedStatement ps10=con.prepareStatement(sql10);
ps10.setString(1, email);
ResultSet rs10=ps10.executeQuery();
while(rs10.next())
{
	pgNm=rs10.getString("Print");
}
String[] save_chk=new String[chkcnt];
for(int k=0;k<chkcnt;k++)
{
System.out.println("Confirm : "+Confirm[k]);
if(Confirm[k].equals("Yes"))
{
	
	save_chk[k]=Confirm[k];
	System.out.println("Confirm  Save Chk: "+save_chk[k]);
}

}


{


	    String sql2a = "select * from clinic_queue where Registrationid=? AND Date=? AND Confirmation=? ";
		PreparedStatement ps2a=con.prepareStatement(sql2a);
		ps2a.setString(1, Reg_id);
		ps2a.setString(2, dt);
		ps2a.setString(3, "Yes");

	
	ResultSet rs1=ps2a.executeQuery();
	String[] P_Name=new String[chkcnt];
	String[] P_Age=new String[chkcnt];
	String[] P_Sex=new String[chkcnt];
	String[] P_Disease=new String[chkcnt];

			%>		
			<div id="azaxoatientview">
				
<div class="container-fluid">
<div class="row">
<div class="col-md-12" >
<h2>Patients List</h2>
</div>

</div>

<div class="row text-left">
<div class="col-md-12">
<table class="table" rules="rows">
<thead class="bg-warning">
		 <tr>
    <td>Patient Number</td>
    <td>Patient Name</td>
    <td>Patient Age</td>
    <td>Patient Sex</td>
    <td>Patient Disease</td>
    <td></td>
    
   
  </tr>
  </thead>
 <%
 int  i=1;
int o=0;
	while(rs1.next())
	{
		P_Name[o]=rs1.getString("PatientName");
		P_Age[o]=rs1.getString("age");
		P_Sex[o]=rs1.getString("Sex");
		P_Disease[o]=rs1.getString("DISEASE");
		
	

	%>

	
				<tr>
	<td><%=i++%></td>
	
	<td><%=P_Name[o]%></td>

    <td ><%=P_Age[o] %></td>
        <td><%= P_Sex[o]%></td>
    <td><%= P_Disease[o]%></td>
    <td><button type="button" onclick="location.href='<%=pgNm%>.jsp?Pnm=<%=P_Name[o]%>&page=<%=P_Age[o] %>&psex=<%=P_Sex[o] %>&pdses=<%=P_Disease[o] %>&peml=<%=clinic_email %>&pmobile=<%=Pmob[o]  %>'">Click</button></td>
 

    				<%o++;}}

{%>
	

<%}

 %>
				 </tr>

 
</table> 
 </div>
 </div>
</div>
</div>