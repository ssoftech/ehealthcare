package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import db.DB;

public class ManagementValidate {

	public static String checkUser(String userid, String passw) {
		String Reportname=null;
		try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/medical","root","root");  
		      
		PreparedStatement ps=con.prepareStatement("select Reportname from report where userid=?  and password=?;"); 
		ps.setString(1, userid);
		ps.setString(2,passw);  
		System.out.println(passw);      
		ResultSet rs=ps.executeQuery();  
		if(rs.next())
		{
			Reportname=rs.getString("Reportname");
			return Reportname;
		}
		System.out.println(Reportname);
		}catch(Exception e){
			System.out.println(e);
			}  
		return Reportname; 
	}
	
	public static String checkUser(String userid)
	{
		String Reportname=null; 
		try{  
		Connection con=DB.dbcon();
		System.out.println(con);
		PreparedStatement ps=con.prepareStatement("select Reportname from report where userid=?"); 
		ps.setString(1,userid);
		System.out.println(userid);
		ResultSet rs=ps.executeQuery();  
		if(rs.next())
		{
			Reportname=rs.getString("Reportname"); 
			System.out.println("Report  name"+Reportname);
			return Reportname; 
		}
		
		}catch(Exception e){
			System.out.println(e);
			}  
		return Reportname; 
	}

	public static String checkUser1(String userid) {
		
			String mobile=null; 
			try{  
			Connection con=DB.dbcon();
			System.out.println(con);
			PreparedStatement ps=con.prepareStatement("select mobile from report where userid=?"); 
			ps.setString(1,userid);
			System.out.println("userid for mobile " + userid);
			ResultSet rs=ps.executeQuery();  
			if(rs.next())
			{
				mobile=rs.getString("mobile"); 
				System.out.println("Mobile Number"+mobile);
				return mobile; 
			}
			
			}catch(Exception e){
				System.out.println(e);
				}  
			return mobile; 
		}
	
	public static String checkUser2(String userid) {
		
			String Address=null; 
			try{  
			Connection con=DB.dbcon();
			System.out.println(con);
			PreparedStatement ps=con.prepareStatement("select Address from report where userid=?"); 
			ps.setString(1,userid);
			System.out.println(" Address " + userid);
			ResultSet rs=ps.executeQuery();  
			if(rs.next())
			{
				Address=rs.getString("Address"); 
				System.out.println("Address"+Address);
				return Address; 
			}
			
			}catch(Exception e){
				System.out.println(e);
				}  
			return Address; 
		}

}
