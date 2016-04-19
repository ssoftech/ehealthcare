<%@page import="java.io.*,org.w3c.dom.*,javax.xml.parsers.*,javax.xml.transform.*, javax.xml.transform.dom.*,javax.xml.transform.stream.*"%>  
<%!
public void createXml(String graph) throws Exception{
try{
    String str="event2";
    DocumentBuilderFactory builderFactory = DocumentBuilderFactory.newInstance();
    DocumentBuilder docBuilder = builderFactory.newDocumentBuilder();
    Document doc = docBuilder.newDocument();
    // questionset elements
    Element rootElement = doc.createElement("data");
    doc.appendChild(rootElement);
    // question elements
    Element question = doc.createElement("event");
    rootElement.appendChild(question);
    // set attribute to question element
    Attr attr = doc.createAttribute("id");
    attr.setValue("1");
    Attr attr1 = doc.createAttribute("start_date");
    attr1.setValue("2016-02-22 00:28");
    Attr attr2 = doc.createAttribute("end_date");
    attr2.setValue("2016-02-22 00:40");
    Attr attr3 = doc.createAttribute("text");
    attr3.setValue("SSKM Hospital");
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

    File file=new File("C:xml/"+str+".xml");
    BufferedWriter bw = new BufferedWriter(new FileWriter(file));
    bw.write(xmlString);
    bw.flush();
    bw.close();
}
catch(Exception e)
{
System.out.println(e);
}   
}
%>
<% 
String graph=request.getParameter("graph");
createXml(graph);
%>