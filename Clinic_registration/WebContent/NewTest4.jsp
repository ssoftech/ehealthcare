
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
					  System.out.println("From Test4");
        response.setIntHeader("Refresh", 10);
        Connection connection=DB.dba();
        String email=(String)session.getAttribute("email");
        String query="select * from medical.panel";
        PreparedStatement ps1=connection.prepareStatement(query);
        ResultSet rs=ps1.executeQuery();
        response.setContentType("application/json");

   	String name="D:/Clinic_registration/WebContent/blogsearch.json";
   		//FileOutputStream file1 = new FileOutputStream(new File("D:/infoThree.json"));
   		FileWriter file1 = new FileWriter(name);
        try
        {
            
           
     
          
            JSONArray list = new JSONArray();
	
            while(rs.next())
            {
            	
                  /* JSONObject obj=new JSONObject(); 
               
               obj.put("", rs.getString("Dose"));
				 */
				 
				 
               list.add(rs.getString("name")); 
          		
                  
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
 		

      