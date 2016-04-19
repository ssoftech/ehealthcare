package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import db.DB;

public class ReceptionValidate {
	public static String checkUser(String userid, String passw)
	{
		String Receptionname=null;
		try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/medical","root","root");  
		      
		PreparedStatement ps=con.prepareStatement("select Recepname from reception where userid=?  and password=?;"); 
		ps.setString(1, userid);
		ps.setString(2,passw);  
		System.out.println(passw);      
		ResultSet rs=ps.executeQuery();  
		if(rs.next())
		{
			Receptionname=rs.getString("Recepname");
			return Receptionname;
		}
		System.out.println(Receptionname);
		}catch(Exception e){
			System.out.println(e);
			}  
		return Receptionname; 
	}
	
	public static String checkUser(String Userid)
	{
		String Receptionistname=null; 
		try{  
		Connection con=DB.dbcon();
		System.out.println(con);
		PreparedStatement ps=con.prepareStatement("select Recepname from reception where userid=?"); 
		ps.setString(1,Userid);
		System.out.println(Userid);
		ResultSet rs=ps.executeQuery();  
		if(rs.next())
		{
			Receptionistname=rs.getString("Recepname"); 
			System.out.println("Receptionistname name"+Receptionistname);
			return Receptionistname; 
		}
		
		}catch(Exception e){
			System.out.println(e);
			}  
		return Receptionistname; 
	}
	public static String checkUser1(String Userid)
	{
		String mobile=null; 
		try{  
		Connection con=DB.dbcon();
		System.out.println(con);
		PreparedStatement ps=con.prepareStatement("select mobile from reception where userid=?"); 
		ps.setString(1,Userid);
		System.out.println("Email for mobile " + Userid);
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
	
	public static String checkUser2(String Userid)
	{
		String Address=null; 
		try{  
		Connection con=DB.dbcon();
		System.out.println(con);
		PreparedStatement ps=con.prepareStatement("select Address from reception where Userid=?"); 
		ps.setString(1,Userid);
		System.out.println(" Address " + Userid);
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
