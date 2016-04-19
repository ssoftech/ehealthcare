	package Model;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import  java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;

import bean.Add_Medicine_Bean;
import bean.Cash_reg_bean;
import bean.Customer_regisBean;
import bean.Doctorbean;
import bean.Doctorentry;
import bean.Information;
import bean.Newsbean;
import bean.Path_billBean;
import bean.Pathalogy;
import bean.Patient;
import bean.Reception_reg_bean;
import bean.Referreddoctor;
import bean.Report_reg_bean;
import bean.Retailerbean;
import bean.Test_categorybean;
import bean.cashbillBean;
import bean.categoryShow_bean;
import bean.clinicbean;
import bean.deleteTest_bean;
import bean.subcategory_testbean;
import bean.updateTest_bean;
import bean.viewpath_billBean;
import db.DB;
import java.util.*;
import java.text.*; 





public class DAO {

	public static int insert(clinicbean cb) {
		
		int i=0;
				try {
					Connection con=DB.dbcon();
					
			
					if(con!=null)
					{
					String sql="insert into clinic(clinicname,Email,password,Confirmpassword,Country,Address,State,City,Pincode,Mobile,userid,file) "
							+"values(?,?,?,?,?,?,?,?,?,?,?,?)";
					PreparedStatement ps=con.prepareStatement(sql);
					
					ps.setString(1, cb.getClinicname());	
					
					ps.setString(2,cb.getEmail());
					ps.setString(3,cb.getPassword());
					ps.setString(4,cb.getConfirmpassword());
					ps.setString(5,cb.getCountry());
					ps.setString(6,cb.getAddress());
					ps.setString(7,cb.getState());
					ps.setString(8,cb.getCity());
					ps.setString(9,cb.getPincode());
					ps.setString(10,cb.getMobile());
                    ps.setString(11, cb.getUserid());
					ps.setString(12,cb.getFile());
				
					 i=ps.executeUpdate();
					 System.out.println(i);
					}
				}
					catch (SQLException e) {
					e.printStackTrace();
				}
				
				return i;
				
		}
	
public static boolean emailCheck(String email) {
boolean status=false;
		
			try {
				Connection con=DB.dbcon();

				if(con!=null)
				{
					
					String sql="select email from clinic where email=?";
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
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return status;
}
public static boolean emailCheck1(String email) {
boolean status=false;
		
			try {
				Connection con=DB.dbcon();

				if(con!=null)
				{
					
					String sql="select email from customer_registration where email=?";
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
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return status;
}

public static ArrayList<Doctorbean> show(String country, String state, String city) {
	 ArrayList<Doctorbean> ar=null;
	 System.out.println("dsdsd");
	 try {
		ar = new ArrayList<Doctorbean>();
		Doctorbean ad=null;
				Connection con=DB.dbcon();
				if(con!=null)
				{
					System.out.println("1111");
				String sql="select fname,lname,gender,Specilization,Reg_ID,email,mobileno,Experience, degree,Image from  doctor_reg where country=? AND state=? AND city=?";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1,country);
				ps.setString(2, state);
				
	            ps.setString(3, city);
               ResultSet rs=ps.executeQuery();
              // System.out.println(ln.getState()+" "+ln.getCountry()+""+ln.getCity());
				while(rs.next())
				{
				System.out.println("22222");	
				String Firstname=rs.getString("fname");
				
               String Lastname=rs.getString("lname");
				String email=rs.getString("email");
				String Registrationid=rs.getString("Reg_ID");
				System.out.println(Registrationid);
				String Gender =rs.getString("gender");
				String Exprience=rs.getString("Experience");
				String Qualification=rs.getString("degree");
				String Specilization=rs.getString("Specilization");
				String mobile=rs.getString("mobileno");
				String file=rs.getString("Image");
               /*System.out.println(file);*/
			 ad=new Doctorbean(Firstname, Lastname, email, Gender, Qualification, Exprience, Specilization, mobile,file);
			 System.out.println(ad.getFirstname()+" "+ad.getLastname());
		     ar.add(ad);
				}
				}
				else
				{
					System.out.println("ddd");
				}
}
catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}


	return ar;
}

public static ArrayList<Doctorbean> show1(String Country,String State,String City,String Specilization) {
	 ArrayList<Doctorbean> ar=null;
	 System.out.println("dsdsd");
	 try {
		ar = new ArrayList<Doctorbean>();
		Doctorbean ad=null;
				Connection con=DB.dbcon();
				if(con!=null)
				{
					System.out.println("ddioio");
				String sql="select fname,lname,gender,email,mobileno,Experience, degree,Image from  doctor_reg where state=? AND country=? AND city=? AND Specilization=?";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(2,Country);
	              ps.setString(1, State);
	              ps.setString(3, City);
	              ps.setString(4, Specilization);
                 ResultSet rs=ps.executeQuery();
                 
                 while(rs.next())
				{
					System.out.println("2222222");
				String Firstname=rs.getString("fname");
				System.out.println("Firstname");
				String Lastname=rs.getString("lname");
				System.out.println("Lastname");
				String email=rs.getString("email");
				
				String Gender =rs.getString("gender");
				String Exprience=rs.getString("Experience");
				String Qualification=rs.getString("degree");
				String mobile=rs.getString("mobileno");
				String filename=rs.getString("Image");
			 ad=new Doctorbean(Firstname, Lastname, email, Gender, Qualification, Exprience, mobile,filename);
			 System.out.println(ad.getFirstname()+" "+ad.getLastname());	        
			 ar.add(ad);
				}
				}
				else
				{
					System.out.println("ddd");
				}
}
catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}


	return ar;
}


public static int update(clinicbean bn) {
	int i=0;
	 try {
			
			
					Connection con=DB.dbcon();
				
					if(con!=null)
					{
						
						String sql="UPDATE clinic set Address=?, mobile=? where email=?";
						PreparedStatement ps=con.prepareStatement(sql);
						ps.setString(3, bn.getEmail());
						System.out.println("Email from DAO : " +bn.getEmail());
						ps.setString(1, bn.getAddress());
						System.out.println("Address from DAO : " +bn.getAddress());
						ps.setString(2, bn.getMobile());
						 System.out.println("Mobile from DAO : " +bn.getMobile());
						
						i=ps.executeUpdate();					
					}
	 }
	 catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 
					
	
	return i;
	}

public static int insert(Patient pb) {
	int i=0;
	try {
		Connection con=DB.dbcon();
		

		if(con!=null)
		{
		String sql="insert into patients_appointment(clinicname,Patientname,age,Doctorname,Date,Fromtime,DISEASE,MobileNo,Address,Registrationid,Sex,specilization) "
				+"values(?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, pb.getClinicname());
		ps.setString(2, pb.getPatientname());	
		ps.setString(3,pb.getAge());
		ps.setString(4,pb.getDoctorname());
		ps.setString(5,pb.getDate());
		ps.setString(6,pb.getFromTime());
		ps.setString(7,pb.getDisease());
		ps.setString(8,pb.getMobileno());
		ps.setString(9,pb.getAddress());
		ps.setString(10,pb.getRegistrationid());
		ps.setString(11,pb.getSEX());
		ps.setString(12,pb.getSpecilization());
	    i=ps.executeUpdate();
		 System.out.println(i);
		}
	}
		catch (SQLException e) {
		e.printStackTrace();
	}
	
	return i;
	
}
public static int insert(Doctorentry bn) {
	int i=0;
	try {
		Connection con=DB.dbcon();
		Boolean chk=false; 

		if(con!=null)
		{
		String sql1="select * from doctor_entry where Registrationid=?";	
			PreparedStatement ps1= con.prepareStatement(sql1);
			ps1.setString(1, bn.getRegistrationid());
			ResultSet rs= ps1.executeQuery();
			while(rs.next())
			{
				chk=true;
			}
			if(chk!=true)
			{
		String sql="insert into doctor_entry(clinicname,doctorname,Registrationid,specilization,Date,Fromtime,Totime) "
				+"values(?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, bn.getClinicname());	
		ps.setString(2,bn.getDoctorname());
		ps.setString(3, bn.getRegistrationid());
		ps.setString(4, bn.getSpecilization());
		ps.setString(5,bn.getDate());
		ps.setString(6,bn.getFormtime());
		ps.setString(7,bn.getTotime());
		 i=ps.executeUpdate();
		 System.out.println(i);
		}
		
		else
		{
			String sql="UPDATE doctor_entry set Date=?, Fromtime=?, Totime=? where Registrationid=?";
			PreparedStatement ps2=con.prepareStatement(sql);
			ps2.setString(1, bn.getDate());
			ps2.setString(2, bn.getFormtime());
			ps2.setString(3, bn.getTotime());
			ps2.setString(4, bn.getRegistrationid());
			i=ps2.executeUpdate();
			
		}
		}
	}
		catch (SQLException e) {
		e.printStackTrace();
	}
	
	return i;
}



public static ArrayList<Doctorentry> show3(String Date) {
	ArrayList<Doctorentry>ar=null;
	
		try {
			ar = new ArrayList<Doctorentry>();
			Doctorentry bn=null;
					Connection con=DB.dbcon();
					if(con!=null)
					{
						String sql="select clinicname,doctorname,Registrationid,Fromtime,Totime from  doctor_entry where Date=? ";
						PreparedStatement ps=con.prepareStatement(sql);
						ps.setString(1, Date);
						
						
						ResultSet rs=ps.executeQuery();
						 while(rs.next())
							{
								
							String Clinicname=rs.getString("clinicname");
						
							String Doctorname=rs.getString("doctorname");
							String Registrationid=rs.getString("Registrationid");
							String Fromtime=rs.getString("Fromtime");
							String Totime=rs.getString("Totime");
							
						
						 bn=new Doctorentry(Clinicname, Doctorname, Registrationid, Date, Fromtime, Totime);
							        
						 ar.add(bn);
							}
							}
					else
							{
								System.out.println("ddd");
							}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ar;
}
public static ArrayList<Patient> show4(String date, String doctorname, String registrationid) {
	ArrayList<Patient>ar=null;
	
	try {
		ar = new ArrayList<Patient>();
		Patient pb=null;
				Connection con=DB.dbcon();
				if(con!=null)
				{
					System.out.println();
					String sql="select PatientName,age,DISEASE,MobileNo,Sex from  clinic_queue where Date=? AND DoctorName=?AND Registrationid=?";
					PreparedStatement ps=con.prepareStatement(sql);
					ps.setString(1, date);
					ps.setString(2, doctorname);
					ps.setString(3, registrationid);
					System.out.println(registrationid);
					ResultSet rs=ps.executeQuery();
					 while(rs.next())
						{
						 String Patientname=rs.getString("patientname");
							String Age=rs.getString("age");
							String DISEASE=rs.getString("DISEASE");
							String MobileNo=rs.getString("MobileNo");
							String SEX=rs.getString("Sex");
							pb=new Patient(Patientname, Age, doctorname, date, DISEASE, MobileNo, registrationid, SEX);
							ar.add(pb);
						}
				}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return ar;
}
public static String getfilefromDb(String email)
{
	String filename="";
	try{Connection con=DB.dbcon();
	if(con!=null)
	{
		System.out.println();
		String sql="select file from  clinic where email=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,email);
	
		ResultSet rs=ps.executeQuery();
		 while(rs.next())
			{
			 filename=rs.getString(1);
				
			}
	}
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
return filename;	
}
public static int insert(Newsbean nb) {
	int i=0;
	try {
		Connection con=DB.dbcon();
		

		if(con!=null)
		{
		String sql="insert into newspaper(name,area)  "
				+"values(?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, nb.getName());	
		ps.setString(2,nb.getArea());
		i=ps.executeUpdate();
		 System.out.println(i);
		}
	}
		catch (SQLException e) {
		e.printStackTrace();
	}
	
	return i;
}
public static ArrayList<clinicbean> show5(String country, String state, String city) {
	 ArrayList<clinicbean> ar=null;
	 System.out.println("dsdsd");
	 try {
		ar = new ArrayList<clinicbean>();
		clinicbean cb=null;
				Connection con=DB.dbcon();
				if(con!=null)
				{
					System.out.println("1111");
				String sql="select clinicname,email,Address,mobile,file from clinic where country=? AND State=? AND City=?";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1,country);
				ps.setString(2, state);
				ps.setString(3, city);
				ResultSet rs=ps.executeQuery();
				while(rs.next())
				{
					
				String Clinicname=rs.getString("clinicname");
				System.out.println(Clinicname);
				String email=rs.getString("email");
				System.out.println(email);
				String Address=rs.getString("Address");
				System.out.println(Address);
				String Mobile=rs.getString("mobile");
				System.out.println(Mobile);
				String filename=rs.getString("file");
				/*System.out.println(filename);*/
				cb=new clinicbean(Clinicname, email, Address, country, state, city, Mobile, filename);      
				 ar.add(cb);
					}
					}
					else
					{
						System.out.println("ddd");
					}
	}catch (SQLException e) {
			e.printStackTrace();
		}
		
	 return ar;
	 }

public static ArrayList<Doctorentry> show6(String date, String clinicname) {
	ArrayList<Doctorentry>ar=null;
	
	try {
		ar = new ArrayList<Doctorentry>();
		Doctorentry bn=null;
				Connection con=DB.dbcon();
				if(con!=null)
				{
					String sql="select doctorname,Registrationid,Fromtime,Totime,specilization from  doctor_entry where Date=? AND clinicname=?";
					PreparedStatement ps=con.prepareStatement(sql);
					ps.setString(1, date);
					ps.setString(2, clinicname);
					ResultSet rs=ps.executeQuery();
					 while(rs.next())
						{
					String Doctorname=rs.getString("doctorname");
						String Registrationid=rs.getString("Registrationid");
						String Fromtime=rs.getString("Fromtime");
						String Totime=rs.getString("Totime");
						String Specilization=rs.getString("specilization");
					 bn=new Doctorentry(clinicname, Doctorname, Registrationid, Specilization, date, Fromtime, Totime);
						  System.out.println("Show6 Successfully from Dao");      
					 ar.add(bn);
						}
						}
				else
						{
							System.out.println("ddd");
						}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
					return ar;
}

public static int insert(Customer_regisBean ob) {
	int i=0;
	
	Connection con=null;
	con=DB.dbcon();
	String sql="insert into customer_registration(Firstname,Lastname,email,gender,password,Confirmpassword,Country,State,City,Address,Zipcode,mobile,file)values(?,?,?,?,?,?,?,?,?,?,?,?,?)";		
	
	try{
					

			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,ob.getFirstNAME());
			ps.setString(2, ob.getLastNAME());
			ps.setString(3,ob.getEMAIL());
			ps.setString(4, ob.getGender());
			ps.setString(5,ob.getPASSWORD());
			ps.setString(6,ob.getConfirmpassword());
			ps.setString(7, ob.getCountry());
			ps.setString(8, ob.getState());
			ps.setString(9,ob.getCITY());
			ps.setString(10,ob.getADDRESS());
			ps.setString(11, ob.getZipcode());
			ps.setString(12,ob.getMOBILENO());
			ps.setString(13, ob.getFile());
				return i=ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return i;
		}
public static int insert1(Patient pb,String Email) {
	
	int j=0;
	try {
		Connection con=DB.dbcon();
		

		if(con!=null)
		{
		String sql="insert into clinic_queue(Patientname,age,DISEASE,MobileNo,Registrationid,Sex,Date,Doctorname,Confirmation,email) "
				+"values(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
	
		ps.setString(1, pb.getPatientname());	
		ps.setString(2,pb.getAge());
		
		ps.setString(3,pb.getDisease());
		ps.setString(4,pb.getMobileno());
		
		ps.setString(5,pb.getRegistrationid());
		ps.setString(6,pb.getSEX());
		ps.setString(7, pb.getDate());
		ps.setString(8, pb.getDoctorname());
		ps.setString(9,"NO");
		ps.setString(10,Email);
		
	    j=ps.executeUpdate();
		 System.out.println(j);
		}
	}
		catch (SQLException e) {
		e.printStackTrace();
	}
	
	return j;

}
public static int  queue(String Date,String Doctorname,String Registrationid){
	int j=0;
	try {
		Connection con=DB.dbcon();
		

		if(con!=null)
		{
		String sql="update clinic_queue set Confirmation=? where Date=? AND DoctorName=? AND Registrationid=? ";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,"Yes");
		ps.setString(2, Date);
		ps.setString(3, Doctorname);
		System.out.println("Doc Name from Dao: "+Doctorname);
		ps.setString(4, Registrationid);
	    j=ps.executeUpdate();
		 System.out.println(j);
		}
	}
		catch (SQLException e) {
		e.printStackTrace();
	}
	
	return j;
}

public static int Delete(String Medicinename) {
	int i=0;
	System.out.println(Medicinename);
	 try {
	 Connection con=DB.dbcon();
		String sql="Delete from retailer where Medicinename=?";
		PreparedStatement ps=con.prepareStatement(sql);
		
		ps.setString(1,Medicinename);
		
		System.out.println();
		i=ps.executeUpdate();
		System.out.println(i);
	}catch (SQLException e) {
		
		e.printStackTrace();
	}
return i;
}

public static int insert(Add_Medicine_Bean ad) {
	int i=0;
	
	try {
		Connection con=DB.dbcon();
		
		i = 0;
		if(con!=null)
		{
			
		    DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
            Date date = new Date();
			System.out.println("by--------------");
		String sql="insert into retailer(Medicinename,Medicinetype,Tagline,Price,quantity, Power,totalquantity,Vat,Mrp,Discount_range,Discount,Manufacture_date,Expiry_date,Manufacturer_name,Location,Landmark,file, Retailername, Retailer_id,Date) "
				+"values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,ad.getMedicine_name());
		System.out.println(ad.getMedicine_name());
		ps.setString(2,ad.getMedicine_type());
		
		ps.setString(3, ad.getTagline());
		ps.setDouble(4,ad.getPrice());
		ps.setInt(5,ad.getQuantity());
		ps.setInt(6,ad.getPower());
		ps.setInt(7,ad.getTotalquantity());
		ps.setDouble(8,ad.getVat());
		ps.setDouble(9,ad.getMrp());
		ps.setString(10,ad.getDiscount_range());
		System.out.println("From Dao : "+ad.getDiscount_range());
		ps.setDouble(11,ad.getDiscount());
		ps.setString(12,ad.getManufacturedate());
		ps.setString(13,ad.getExpirydate());
		ps.setString(14,ad.getManufacturername());
		ps.setString(15,ad.getLocation());
		ps.setString(16,ad.getLandmark());
		ps.setString(17,ad.getFileName());
		System.out.println("Dao from:  "+ad.getFileName());
		ps.setString(18,ad.getRetailername());
		ps.setString(19,ad.getRetailerid());
		ps.setString(20,dateFormat.format(date));
		System.out.println("Dao from: "+ ad.getRetailerid());
		
		i=ps.executeUpdate();
		
		}
	}
		catch (SQLException e) {
		e.printStackTrace();
	}
	System.out.println(i);
	return i;

}
public static int update(Add_Medicine_Bean ad) {
	int i=0;
	try {
	
		Connection con=DB.dbcon();
		String sql="update retailer  set Medicinetype=?, Tagline=?, Price=?, quantity=?, Power=?,Location=?,Landmark=?,Totalquantity=?,Vat=?,Mrp=?,Discount_range=?, Discount=? where Medicinename=?";
		PreparedStatement ps=con.prepareStatement(sql);
        ps.setString(1, ad.getMedicine_type());
        ps.setString(2, ad.getTagline());
        ps.setDouble(3, ad.getPrice());
        ps.setInt(4, ad.getQuantity());
        ps.setInt(5, ad.getPower());
        ps.setString(6, ad.getLocation());
        ps.setString(7, ad.getLandmark());
        ps.setInt(8,ad.getTotalquantity());
        ps.setDouble(9,ad.getVat());
        System.out.println("DAO is :"+ad.getVat());
		ps.setDouble(10,ad.getMrp());
		ps.setString(11,ad.getDiscount_range());
		ps.setDouble(12,ad.getDiscount());
        ps.setString(13, ad.getMedicine_name());
		
		i= ps.executeUpdate();
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	System.out.println(i);
	return i;	
}

public static int update1(Add_Medicine_Bean ad1) {
	int j=0;
	try {
		Connection con=DB.dbcon();
		String sql="update retailer set file=? where Medicinename=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, ad1.getFileName());
		ps.setString(2, ad1.getMedicine_name());
		j=ps.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return j;
}
public static ArrayList<Add_Medicine_Bean> Show(String Medicinename)
 {
		System.out.println("hiiiiiiiiiiiiiii");
		 ArrayList<Add_Medicine_Bean> ar=null;
		try {
			ar = new ArrayList<Add_Medicine_Bean>();
				System.out.println("helloooooooooo");
				Connection con=DB.dbcon();
				String sql="select * from retailer where Medicinename=?";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1, Medicinename);
				ResultSet rs=ps.executeQuery();
				while(rs.next())	
				{
					System.out.println("byeeeeeeeeeee");
					String medicinename=rs.getString("Medicinename");
					String medicinetype=rs.getString("Medicinetype");
					int power=rs.getInt("Power");
					String tagline=rs.getString("Tagline");
					double price=rs.getDouble("Price");
					int quantity=rs.getInt("Quantity");
					String location=rs.getString("Location");
					int totalquantity=rs.getInt("TotalQuantity");
					double vat=rs.getDouble("Vat");
					double mrp=rs.getDouble("Mrp");
					String discount_range=rs.getString("Discount_range");
					double discount=rs.getDouble("discount");
					String landmark=rs.getString("Landmark");
					
					
					
					Add_Medicine_Bean ad= new Add_Medicine_Bean(medicinename, medicinetype, tagline, price, quantity, power,totalquantity,vat,mrp,discount_range,discount, location, landmark);
					ar.add(ad);
				}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
			return ar;
}
public static String getfilefromDb3(String email)
{
	String filename="";
	try{Connection con=DB.dbcon();
	if(con!=null)
	{
		System.out.println();
		String sql="select file from  customer_registration where email=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,email);
	
		ResultSet rs=ps.executeQuery();
		 while(rs.next())
			{
			 filename=rs.getString(1);
				
			}
	}
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
return filename;	
}
public static boolean mailCheck(String email) {
	boolean status=false;
			
				try {
					Connection con=DB.dbcon();

					if(con!=null)
					{
						
						String sql="select email from pathalogy_registration where email=?";
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
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return status;
	}

public static int insert(Pathalogy cb) {
	int i=0;
	try {
		Connection con=DB.dbcon();
		

		if(con!=null)
		{
		String sql="insert into pathalogy_registration(pathalogyname,Email,password,Confirmpassword,Country,Address,State,City,Pincode,Mobile,userid,file) "
				+"values(?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		
		ps.setString(1, cb.getPathalogyname());	
		ps.setString(2,cb.getEmail());
		ps.setString(3,cb.getPassword());
		ps.setString(4,cb.getConfirmpassword());
		ps.setString(5,cb.getCountry());
		ps.setString(6,cb.getAddress());
		ps.setString(7,cb.getState());
		ps.setString(8,cb.getCity());
		ps.setString(9,cb.getPincode());
		ps.setString(10,cb.getMobile());
        ps.setString(11, cb.getUserid());
		ps.setString(12,cb.getFile());
	
		 i=ps.executeUpdate();
		 System.out.println(i);
		}
	}
	
		catch (SQLException e) {
		e.printStackTrace();
	}
	
	return i;
	
	
}
public static String getfilefromDb4(String email)
{
	String filename="";
	try{Connection con=DB.dbcon();
	if(con!=null)
	{
		System.out.println();
		String sql="select file from  pathalogy_registration where email=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,email);
	
		ResultSet rs=ps.executeQuery();
		 while(rs.next())
			{
			 filename=rs.getString(1);
				System.out.println(filename);
			}
	}
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
return filename;	
}

public static int update(Pathalogy pn) {
	int i=0;
	 try {
			
			
					Connection con=DB.dbcon();
				
					if(con!=null)
					{
						
						String sql="UPDATE pathalogy_registration set Address=?, mobile=? where email=?";
						PreparedStatement ps=con.prepareStatement(sql);
						ps.setString(1, pn.getAddress());
						System.out.println("Address from DAO : " +pn.getAddress());
						ps.setString(2, pn.getMobile());
						 System.out.println("Mobile from DAO : " +pn.getMobile());
						
						ps.setString(3, pn.getEmail());
						System.out.println("Email from DAO : " +pn.getEmail());
						i=ps.executeUpdate();	
						System.out.println("i "+i);
					}
	 }
	 catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 
					
	
	return i;
	}
public static ArrayList<clinicbean> show7(String email)
{
	 	
		 ArrayList<clinicbean> ar=null;
		try {
			ar = new ArrayList<clinicbean>();

				Connection con=DB.dbcon();
				String sql="select Address,mobile,file,City from clinic where email=?";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1,email);
				ResultSet rs=ps.executeQuery();
				if(rs.next())	
				{
					
					String address=rs.getString("Address");
					System.out.println("Dao is :"+address);
					String mobile=rs.getString("Mobile");
					System.out.println("Dao is :"+mobile);
					String filename=rs.getString("file");
					System.out.println("Dao is :"+filename);
					String City=rs.getString("City");
					clinicbean bn= new clinicbean(email,City,address,mobile,filename);
					ar.add(bn);
				}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
			return ar;
}

public static int insert(Test_categorybean ab) {
	{
		int i=0;
		Connection con=null;
		con=DB.dbcon(); 
		String sql="insert into test_category(NAME_OF_TESTS,pathalogyname,TEST_DATE,EMAIL)values(?,?,?,?)";
		
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,ab.getNAME_OF_TESTS());
			ps.setString(2,ab.getPATH_NAME());
			ps.setString(3,ab.getTEST_DATE());
			ps.setString(4,ab.getEmail());
			
			 return i=ps.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return i;
				
	}
}
public static ArrayList<categoryShow_bean> show8(String em) {
	Connection con=null;
	ArrayList<categoryShow_bean> ar=new ArrayList<categoryShow_bean>();
	try {
		System.out.println("Email from DAO "+em);
		categoryShow_bean ob=null;
		con=DB.dbcon();
		String sql="Select NAME_OF_TESTS,TEST_ID from test_category where email=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, em);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
			
		{
	
			String NAME_OF_TESTS=rs.getString(1);
			int TEST_ID=rs.getInt(2);
			
		ob=new categoryShow_bean(NAME_OF_TESTS,TEST_ID);
		 ar.add(ob);
		}
		} catch (Exception e) {
			
			e.printStackTrace();
		}

		return ar;
	}

public static int insert9(subcategory_testbean ob) {
	{
		int i=0;
		Connection con=null;
		con=DB.dbcon(); 
		String sql="insert into test_subcategory(TEST_ID,TEST_SUBCATEGORY_NAME,pathalogyname,PATH_ADDRESS,EMAIL,DETAILS,SPECIMEN,METHOD,PRICE,RULES,AVAILABILITY,DISTANCE,SUBCAT_TEST_DATE)values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,ob.getTEST_ID());
			ps.setString(2,ob.getTEST_SUBCATEGORY_NAME());
			ps.setString(3,ob.getPath_name());
			ps.setString(4,ob.getPath_adress());
			ps.setString(5,ob.getPath_email());
			ps.setString(6,ob.getDETAILS());
			ps.setString(7,ob.getSPECIMEN());
			ps.setString(8,ob.getMETHOD());
			ps.setDouble(9,ob.getPRICE());
			ps.setString(10,ob.getRULES());
			ps.setString(11,ob.getAVAILABILITY());
			ps.setString(12,ob.getDISTANCE());
			ps.setString(13,ob.getSUBCAT_TEST_DATE());
			
			
			 return i=ps.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return i;
				
	}
}

public static int insert11(subcategory_testbean ob1) {
	{
		int j=0;
		Connection con=null;
		con=DB.dbcon();
		String tNm="";
		String sql2= "select * from test_category where TEST_ID=?";
		

		try {
			PreparedStatement ps2=con.prepareStatement(sql2);
			ps2.setInt(1,ob1.getTEST_ID());
			ResultSet rs = ps2.executeQuery();
			while(rs.next())
			{
				tNm= rs.getString("NAME_OF_TESTS");
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		System.out.println("TNAme from Dao: "+tNm);		
		
		
		
		String sql1="insert into search(TEST_ID,NAME_OF_TESTS,TEST_SUBCATEGORY_NAME)values(?,?,?)";
		
		try {
			PreparedStatement ps1=con.prepareStatement(sql1);
			ps1.setInt(1,ob1.getTEST_ID());
			ps1.setString(2,tNm);
			ps1.setString(3,ob1.getTEST_SUBCATEGORY_NAME());
			
			 return j=ps1.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return j;
				
	}


}

public static int update3(updateTest_bean ob) {
	int i=0;
	Connection con=null;
	con=DB.dbcon(); 
	String sql="UPDATE test_subcategory SET DETAILS=?,SPECIMEN=?,METHOD=?,PRICE=?,RULES=?,"+
			"AVAILABILITY=?,DISTANCE=? where TEST_SUBCATEGORY_NAME=?";
	
	try {
		PreparedStatement ps=con.prepareStatement(sql);
		
		ps.setString(1, ob.getDETAILS());
		ps.setString(2, ob.getSPECIMEN());
		ps.setString(3, ob.getMETHOD());
		ps.setDouble(4, ob.getPRICE());
		ps.setString(5, ob.getRULES());
		
		ps.setString(6, ob.getAVAILABILITY());
		ps.setString(7, ob.getDISTANCE());
		ps.setString(8,ob.getTEST_SUBCATEGORY_NAME());
		
		return i=ps.executeUpdate();
	} catch (SQLException e) {
		
		e.printStackTrace();
		
	}
	return i;
}

public static int delete3(deleteTest_bean ob) {
	int i=0;
	Connection con=null;
	con=DB.dbcon(); 
	String sql="DELETE * FROM test_subcategory WHERE TEST_ID=?";
	
	try {
		PreparedStatement ps=con.prepareStatement(sql);
		
		return i=ps.executeUpdate();
	} catch (Exception e) {
		
		e.printStackTrace();
	}
	
	return i;		

}

public static int insert5(Path_billBean ob) {
int i=0;
	
	Connection con=null;
	con=DB.dbcon();
	
String sql="insert into bill(pathalogyname,PATIENT_NAME,SUGGESTED_DOCTOR,PATIENT_AGE,PATIENT_GENDER,TEST_SUBCATEGORY_NAME,total_price,TestDate,Mobile,Address,pathmobile,Billdate,PatAddress,vat)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";		
			
try{
				

		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,ob.getPathalogyname());
		ps.setString(2,ob.getPATIENT_NAME());
		ps.setString(3,ob.getSUGGESTED_DOCTOR());
		ps.setString(4,ob.getPATIENT_AGE());
		ps.setString(5,ob.getPATIENT_GENDER());
		ps.setString(6,ob.getTEST_SUBCATEGORY_NAME());
		ps.setDouble(7,ob.getTotal_price());
		ps.setString(8, ob.getTestDate());
		ps.setString(9, ob.getMobile());
		ps.setString(10, ob.getAddress());
		ps.setString(11, ob.getPathmobile());
		ps.setString(12, ob.getBilldate());
		ps.setString(13, ob.getPatAddress());
		ps.setString(14, ob.getVat());
		 return i=ps.executeUpdate();
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	return i;
			
}

public static int update1(clinicbean bn1) {
	int j=0;
	 try {
			
			
					Connection con=DB.dbcon();
				
					if(con!=null)
					{
						
						String sql="UPDATE clinic set file=? where email=?";
						PreparedStatement ps=con.prepareStatement(sql);
						ps.setString(1, bn1.getEmail());
						System.out.println("Email from DAO : " +bn1.getEmail());
						ps.setString(2, bn1.getFile());
						System.out.println("File from DAO : " +bn1.getFile());
						
						j=ps.executeUpdate();					
					}
	 }
	 catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 
					
	
	return j;
	}

public static int update1(Pathalogy pn1) {
	int j=0;
	 try {
			
			
					Connection con=DB.dbcon();
				
					if(con!=null)
					{
						
						String sql="UPDATE pathalogy_registration set file=? where email=?";
						PreparedStatement ps=con.prepareStatement(sql);
						ps.setString(1, pn1.getFile());
						System.out.println("file from DAO : " +pn1.getFile());
						ps.setString(2, pn1.getEmail());
						System.out.println("Email from DAO : " +pn1.getEmail());
						j=ps.executeUpdate();		
						System.out.println("j "+j);
					}
	 }
	 catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 
					
	
	return j;
	}

public static ArrayList<viewpath_billBean> show() {
	Connection con=null;
	ArrayList<viewpath_billBean> ar=new ArrayList<viewpath_billBean>();
	try {
		
		viewpath_billBean ob=null;
		con=DB.dbcon();
		String sql="select PATIENT_NAME,SUGGESTED_DOCTOR,PATIENT_AGE,PATIENT_GENDER,TEST_SUBCATEGORY_NAME,total_price,Mobile from bill";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery(sql);
		while(rs.next())
			
		{
			
			String PATIENT_NAME=rs.getString(1);
			String SUGGESTED_DOCTOR=rs.getString(2);
			String PATIENT_AGE=rs.getString(3);
			String PATIENT_GENDER=rs.getString(4);
			String TEST_SUBCATEGORY_NAME=rs.getString(5);
			Double total_price=rs.getDouble(6);
			String mobile=rs.getString(7);
			
		ob=new viewpath_billBean(PATIENT_NAME,SUGGESTED_DOCTOR,PATIENT_AGE,PATIENT_GENDER,TEST_SUBCATEGORY_NAME,total_price,mobile);
		 ar.add(ob);
		}
		} catch (Exception e) {
			
			e.printStackTrace();
		}

		return ar;
}

public static int insert(Information in) {
	int i=0;
	 try {
			
			
					Connection con=DB.dbcon();
				
					if(con!=null)
					{
						int chk=0;
						String sql1="select * from information where Mobile=?";
						PreparedStatement ps1=con.prepareStatement(sql1);
						ps1.setString(1, in.getMobile());
						ResultSet rs= ps1.executeQuery();
						while(rs.next())
						{
							chk=1;
						}
						if(chk!=1)
						{
						String sql="insert into information(pathalogyname,PATIENT_NAME,SUGGESTED_DOCTOR,PATIENT_AGE,PATIENT_GENDER,Mobile,Test,TestDate,DeliveryDate,patAddress)"
								+"values(?,?,?,?,?,?,?,?,?,?)";
						PreparedStatement ps=con.prepareStatement(sql);
						ps.setString(1, in.getPathalogyname());
						ps.setString(2, in.getPATIENT_NAME());
						ps.setString(3, in.getSUGGESTED_DOCTOR());
						ps.setString(4, in.getPATIENT_AGE());
						 ps.setString(5, in.getPATIENT_GENDER());
						 ps.setString(6, in.getMobile());
						 ps.setString(7, in.getTest());
						 ps.setString(8, in.getTestDate());
						 ps.setString(9, in.getDeliveryDate());
						 ps.setString(10, in.getAddress());
						i=ps.executeUpdate();	
						}
						else
						{
							String sql2="UPDATE information set SUGGESTED_DOCTOR=? ,  PATIENT_AGE=? , Test=? , TestDate=? , DeliveryDate=? ,  patAddress=? where Mobile=?";
							PreparedStatement ps2= con.prepareStatement(sql2);
							ps2.setString(1, in.getSUGGESTED_DOCTOR());
							ps2.setString(2, in.getPATIENT_AGE());
							ps2.setString(3, in.getTest());
							ps2.setString(4, in.getTestDate());
							ps2.setString(5, in.getDeliveryDate());
							ps2.setString(6, in.getAddress());
							ps2.setString(7, in.getMobile());
							i=ps2.executeUpdate();	
						}
					}
	 }
	 catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 
					
	
	return i;
	}

public static int insert(Referreddoctor rr) {
	int i=0;
	 try {
			
			
					Connection con=DB.dbcon();
				
					if(con!=null)
					{
						
						String sql="insert into referred(pathalogyname,DoctorName,Registrationid,Specilization,Date)"
								+"values(?,?,?,?,?)";
						PreparedStatement ps=con.prepareStatement(sql);
						ps.setString(1, rr.getPathalogyname());
						ps.setString(2, rr.getDoctorName());
						ps.setString(3, rr.getRegistrationid());
						ps.setString(4, rr.getSpecilization());
						 ps.setString(5, rr.getDate());
						i=ps.executeUpdate();					
					}
	 }
	 catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 
					
	
	return i;
}
public static String getname(String Userid)
{
	String username="";
	try{Connection con=DB.dbcon();
	if(con!=null)
	{
		System.out.println();
		String sql="select pathalogyname from  reception where userid=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,Userid);
	
		ResultSet rs=ps.executeQuery();
		 while(rs.next())
			{
			 username=rs.getString(1);
				System.out.println("DAO from pathalogyname is :"+username);
			}
	}
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
return username;	
}
public static String getemail(String Userid)
{
	String email="";
	try{Connection con=DB.dbcon();
	if(con!=null)
	{
		System.out.println();
		String sql="select email from  reception where userid=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,Userid);
	
		ResultSet rs=ps.executeQuery();
		 while(rs.next())
			{
			 email=rs.getString(1);
				System.out.println("DAO from pathalogyname is :"+email);
			}
	}
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
return email;	
}
public static int insert(Reception_reg_bean ab) {
	
	int i=0;
			try {
				Connection con=DB.dbcon();
				
		
				if(con!=null)
				{
				String sql="insert into reception(pathalogyname,Recepname,mobile,gender,password,confirmpassword,userid,email,Address) "
						+"values(?,?,?,?,?,?,?,?,?)";
				PreparedStatement ps=con.prepareStatement(sql);
				
				ps.setString(1, ab.getPathalogyname());	
				ps.setString(2,ab.getRecepname());
				ps.setString(3,ab.getMobile());
				ps.setString(4,ab.getGender());
				ps.setString(5,ab.getPassword());
				ps.setString(6,ab.getConfirmpassword());
				ps.setString(7,ab.getUserid());
				ps.setString(8,ab.getEmail());
				ps.setString(9,ab.getAddress());
				
			
				 i=ps.executeUpdate();
				 System.out.println(i);
				}
			}
				catch (SQLException e) {
				e.printStackTrace();
			}
			
			return i;
			
	}

public static int insert(Cash_reg_bean ab) {
	
	int i=0;
			try {
				Connection con=DB.dbcon();
				
		
				if(con!=null)
				{
				String sql="insert into cash(pathalogyname,Cashname,mobile,gender,password,confirmpassword,userid,email,Address) "
						+"values(?,?,?,?,?,?,?,?,?)";
				PreparedStatement ps=con.prepareStatement(sql);
				
				ps.setString(1, ab.getPathalogyname());	
				ps.setString(2,ab.getCashname());
				ps.setString(3,ab.getMobile());
				ps.setString(4,ab.getGender());
				ps.setString(5,ab.getPassword());
				ps.setString(6,ab.getConfirmpassword());
				ps.setString(7,ab.getUserid());
				ps.setString(8,ab.getEmail());
				ps.setString(9,ab.getAddress());
				
			
				 i=ps.executeUpdate();
				 System.out.println(i);
				}
			}
				catch (SQLException e) {
				e.printStackTrace();
			}
			
			return i;
			
	}

public static int insert(Report_reg_bean ab) {
	
	int i=0;
			try {
				Connection con=DB.dbcon();
				
		
				if(con!=null)
				{
				String sql="insert into report(pathalogyname,Reportname,mobile,gender,password,confirmpassword,userid,email,Address) "
						+"values(?,?,?,?,?,?,?,?,?)";
				PreparedStatement ps=con.prepareStatement(sql);
				
				ps.setString(1, ab.getPathalogyname());	
				ps.setString(2,ab.getReportname());
				ps.setString(3,ab.getMobile());
				ps.setString(4,ab.getGender());
				ps.setString(5,ab.getPassword());
				ps.setString(6,ab.getConfirmpassword());
				ps.setString(7,ab.getUserid());
				ps.setString(8,ab.getEmail());
				ps.setString(9,ab.getAddress());
				
			
				 i=ps.executeUpdate();
				 System.out.println(i);
				}
			}
				catch (SQLException e) {
				e.printStackTrace();
			}
			
			return i;
			
	}
public static String getname1(String Userid)
{
	String username="";
	try{Connection con=DB.dbcon();
	if(con!=null)
	{
		System.out.println();
		String sql="select pathalogyname from  cash where userid=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,Userid);
	
		ResultSet rs=ps.executeQuery();
		 while(rs.next())
			{
			 username=rs.getString(1);
				System.out.println("DAO from pathalogyname is :"+username);
			}
	}
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
return username;	
}
public static String getemail1(String Userid)
{
	String email="";
	try{Connection con=DB.dbcon();
	if(con!=null)
	{
		System.out.println();
		String sql="select email from  cash where userid=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,Userid);
	
		ResultSet rs=ps.executeQuery();
		 while(rs.next())
			{
			 email=rs.getString(1);
				System.out.println("DAO from pathalogyname is :"+email);
			}
	}
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
return email;	
}
public static String getAddress(String email)
{
	String Address="";
	try{
		Connection con=DB.dbcon();
		System.out.println("Connection created");
	if(con!=null)
	{
		System.out.println("hiiiiiiiiiii");
		String sql="select Address from  pathalogy_registration where email=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,email);
	
		ResultSet rs=ps.executeQuery();
		 while(rs.next())
			{
			 Address=rs.getString(1);
				System.out.println("DAO from pathalogyaddress is :"+Address);
			}
	}
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
return Address;	
}
public static String getmobile(String email)
{
	String mobile="";
	try{Connection con=DB.dbcon();
	if(con!=null)
	{
		System.out.println();
		String sql="select mobile from  pathalogy_registration where email=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,email);
	
		ResultSet rs=ps.executeQuery();
		 while(rs.next())
			{
			 mobile=rs.getString(1);
				System.out.println("DAO from Mobile number is :"+mobile);
			}
	}
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
return mobile;	
}

public static int insert6(cashbillBean cb) {
int i=0;
	
	Connection con=null;
	con=DB.dbcon();
	
String sql="insert into bill(pathalogyname,PATIENT_NAME,SUGGESTED_DOCTOR,PATIENT_AGE,PATIENT_GENDER,TEST_SUBCATEGORY_NAME,total_price,TestDate,Mobile,Address,pathmobile,Billdate,PatAddress,vat)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";		
			
try{
				

		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,cb.getPathalogyname());
		ps.setString(2,cb.getPATIENT_NAME());
		ps.setString(3,cb.getSUGGESTED_DOCTOR());
		ps.setString(4,cb.getPATIENT_AGE());
		ps.setString(5,cb.getPATIENT_GENDER());
		ps.setString(6,cb.getTEST_SUBCATEGORY_NAME());
		ps.setDouble(7,cb.getTotal_price());
		ps.setString(8, cb.getTestDate());
		ps.setString(9, cb.getMobile());
		ps.setString(10, cb.getAddress());
		ps.setString(11, cb.getPathmobile());
		ps.setString(12, cb.getBilldate());
		ps.setString(13, cb.getPatAddress());
		ps.setString(14, cb.getVat());
		 return i=ps.executeUpdate();
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	return i;
			
}
public static String getmanagementname1(String Userid)
{
	String username="";
	try{
		Connection con=DB.dbcon();
	if(con!=null)
	{
		System.out.println();
		String sql="select pathalogyname from  report where userid=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,Userid);
	
		ResultSet rs=ps.executeQuery();
		 while(rs.next())
			{
			 username=rs.getString(1);
				System.out.println("DAO from pathalogyname is :"+username);
			}
	}
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
return username;	
}
public static String getmanagementemail(String Userid)
{
	String email="";
	try{Connection con=DB.dbcon();
	if(con!=null)
	{
		System.out.println();
		String sql="select email from  report where userid=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,Userid);
	
		ResultSet rs=ps.executeQuery();
		 while(rs.next())
			{
			 email=rs.getString(1);
				System.out.println("DAO from email is :"+email);
			}
	}
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
return email;	
}
public static String getmanagementAddress(String email)
{
	String Address="";
	try{
		Connection con=DB.dbcon();
		System.out.println("Connection created");
	if(con!=null)
	{
		System.out.println("hiiiiiiiiiii");
		String sql="select Address from  pathalogy_registration where email=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,email);
	
		ResultSet rs=ps.executeQuery();
		 while(rs.next())
			{
			 Address=rs.getString(1);
				System.out.println("DAO from pathalogyaddress is :"+Address);
			}
	}
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
return Address;	
}
public static String getmanagementmobile(String email)
{
	String mobile="";
	try{Connection con=DB.dbcon();
	if(con!=null)
	{
		System.out.println("connection"+mobile);
		String sql="select mobile from  pathalogy_registration where email=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,email);
	
		ResultSet rs=ps.executeQuery();
		 while(rs.next())
			{
			 mobile=rs.getString(1);
				System.out.println("DAO from Mobile number is :"+mobile);
			}
	}
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
return mobile;	
}
public static String getuserid(String email)
{
	String userid="";
	try{Connection con=DB.dbcon();
	if(con!=null)
	{
		System.out.println();
		String sql="select userid from  reception where email=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,email);
	
		ResultSet rs=ps.executeQuery();
		 while(rs.next())
			{
			 userid=rs.getString(1);
				
			}
	}
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
return userid;	
}

public static int update(Test_categorybean ab,String TESTPREV, String EMAIL) {
	int i=0;
	try{
	Connection con=null;
	con=DB.dbcon(); 
	String sql="UPDATE test_category set NAME_OF_TESTS=? where NAME_OF_TESTS=? AND email=?";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1, ab.getNAME_OF_TESTS());
	ps.setString(2, TESTPREV);
	ps.setString(3, EMAIL);
	i=ps.executeUpdate();					

}
catch (Exception e) {
// TODO Auto-generated catch block
e.printStackTrace();
}



return i;
}
}