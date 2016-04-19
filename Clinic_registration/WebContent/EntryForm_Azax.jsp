<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection"
import="java.sql.PreparedStatement" import="java.sql.ResultSet" import="java.io.IOException"%>
<%@page import="Model.DAO"%>
<%
String Doc_name="";
String Doc_spc="";
String Doc_date="";
String Doc_fromtime="";
String Doc_totime="";
Boolean chk=false;
try{
	String Reg_id=request.getParameter("regid");
	System.out.println("Doctor Reg id is : " +Reg_id);

		Connection con = DB.dba();
		String sql = "Select * from doctor_entry where Registrationid=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, Reg_id);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			Doc_name = rs.getString("doctorname");
			System.out.println("Doctor Name is : " +Doc_name);
			Doc_spc=rs.getString("specilization");
			Doc_date=rs.getString("Date");
			Doc_fromtime=rs.getString("Fromtime");
			Doc_totime=rs.getString("Totime");
			chk=true;
			
		}
		}catch(Exception e){System.out.println(e);}
	

if(chk==true){%>

 <div id="ccdd">
                         <div class="form-group"> 
              <label class="control-label">Doctor Name</label>
              <input type="text" class="form-control1" name="Doctorname" value="<%=Doc_name %>" readonly="readonly">
            </div>
            
             <div class="form-group filled"> 
              <label class="control-label">Specilization</label>
              <select class="form-control1" name="specilization" required>
                     <option value="<%=Doc_spc%>"><%=Doc_spc%></option>

              </select>
            </div>
            <div class="form-group"> 
            <label class="control-label">Date</label>
             <input class="form-control1" id="Date" type="date" value="<%=Doc_date %>" name="Date" />
            </div>
            
            <div class="form-group"> 
              <label class="control-label">From Time</label>
              <input type="time" class="form-control1" name="Fromtime" value="<%=Doc_fromtime%>" required>
              
            </div>
            
            <div class="form-group">
              <label class="control-label normal"> To Time</label>
              <input type="time" class="form-control1" name="Totime" value="<%=Doc_totime%>" required>
            </div>
           
            <div class="form-group">
              <button type="submit" class="btn btn-primary">Submit</button>
            </div>
            </div>
            <%}
            else
            {%>
            
            <div id="ccdd">
                         <div class="form-group"> 
              <label class="control-label">Doctor Name</label>
              <input type="text" class="form-control1" name="Doctorname"  >
            </div>
            
             <div class="form-group filled"> 
              <label class="control-label">Specilization</label>
              <select class="form-control1" name="specilization" required>
                    <option value="">select</option>
<option value="Anesthesiologist">Anesthesiologist</option>
<option value="Cardiologist">Cardiologist</option>
<option value="Dermatologist">Dermatologist</option>
<option value="Epidemiologist">Epidemiologist</option>
<option value="ENT Specialist">ENT Specialist</option>
<option value="Neurologist">Neurologist</option>
<option value="Orthopedic Surgeon">Orthopedic Surgeon</option>
<option value="Physiologist">Physiologist</option>
<option value="Surgeon">Surgeon</option>
              </select>
            </div>
            <div class="form-group"> 
            <label class="control-label">Date</label>
             <input class="form-control1" id="Date" type="date" name="Date" />
            </div>
            
            <div class="form-group"> 
              <label class="control-label">From Time</label>
              <input type="time" class="form-control1" name="Fromtime" required>
              
            </div>
            
            <div class="form-group">
              <label class="control-label normal"> To Time</label>
              <input type="time" class="form-control1" name="Totime" required>
            </div>
           
            <div class="form-group">
              <button type="submit" class="btn btn-primary">Submit</button>
            </div>
            </div>
            <%}%>