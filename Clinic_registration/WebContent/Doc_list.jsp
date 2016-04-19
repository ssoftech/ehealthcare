
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection"
import="java.sql.PreparedStatement" import="java.sql.ResultSet" import="java.io.IOException"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

   <%
   try{
     String s[]=null;

     Connection con = DB.dba();
     Statement st=con.createStatement();
     ResultSet rs = st.executeQuery("select Medicinename from retailer");

       List li = new ArrayList();

       while(rs.next())
       {
           li.add(rs.getString(1));
       }

       String[] str = new String[li.size()];
       Iterator it = li.iterator();

       int i = 0;
       while(it.hasNext())
       {
           String p = (String)it.next();
           str[i] = p;
           i++;
       }

    //jQuery related start
       String query = (String)request.getParameter("q");

       int cnt=1;
       for(int j=0;j<str.length;j++)
       {
           if(str[j].toUpperCase().startsWith(query.toUpperCase()))
           {
              out.print(str[j]+"\n");
              if(cnt>=5)// 5=How many results have to show while we are typing(auto suggestions)
              break;
              cnt++;
            }
       }
    //jQuery related end

rs.close();
st.close();
con.close();

}
catch(Exception e){
e.printStackTrace();
}

//www.java4s.com
%>

	
