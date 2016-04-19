package db;

import java.sql.DriverManager;

import java.sql.Connection;

public class DB {


	public static Connection dbcon() {
		Connection con=null;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medical", "root", "root");
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return con;
	}
	public static Connection dba(){
		Connection con=null;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			//String url1="jdbc:mysql://localhost/medical";
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medical","root","root");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

	

}