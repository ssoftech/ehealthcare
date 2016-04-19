    <%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javafx.scene.*"%>
<%@page import="java.io.*,org.w3c.dom.*,javax.xml.parsers.*,javax.xml.transform.*, javax.xml.transform.dom.*,javax.xml.transform.stream.*"%>  

    <%@page import="java.sql.*" %>
<%@page import="db.*" %>
<%@page import="java.util.*" %>


<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
     <%@ page language="java" contentType="text/xml; charset=ISO-8859-1"
                pageEncoding="ISO-8859-1"%>
        <%
        response.setIntHeader("Refresh", 1);
        String email=(String)session.getAttribute("email");
        Connection connection=DB.dba();
        String query="select * from doctor_scheduler where docemail=?";
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, email);
   
        ResultSet rs=ps.executeQuery();
        response.setContentType("text/xml");
        out.println("<data>");
        try{
    	    String str=email+"scheduleevent";
    	    DocumentBuilderFactory builderFactory = DocumentBuilderFactory.newInstance();
    	    DocumentBuilder docBuilder = builderFactory.newDocumentBuilder();
    	    Document doc = docBuilder.newDocument();
    	    // questionset elements
    	    Element rootElement = doc.createElement("data");
    	    doc.appendChild(rootElement);
        while(rs.next()) { 
			String s=rs.getString("date");
			String t= rs.getString("fromTime");
			String t1=rs.getString("toTime");
			String[] s1=s.split("/");
			String ad1= s1[2] +"-"+s1[1]+"-"+s1[0]+ " "+t;
			String ad2= s1[2] +"-"+s1[1]+"-"+s1[0]+ " "+t1;
               out.println("<event>");
               out.println("<id>" + rs.getString("id") + "</id>");
               out.println("<start_date>" + ad1 + "</start_date>");
               out.println("<end_date>" + ad2 + "</end_date>");
               out.println("<text>" + rs.getString("text") + "</text>");
               out.println("</event>");
               
               

            	    // question elements
            	    Element question = doc.createElement("event");
            	    rootElement.appendChild(question);
            	    // set attribute to question element
            	    Attr attr = doc.createAttribute("id");
            	    attr.setValue(rs.getString("id"));
            	    Attr attr1 = doc.createAttribute("start_date");
            	    attr1.setValue(ad1);
            	    Attr attr2 = doc.createAttribute("end_date");
            	    attr2.setValue(ad2);
            	    Attr attr3 = doc.createAttribute("text");
            	    attr3.setValue(rs.getString("text"));
            	    question.setAttributeNode(attr);
            	    question.setAttributeNode(attr1);
            	    question.setAttributeNode(attr2);
            	    question.setAttributeNode(attr3);
            	    // write the content into xml file        

            	    TransformerFactory factory = TransformerFactory.newInstance();
            	    Transformer transformer = factory.newTransformer();

            	    transformer.setOutputProperty(OutputKeys.INDENT, "yes");

            	    StringWriter sw = new StringWriter();
            	    StreamResult result = new StreamResult(sw);
            	    DOMSource source = new DOMSource(doc);
            	    transformer.transform(source, result);
            	    String xmlString = sw.toString();

            	    File file=new File("D:/Clinic_registration/WebContent/CSS1/data/"+str+".xml");
            	    BufferedWriter bw = new BufferedWriter(new FileWriter(file));
            	    bw.write(xmlString);
            	    bw.flush();
            	    bw.close();
            	}
        }
            	catch(Exception e)
            	{
            	System.out.println(e);
            	}   
    

               
           
        out.println("</data>");
 %>