package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import db.DB;

public class Retailervalidate {
	public static String checkUser(String Retailerid,String email, String passw)
	{
		String Retailername=null;
		try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/medical","root","root");  
		      
		PreparedStatement ps=con.prepareStatement("select Retailername from retailer_detail where Retailer_id=? and email=? and password=?;"); 
		ps.setString(1, Retailerid);
		ps.setString(2,email);
		System.out.println(email);
		ps.setString(3,passw);  
		System.out.println("password is : "+passw);      
		ResultSet rs=ps.executeQuery();  
		if(rs.next())
		{
			Retailername=rs.getString("Retailername");
			return Retailername;
		}
		System.out.println(Retailername);
		}catch(Exception e){
			System.out.println(e);
			}  
		return Retailername; 
	}
	
	public static String checkUser(String email)
	{
		
		String Retailername=null; 
		try{  
		Connection con=DB.dbcon();
		System.out.println(con);
		PreparedStatement ps=con.prepareStatement("select Retailername from retailer_detail where email=?"); 
		ps.setString(1,email);
		System.out.println("email is :"+email);
		ResultSet rs=ps.executeQuery();  
		if(rs.next())
		{
			Retailername=rs.getString("Retailername"); 
			System.out.println("Retailername is : "+Retailername);
			return Retailername; 
		}
		
		}catch(Exception e){
			System.out.println(e);
			}  
		return Retailername; 
	}
	public static String checkUser1(String email)
	{
		String mobile=null; 
		try{  
		Connection con=DB.dbcon();
		System.out.println(con);
		PreparedStatement ps=con.prepareStatement("select mobile from retailer_detail where email=?"); 
		ps.setString(1,email);
		System.out.println("Email for mobile " + email);
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
	
	public static String checkUser2(String email)
	{
		String Address=null; 
		try{  
		Connection con=DB.dbcon();
		System.out.println(con);
		PreparedStatement ps=con.prepareStatement("select Address from retailer_detail where email=?"); 
		ps.setString(1,email);
		System.out.println(" Address " + email);
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
	
	public static String checkUser3(String email)
	{
		String City=null; 
		try{  
		Connection con=DB.dbcon();
		System.out.println(con);
		PreparedStatement ps=con.prepareStatement("select City from retailer_detail where email=?"); 
		ps.setString(1,email);
		System.out.println(" City " + email);
		ResultSet rs=ps.executeQuery();  
		if(rs.next())
		{
			City=rs.getString("City"); 
			System.out.println("City"+City);
			return City; 
		}
		
		}catch(Exception e){
			System.out.println(e);
			}  
		return City; 
	}
	public static int updatePwd(String email, String passw,String passw1)
	{
		int i=0;
		try {
			System.out.println("updating password");
			Connection con=DB.dbcon();
			System.out.println(con);
			String sql="update retailer_detail set password=?,confirmpwd=? where email=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, passw);
			System.out.println(passw);
			ps.setString(2, passw1);
			ps.setString(3, email);
			System.out.println(email);
			i= ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(i);
		return i;
	}

	 

}

