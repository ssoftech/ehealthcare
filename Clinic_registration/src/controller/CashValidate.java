package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import db.DB;

public class CashValidate {

	public static String checkUser(String userid, String passw) {
		String Cashname=null;
		try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/medical","root","root");  
		      
		PreparedStatement ps=con.prepareStatement("select Cashname from cash where userid=?  and password=?;"); 
		ps.setString(1, userid);
		ps.setString(2,passw);  
		System.out.println(passw);      
		ResultSet rs=ps.executeQuery();  
		if(rs.next())
		{
			Cashname=rs.getString("Cashname");
			return Cashname;
		}
		System.out.println(Cashname);
		}catch(Exception e){
			System.out.println(e);
			}  
		return Cashname; 
	}

	public static String checkUser(String userid) {
		String Cashname=null; 
		try{  
		Connection con=DB.dbcon();
		System.out.println(con);
		PreparedStatement ps=con.prepareStatement("select Cashname from cash where userid=?"); 
		ps.setString(1,userid);
		System.out.println(userid);
		ResultSet rs=ps.executeQuery();  
		if(rs.next())
		{
			Cashname=rs.getString("Cashname"); 
			System.out.println("Cashname  is:"+Cashname);
			return Cashname; 
		}
		
		}catch(Exception e){
			System.out.println(e);
			}  
		return Cashname; 
	}
	

	

	public static String checkUser1(String userid) {
		String mobile=null; 
		try{  
		Connection con=DB.dbcon();
		System.out.println(con);
		PreparedStatement ps=con.prepareStatement("select mobile from cash where userid=?"); 
		ps.setString(1,userid);
		System.out.println("Email for mobile " + userid);
		ResultSet rs=ps.executeQuery();  
		if(rs.next())
		{
			mobile=rs.getString("mobile"); 
			System.out.println("Mobile Number is :"+mobile);
			return mobile; 
		}
		
		}catch(Exception e){
			System.out.println(e);
			}  
		return mobile; 
	}
	public static String checkUser2(String userid) {
		// TODO Auto-generated method stub
		return null;
	}
}
