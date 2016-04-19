
    <%@page import="com.google.gson.JsonObject"%>
<%@page import="java.sql.*" %>
<%@page import="db.*" %>
<%@page import="java.util.*" %>

<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="org.codehaus.jackson.*"%>
<%@page import="org.codehaus.jackson.util.*"%>

<%@page import="org.json.simple.parser.ParseException"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
     <%@ page language="java" contentType="text/xml; charset=ISO-8859-1"
                pageEncoding="ISO-8859-1"%>
        <%
        response.setIntHeader("Refresh", 10);
        Connection connection=DB.dba();
        String query="select * from medical.search";
        Statement stmt=connection.createStatement();
        ResultSet rs=stmt.executeQuery(query);
        response.setContentType("application/json");

   
   		//FileOutputStream file1 = new FileOutputStream(new File("D:/infoThree.json"));
   		FileWriter file1 = new FileWriter("D:/Clinic_registration/WebContent/searchtest.json");
        try
        {
            
            Statement stm1=connection.createStatement();
     
          
            JSONArray list = new JSONArray();
			 rs=stm1.executeQuery(query);
            while(rs.next())
            {
                  /* JSONObject obj=new JSONObject(); 
               
               obj.put("", rs.getString("Dose"));
				 */
                list.add(rs.getString("TEST_SUBCATEGORY_NAME")); 
          
                  
            }
            
          /*   jsonGen.writeStartObject();
            
            jsonGen.writeFieldName("Dose");
            jsonGen.writeStartArray();
    		jsonGen.writeString(list.toString());
    		//jsonGen.writeString("MP");
    		jsonGen.writeEndArray();
    		jsonGen.writeEndObject();
    		jsonGen.close(); 
      */
      file1.write(list.toJSONString());
            out.print(list);
           
        }
        catch(Exception ex)
        {
            out.println("<h1>"+ex+"</g1>");
            
        }
        finally
        {
        	 file1.close();
        }
 
 %>