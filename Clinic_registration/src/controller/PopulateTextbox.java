package controller;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.Doctor_reg;
import bean.Doc_LogBean;
import db.DB;

public class PopulateTextbox {
	
	public String method(String s)
	{
		Connection con=null;
		String str="";

		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			//String url1="jdbc:mysql://localhost/medical";
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/post","root","root");
		} catch (Exception e) {
			e.printStackTrace();
		}

		try {
			
			
			if(con!=null)
			{
				String sql = "select * from events";
				PreparedStatement ps=con.prepareStatement(sql);
				
				ResultSet rs=ps.executeQuery();
				
				if(rs.next())
				{
				 System.out.println("Events : "+rs.getString(5));
				 str= rs.getString(5);
				 
				 
				}
			}

		}
		catch(Exception e)
		{

		}
		return str;
	}

}
