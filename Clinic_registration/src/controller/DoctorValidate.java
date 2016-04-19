package controller;
import java.sql.DriverManager;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.Doc_LogBean;
import db.DB;

public class DoctorValidate {

	public static String checkUser(Doc_LogBean lb)
	{
		String res = null;
		String email=lb.getEmail();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical", "root", "root");
			PreparedStatement ps = con.prepareStatement("select password from doctor_reg where email=?");
			ps.setString(1, email);
			
			ResultSet rs =ps.executeQuery();
			if(rs.next())
			{
				res=rs.getString(1);
				System.out.println("Password From Database "+res);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	 }
	public static String checkUser1(String email)
	{
		String res = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical", "root", "root");
			PreparedStatement ps = con.prepareStatement("select password from doctor_reg where email=?");
			ps.setString(1, email);
			
			ResultSet rs =ps.executeQuery();
			if(rs.next())
			{
				res=rs.getString(1);
				System.out.println("Password From Database "+res);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	 }
	public static String checkUser2(String mob)
	{
		String res = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical", "root", "root");
			PreparedStatement ps = con.prepareStatement("select password from doctor_reg where mobileno=?");
			ps.setString(1, mob);
			
			ResultSet rs =ps.executeQuery();
			if(rs.next())
			{
				res=rs.getString(1);
				System.out.println("Password From Database "+res);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	 }
	public static int updatePwd(String email, String password)
	{
		int i=0;
		try {
			System.out.println("updating password");
			Connection con=DB.dbcon();
			System.out.println(con);
			
			byte[] unencodedPassword = password.getBytes();
			MessageDigest md = null;
			try {
			md = MessageDigest.getInstance("MD5");
			} catch (Exception e) {}
			md.reset();
			md.update(unencodedPassword);
			byte[] encodedPassword = md.digest();
			StringBuffer buf = new StringBuffer();
			for (int j = 0; j < encodedPassword.length; j++) {
			if (((int) encodedPassword[j] & 0xff) < 0x10) {
			buf.append("0");
			}
			buf.append(Long.toString((int) encodedPassword[j] & 0xff, 16));
			}
			String passw=buf.toString(); 
			
			
			String sql="update doctor_reg set password=? where email=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, passw);
			System.out.println(password);
			ps.setString(2, email);
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
