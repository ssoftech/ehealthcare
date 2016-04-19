package Model;


import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;



import  java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.Cash_reg_bean;
import bean.Pathalogy;
import bean.Reception_reg_bean;
import bean.Report_reg_bean;
import bean.Retailerbean ;
import bean.viewpath_DoctorBean;
import db.DB;

	public class DAO1 {

		public static int insert(Retailerbean rd) {
			int i=0;
			
					try {
						Connection con=DB.dbcon();
						System.out.println(con);
						i = 0;
						if(con!=null)
						{
							
						String sql="insert into retailer_detail(Retailername,Email,country,State,City,Address,Pincode,Retailer_id,password,confirmpwd,Mobile,Delivary_range,Minimum_price_for_Delivary,file) "
								+"values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

						
						PreparedStatement ps=con.prepareStatement(sql);
						ps.setString(1,rd.getRetailername());
						ps.setString(2,rd .getEmail());
						ps.setString(3,rd.getCountry());
						ps.setString(4,rd.getState());
						ps.setString(5,rd.getCity());
						ps.setString(6,rd.getAddress());
						ps.setString(7,rd.getPincode());
						ps.setString(8,rd.getRetailerid());
						ps.setString(9,rd.getPassword ());
						ps.setString(10,rd.getConfirmpwd());
						ps.setString(11,rd.getMobile());
						ps.setString(12,rd.getDelivaryRange());
						ps.setDouble(13,rd.getMinimumpricefordelivary());
						ps.setString(14,rd.getFile());
						i=ps.executeUpdate();
						
						}
					}
						catch (SQLException e) {
						e.printStackTrace();
					}
					System.out.println(i);
					return i;
					
					
			}
		

		public static boolean emailCheck(String email) {
			boolean status=false;
					
						try {
							Connection con=DB.dbcon();

							if(con!=null)
							{
								
								String sql="select email from retailer_detail where email=?";
								PreparedStatement ps=con.prepareStatement(sql);
								ps.setString(1, email);
								ResultSet rs=ps.executeQuery();
								status=rs.next();
								if(rs.next())
								{
									String email1=rs.getString(1);
									System.out.println("email "+email1);
								}
								
							}
						} catch (SQLException e) {
							
							e.printStackTrace();
						}
						return status;
				}
		public static ArrayList<Retailerbean> show(String email)
		 {
			 	byte[] b=null;
				 ArrayList<Retailerbean> ar=null;
				try {
					ar = new ArrayList<Retailerbean>();
		 
						Connection con=DB.dbcon();
						String sql="select * from retailer_detail where email=?";
						PreparedStatement ps=con.prepareStatement(sql);
						ps.setString(1,email);
						ResultSet rs=ps.executeQuery();
						if(rs.next())	
						{
							String country=rs.getString("country");
							String state=rs.getString("State");
							String city=rs.getString("City");
							String address=rs.getString("Address");
							String pincode=rs.getString("Pincode");
							String mobile=rs.getString("Mobile");
							String filename=rs.getString("file");
							System.out.println(country+" "+state+" "+city+" "+address+" "+pincode+" "+mobile+b);
							Retailerbean ad= new Retailerbean(country, address, state, city, pincode, mobile);
							ar.add(ad);
						}
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
					return ar;
		 }





	public static int update(Retailerbean rd) {
		int i=0;
		try {
			Connection con=DB.dbcon();
			String sql="update retailer_detail set Address=?, Pincode=?, Mobile=? where Email=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,rd.getAddress());
			System.out.println(rd.getAddress());
			ps.setString(2,rd.getPincode());
			System.out.println(rd.getPincode());
			ps.setString(3, rd.getMobile());
			System.out.println( rd.getMobile());
			ps.setString(4,rd.getEmail());
			System.out.println(rd.getEmail());
			i= ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println(i);
		return i;	
	}
	public static String getfilefromDb(String email)
	{
		String filename="";
		try{
			Connection con=DB.dbcon();
		if(con!=null)
		{
			System.out.println();
			String sql="select file from  retailer_detail where Email=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,email);
		
			ResultSet rs=ps.executeQuery();
			 while(rs.next())
				{
				 filename=rs.getString(1);
					
				}
		}
	} catch (SQLException e) {
	
	e.printStackTrace();
	}
	return filename;	
	}
		 
	public static String getfilefromDb1(String email)
	{
		String filename="";
		try{Connection con=DB.dbcon();
		if(con!=null)
		{
			System.out.println();
			String sql="select file from  retailer_detail where Email=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,email);
		
			ResultSet rs=ps.executeQuery();
			 while(rs.next())
				{
				 filename=rs.getString(1);
					
				}
		}
		
	
	}catch (SQLException e){
		
		e.printStackTrace();
		}
		return filename;	
		}
	public static String getid(String email)
	{
		String Retailerid="";
		System.out.println("email "+email);
		try{
			Connection con=DB.dbcon();
		if(con!=null)
		{
			System.out.println();
			String sql="select Retailer_id from  retailer_detail where Email=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,email);
			
			ResultSet rs=ps.executeQuery();
			 	if(rs.next())
				{
			 		Retailerid=rs.getString(1);
			 		System.out.println("rid "+Retailerid);
			 		
					
				}
		}
	} catch (SQLException e) {
	
	e.printStackTrace();
	}
	return Retailerid;	
	}
	public static String getfilefromDb2(String Retailerid)
	{
		String filename="";
		System.out.println("Retailerid is: "+Retailerid);
		try{
			Connection con=DB.dbcon();
		if(con!=null)
		{
			System.out.println();
			String sql="select file from  retailer where Retailerid=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,Retailerid);
		
			ResultSet rs=ps.executeQuery();
			 while(rs.next())
				{
				 filename=rs.getString(1);
					
				}
		}
	} catch (SQLException e) {
	
	e.printStackTrace();
	}
	return filename;	
	}
	public static ArrayList<Pathalogy> show1(String email)
	 {
		 	
			 ArrayList<Pathalogy> ar=null;
			try {
				ar = new ArrayList<Pathalogy>();
	 
					Connection con=DB.dbcon();
					String sql="select Address,mobile,file,City from pathalogy_registration where email=?";
					PreparedStatement ps=con.prepareStatement(sql);
					ps.setString(1,email);
					ResultSet rs=ps.executeQuery();
					if(rs.next())	
					{
						
						String address=rs.getString("Address");
						String mobile=rs.getString("Mobile");
						String filename=rs.getString("file");
						String City=rs.getString("City");
						System.out.println("DAO from:"+City);
						Pathalogy Pn= new Pathalogy(email,address,mobile,City,filename);
						ar.add(Pn);
					}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
				return ar;
	 }


	public static int update1(Retailerbean rd1) {
		int j=0;
		try {
			Connection con=DB.dbcon();
			String sql="update retailer_detail set  file=? where Email=?";
			PreparedStatement ps=con.prepareStatement(sql);
			
			 ps.setString(1,rd1.getFile());  
			System.out.println("DAO from:"+rd1.getFile());
			ps.setString(2,rd1.getEmail());
			System.out.println(rd1.getEmail());
			j= ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println(j);
		return j;	
	}
	public static String getfilefromdb3(String Medicinename)
	{
		String filename="";
		System.out.println("Medicinename is: "+Medicinename);
		try{
			Connection con=DB.dbcon();
		if(con!=null)
		{
			System.out.println();
			String sql="select file from  retailer where Medicinename=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,Medicinename);
		
			ResultSet rs=ps.executeQuery();
			 while(rs.next())
				{
				 filename=rs.getString(1);
				 System.out.println("DAO frrom :"+filename);
					
				}
		}
	} catch (SQLException e) {
	
	e.printStackTrace();
	}
	return filename;	
	}
	public static String getname(String Retailername)
	{
		String Medicinename="";
		System.out.println("Retailername "+Retailername);
		try{
			Connection con=DB.dbcon();
		if(con!=null)
		{
			System.out.println();
			String sql="select Medicinename from  retailer where Retailername=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,Retailername);
			
			ResultSet rs=ps.executeQuery();
			 	if(rs.next())
				{
			 		Medicinename=rs.getString(1);
			 		System.out.println("DAO1 From: Medicinename "+Medicinename);
			 		
					
				}
		}
	} catch (SQLException e) {
	
	e.printStackTrace();
	}
	return Medicinename;	
	}
	public static ArrayList<viewpath_DoctorBean> show2(String name1)
	 {
		 	
		ArrayList<viewpath_DoctorBean> ar=null;
			try {
				ar = new ArrayList<viewpath_DoctorBean>();
	 
					Connection con=DB.dbcon();
					String sql="select pATIENT_NAME,total_price from bill where  name1=?";
					PreparedStatement ps=con.prepareStatement(sql);
					ps.setString(1, name1);
					ResultSet rs=ps.executeQuery();
					if(rs.next())	
					{
						
						String pATIENT_NAME=rs.getString("pATIENT_NAME");
						System.out.println("DAO1 From: pATIENT_NAME "+pATIENT_NAME);
						Double total_price=rs.getDouble("total_price");
						
						viewpath_DoctorBean ob= new viewpath_DoctorBean(pATIENT_NAME, total_price, name1);
						ar.add(ob);
					}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
				return ar;
	 }
	/*public static ArrayList<Reception_reg_bean> show3(String userid)
	 {
		 	
			 ArrayList<Reception_reg_bean> ar=null;
			try {
				ar = new ArrayList<Reception_reg_bean>();
	 
					Connection con=DB.dbcon();
					String sql="select password,confirmpassword from reception where userid=?";
					PreparedStatement ps=con.prepareStatement(sql);
					ps.setString(1,userid);
					ResultSet rs=ps.executeQuery();
					if(rs.next())	
					{
						
						String Password=rs.getString("password");
						String Confirmpassword=rs.getString("confirmpassword");
					
						Reception_reg_bean ab= new Reception_reg_bean(Password, Confirmpassword, userid); 
						ar.add(ab);
					}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
				return ar;
	 }*/


	public static int update(Reception_reg_bean ab) {
			int i=0;
			try {
				System.out.println("updating password");
				Connection con=DB.dbcon();
				System.out.println(con);
				String sql="update reception set password=?,confirmpassword=? where userid=?";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1, ab.getPassword());
				ps.setString(2, ab.getConfirmpassword());
				ps.setString(3, ab.getUserid());
				i= ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println(i);
			return i;
		}
	public static int update(Cash_reg_bean cb) {
		   int i=0;
			try {
				System.out.println("updating password");
				Connection con=DB.dbcon();
				System.out.println(con);
				String sql="update cash set password=?,confirmpassword=? where userid=?";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1, cb.getPassword());
				ps.setString(2, cb.getConfirmpassword());
				ps.setString(3, cb.getUserid());
				i= ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println(i);
			return i;
		}
	public static int update(Report_reg_bean rb) {
		int i=0;
		try {
			System.out.println("updating password");
			Connection con=DB.dbcon();
			System.out.println(con);
			String sql="update report set password=?,confirmpassword=? where userid=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, rb.getPassword());
			ps.setString(2, rb.getConfirmpassword());
			ps.setString(3, rb.getUserid());
			i= ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(i);
		return i;
	}
	
	}	
	