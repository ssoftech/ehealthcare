package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;


@WebListener
public class DBAccess implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/", "root", "root");
		
			String sql="create database if not exists medical";
			Statement st=con.createStatement();
			st.executeUpdate(sql);
			System.out.println("database created");
			
			con=DB.dbcon();
			 String sql1="CREATE TABLE if not exists clinic(sl_no int auto_increment,"
			 		+ "clinicname varchar(45) not null,email varchar(45) not null unique,"
			 		+ "password varchar(45) not null,Confirmpassword varchar(45) not null,Address varchar(45) not null,Country varchar(45) not null,"
			 		+ "State varchar(45) not null,City varchar(45) not null,"
			 		+ "Pincode varchar(45) not null unique,"
			 		+ "mobile varchar(45) not null,userid varchar(45) null,file varchar(200)  null, primary key(sl_no))";
				 st=con.createStatement();
				st.executeUpdate(sql1);
				System.out.println("table created");
				String sql2="CREATE TABLE if not exists doctor_entry(sl_no int auto_increment,"
						+"clinicname varchar(45) not null,doctorname varchar(45) not null,Registrationid varchar(45) not null unique,specilization varchar(45) not null,"
						+" Date varchar(45) not null,Fromtime varchar(45) not null,Totime varchar(45) not null,primary key(sl_no))";
				st=con.createStatement();
				st.executeUpdate(sql2);
				System.out.println("scheduler created");
				String sql3="CREATE TABLE if not exists Patients_Appointment(sl_no int auto_increment,clinicname varchar(45) not null,"
						+"PatientName varchar(45) not null,age varchar(45) not null,DoctorName varchar(45) not null,"
						+"Date varchar(45) not null, Fromtime varchar(45) not null, DISEASE varchar(45) not null,"
						+"MobileNo varchar(45) not null unique,Address varchar(45) not null,Registrationid varchar(45) not null unique ,Sex varchar(45) not null,Specilization varchar(45) not null,primary key(sl_no))";
				st=con.createStatement();
				st.executeUpdate(sql3);
				System.out.println("Patient_Appointment created");
				String sql4="CREATE TABLE if not exists newspaper(sl_no int auto_increment,"
						+"Name varchar(45) not null,area varchar(200) not null,primary key(sl_no))";
				st=con.createStatement();
				st.executeUpdate(sql4);
				System.out.println("newspaper created");
						   
			
								
								String sql10="CREATE TABLE if not exists Customer_registration(sl_no int auto_increment,"
								 		+ "firstname varchar(45) not null,lastname varchar(45) not null,"
										+"email varchar(45) not null unique,Gender varchar(45) not null,"
								 		+ "password varchar(45) not null,Confirmpassword varchar(45) not null,"
										+"Country varchar(45) not null,State varchar(45) not null,City varchar(45) not null,"
								 		+ "Address varchar(45) not null,Zipcode varchar(45) not null,"
								 		+ "mobile varchar(45) not null unique,file varchar(200)  null, primary key(sl_no))";
										
								st.execute(sql10);
								System.out.println("Customer registration TABLE created");
								
								
								
								String sql12="CREATE TABLE if not exists MultipleAddress(sl_no int auto_increment,"
										+"clinicname varchar(45) not null,Address varchar(45) not null,mobile varchar(45) not null,file varchar(200)  null, primary key(sl_no))";
								st.execute(sql12);
								System.out.println("MultipleAddress table created");
								String sql13="create table if not exists clinic_queue(sl_no int auto_increment,"
										+"PatientName varchar(45) not null,age varchar(45) not null,DISEASE varchar(1000) not null,"
														+"MobileNo varchar(45) not null unique,"
														+"Registrationid varchar(60) not null unique,Sex varchar(45) not null,Date varchar(45) not null,DoctorName varchar(45) not null,Confirmation varchar(45) not null,email varchar(100) not null, primary key(sl_no))";
												st.execute(sql13);
												System.out.println("clinic_queue TABLE created");
												
												String sql14="CREATE TABLE if not exists medical.retailer(id int not null auto_increment,"
												 		+ " Retailername varchar(45) not null, Medicinename varchar(45) not null, Medicinetype varchar(45) not null, "
												 		+ "Tagline varchar(45) not null, Price double not null," 
												 		+ "quantity int not null, Power int not null, totalquantity int not null,"
												 		+"Vat double not null , Mrp double not null,"
												 		+"Discount_range varchar(45) not null, Discount double not null,"
												 		+"Manufacture_date varchar(45) not null, Expiry_date varchar(45) not null, Manufacturer_name varchar(45) not null,"
												 		+ "Location varchar(45) not null, Landmark varchar(45) not null,"
												 		+"file varchar(200) null,Retailer_id varchar(45) not null,Date varchar(45) not null, primary key(id))";
												 		st=con.createStatement();
													st.executeUpdate(sql14);
													System.out.println("retailer table created");
													
													String sql15="CREATE TABLE if not exists medical.retailer_detail (id int not null auto_increment,"
													 		+ "Retailername varchar(45) not null,Email varchar(45) not null unique,"
													 		+ "Address varchar(45) not null, country varchar(45) not null," 
													 		+ "State varchar(45) not null,City varchar(45) not null,"
													 		+ "Pincode varchar(45) not null,Retailer_id varchar(45) null,password varchar(45) not null, confirmpwd varchar(45) not null,Mobile varchar(45) not null,Delivary_range varchar(45) not null, Minimum_Price_for_delivary double not null,"
													 		+"file varchar(200) null, primary key(id))";
													 		st=con.createStatement();
														st.executeUpdate(sql15);
														System.out.println("retailer_detail table created");
														
														
														String sql16="CREATE TABLE if not exists medical.low_stock_product(id int not null auto_increment,"+"Medicinename varchar(45) not null, quantity int not null,Price double not null ,primary key(id))";
														st.executeUpdate(sql16);
														System.out.println("low_stock_product table created");
														String sql17="CREATE TABLE IF NOT EXISTS TEST_CATEGORY (TEST_ID INT(40) NOT NULL AUTO_INCREMENT PRIMARY KEY,"+
															    "NAME_OF_TESTS VARCHAR(40) NOT NULL,"+
															    "pathalogyname VARCHAR(40) NOT NULL,"+
															    "TEST_DATE VARCHAR(45) NOT NULL,EMAIL varchar(100) not null)";
															   
																
																st.execute(sql17);
																System.out.println("TEST_CATEGORY table created");
																String sql5="CREATE TABLE IF NOT EXISTS TEST_SUBCATEGORY (SUBCAT_SERIAL_NO INT(40)  AUTO_INCREMENT PRIMARY KEY,"
																	    +"TEST_ID INT(40)  NOT NULL,"+
																	    "TEST_SUBCATEGORY_NAME VARCHAR(40) NOT NULL,"+
																	    "pathalogyname VARCHAR(40) NOT NULL,"+
																	    "PATH_ADDRESS VARCHAR(40) NOT NULL,"+
																	    "EMAIL VARCHAR(40) NOT NULL,"+
																	    "DETAILS VARCHAR(45) NOT NULL,"+
																	    "SPECIMEN VARCHAR(45) NOT NULL,"+
																	    "METHOD VARCHAR(45) NOT NULL,"+
																	    "PRICE DOUBLE NOT NULL,"+
																	    "RULES VARCHAR(45) NOT NULL,"+
																	    "AVAILABILITY VARCHAR(45) NOT NULL,"+
																	    "DISTANCE VARCHAR(45) NOT NULL,"+
																	    "SUBCAT_TEST_DATE VARCHAR(45) NOT NULL)";
																st=con.createStatement();
																st.execute(sql5);
																		System.out.println("TEST_SUBCATEGORY table created");	
																		String sql6="CREATE TABLE if not exists pathalogy_registration(PATH_REGISTRATION_ID int(9) NOT NULL AUTO_INCREMENT PRIMARY KEY,"
																		 		+ "pathalogyname varchar(45) not null,email varchar(45) not null unique,"
																		 		+ "password varchar(45) not null,Confirmpassword varchar(45) not null,Address varchar(45) not null,Country varchar(45) not null,"
																		 		+ "State varchar(45) not null,City varchar(45) not null,"
																		 		+ "Pincode varchar(45) not null,"
																		 		+ "mobile varchar(45) not null,userid varchar(45) null,file varchar(200)  null)";
																			 st=con.createStatement();
																				
																		st.execute(sql6);
																		System.out.println("PATH_REGISTRATION TABLE created");
																	String sql7="CREATE TABLE IF NOT EXISTS SEARCH "+
																				"(SERIAL_NO INT(40) AUTO_INCREMENT PRIMARY KEY,"+
																				"TEST_ID  INT(40)NOT NULL,"+
																				"NAME_OF_TESTS VARCHAR(40) NOT NULL,"+
																				"TEST_SUBCATEGORY_NAME VARCHAR(40) NOT NULL)";
																				
																		st.execute(sql7);
																		System.out.println("SEARCH TABLE created");
															String sql8="CREATE TABLE IF NOT EXISTS CART "+
																				"(SERIAL_NO INT(40) AUTO_INCREMENT PRIMARY KEY,"+
																				"TEST_ID  INT(40)NOT NULL,"+
																				"PATH_REGISTRATION_ID INT(40)NOT NULL,"+
																				"NAME_OF_TESTS  VARCHAR(40)NOT NULL,"+
																				"TEST_SUBCATEGORY_NAME VARCHAR(40) NOT NULL,"+
																				"QUANTITY VARCHAR(40) NOT NULL,"+
																				"PRICE DOUBLE NOT NULL,"+
																				"SHIPPING_CHARGE DOUBLE NOT NULL,"+
																				"SUB_TOTAL DOUBLE NOT NULL,"+
																				"TOTAL  DOUBLE NOT NULL)";
																		
																		st.execute(sql8);
																		System.out.println("CART TABLE created");
																								
																	
																		
																		String sql9="CREATE TABLE IF NOT EXISTS BILL "+
																				"(SERIAL_NO INT(40) AUTO_INCREMENT PRIMARY KEY,"+
																				"pathalogyname  VARCHAR(40)NOT NULL,"+
																				"PATIENT_NAME VARCHAR(40)NOT NULL,"+
																				"SUGGESTED_DOCTOR VARCHAR(40) NULL,"+
																				"PATIENT_AGE  VARCHAR(40)NOT NULL,"+
																				"PATIENT_GENDER VARCHAR(40) NOT NULL,"+
																				"TEST_SUBCATEGORY_NAME VARCHAR(200) NOT NULL,"+
																				"total_price DOUBLE NOT NULL,TestDate varchar(45) not null,Mobile varchar(45) not null unique,Address varchar(45) not null,pathmobile varchar(45) not null,Billdate varchar(45) not null,PatAddress varchar(45) not null,vat varchar(45) not null)";
																		
																		st.execute(sql9);
																		System.out.println("BILL TABLE created");
																		
																				
																		String sql11="CREATE TABLE IF NOT EXISTS SEARCH "+
																				"(SERIAL_NO INT(40) AUTO_INCREMENT PRIMARY KEY,"+
																				"TEST_ID  INT(40)NOT NULL,"+
																				"NAME_OF_TESTS VARCHAR(40) NOT NULL,"+
																				"TEST_SUBCATEGORY_NAME VARCHAR(40) NOT NULL)";
																				
																		st.execute(sql11);
																		System.out.println("SEARCH TABLE created");
																		String sql19="Create table if not exists information(sl_no int auto_increment,"
																				+"pathalogyname  varchar(45) not null,PATIENT_NAME varchar(45) not null,SUGGESTED_DOCTOR varchar(45) not null,"
																				+"PATIENT_AGE varchar(45) not null,PATIENT_GENDER varchar(45) not null,Mobile varchar(45) not null unique,"
																				+"Test varchar(45) not null,TestDate varchar(45) not null,DeliveryDate varchar(45)not null,patAddress varchar(45) not null,primary key(sl_no))";
																		st.execute(sql19);
																		System.out.println("information table TABLE created");
																		String sql20="create table if not exists referred(sl_no int auto_increment,"
																				+"pathalogyname  varchar(45) not null,DoctorName varchar(45) not null,Registrationid varchar(45) not null unique,"
																				+"Specilization varchar(45) not null,Date varchar(45) not null,primary key(sl_no))";
																		st.execute(sql20);
																		System.out.println("Referred table created");
																		
																		String sql21="create table if not exists reception(sl_no int auto_increment,"
																				+"pathalogyname  varchar(45) not null,Recepname varchar(45) not null,mobile varchar(45) not null unique,gender varchar(45) not null,"
																				+"password varchar(45) not null,confirmpassword varchar(45) not null,userid varchar(45) not null unique,email varchar(45) not null,"
																				+"Address varchar(45) not null,primary key(sl_no))";
																		st=con.createStatement();
																		st.executeUpdate(sql21);
																		System.out.println("Reception table created");
																		
																		String sql22="create table if not exists reception(sl_no int auto_increment,"
																				+"pathalogyname  varchar(45) not null,Recepname varchar(45) not null,mobile varchar(45) not null,"
																				+"gender varchar(45) not null,password varchar(45) not null,confirmpassword varchar(45) not null,userid varchar(45) not null unique,email varchar(45) not null,Address varchar(45) not null,primary key(sl_no))";
																		st.execute(sql22);
																		System.out.println("reception table created");
																		String sql23="create table if not exists report(sl_no int auto_increment,"
																				+"pathalogyname  varchar(45) not null,Reportname varchar(45) not null,mobile varchar(45) not null,"
																				+"gender varchar(45) not null,password varchar(45) not null,confirmpassword varchar(45) not null,userid varchar(45) not null unique,email varchar(45) not null,Address varchar(45) not null,primary key(sl_no))";
																		st.execute(sql23);
																		System.out.println("Report table created");
																		String sql24="create table if not exists cash(sl_no int auto_increment,"
																				+"pathalogyname  varchar(45) not null,Cashname varchar(45) not null,mobile varchar(45) not null,"
																				+"gender varchar(45) not null,password varchar(45) not null,confirmpassword varchar(45) not null,userid varchar(45) not null unique,email varchar(45) not null,Address varchar(45) not null,primary key(sl_no))";
																		st.execute(sql24);
																		System.out.println("cash table created");
																				
		} catch (Exception e) {
			e.printStackTrace();
		}
		/*Doctor in use*/
		
		 String url="jdbc:mysql://localhost/";
			String url1="jdbc:mysql://localhost/medical";
		 try {
			 
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection con=DriverManager.getConnection(url,"root","root");
				String sql="create database if not exists medical";
				 con=DriverManager.getConnection(url,"root","root");
					String sql2="create database if not exists medical";
					 con=DriverManager.getConnection(url,"root","root");
						String sql3="create database if not exists medical";
				Statement st=con.createStatement();
				st.executeUpdate(sql);
				Statement st1=con.createStatement();
				st1.executeUpdate(sql2);
				Statement st2=con.createStatement();
				st2.executeUpdate(sql3);
				//System.out.println("data base created");
				 
				 try {
					con=DriverManager.getConnection(url1,"root","root");
					
					String sql1="CREATE TABLE if not exists Doctor_reg(id varchar(45) null,"
				 		+ "Reg_ID varchar(100) not null,fname varchar(45) not null,lname varchar(45) not null,dob varchar(45) not null,email varchar(100) not null unique, password varchar(45) not null, country varchar(45) not null,state varchar(45) not null,"
				 		+ "address varchar(45) not null,gender varchar(45) not null,pincode varchar(20) not null,"
				 		+ "city varchar(45) not null,mobileno varchar(45) not null,"
				 		+ "Experience varchar(45) not null,Specilisation varchar(100) not null, Image varchar(100) null,degree varchar(45) not null)";
					
						 st=con.createStatement();
						st.executeUpdate(sql1);
						System.out.println("table created");
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				 
				 
			
				 try {
					con=DriverManager.getConnection(url1,"root","root");
					
					
					String sql11="CREATE TABLE if not exists Doctor_key(id int not null auto_increment,"
				 		+ "Dose varchar(1000) not null, primary key(id))";
					
						 st2=con.createStatement();
						st2.executeUpdate(sql11);
						System.out.println("table created");
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				 
				 
				 
				 try {
						con=DriverManager.getConnection(url1,"root","root");
						
						
						String sql11="CREATE TABLE if not exists Doctor_direction(id int not null auto_increment,"
					 		+ "Direction varchar(1000) not null, primary key(id))";
						
							 st2=con.createStatement();
							st2.executeUpdate(sql11);
							System.out.println("table created");
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				 
				 try {
						con=DriverManager.getConnection(url1,"root","root");
						
						
						String sql11="CREATE TABLE if not exists leave_comment(id int not null auto_increment,"
					 		+ "Name varchar(1000) null,Email varchar(1000) null,Phone varchar(1000) null,Message varchar(1000) null,datetime varchar(1000) null,BlogName varchar(1000) null, primary key(id))";
						
							 st2=con.createStatement();
							st2.executeUpdate(sql11);
							System.out.println("table created");
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				 
				 try {
					con=DriverManager.getConnection(url1,"root","root");
					
					String sql11="CREATE TABLE if not exists Size(id int not null auto_increment,"
				 		+ "Header varchar(100) null,Footer varchar(100) null,Print varchar(100) null,email varchar(500) not null, primary key(id))";
					
						 st2=con.createStatement();
						st2.executeUpdate(sql11);
						System.out.println("table created");
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				 
				 try {
						con=DriverManager.getConnection(url1,"root","root");
						
						String sql11="CREATE TABLE if not exists panel(sl_no int not null auto_increment,"
					 		+ "message text not null ,name varchar(100) not null,category varchar(100) not null,"
							+"	datetime varchar(1000) not null,email varchar(1000) not null,file varchar(1000) null,like_blog int(255) null, primary key(sl_no))";
						
							 st2=con.createStatement();
							st2.executeUpdate(sql11);
							System.out.println("table created");
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				 
				 try {
						con=DriverManager.getConnection(url1,"root","root");
						
						String sql11="CREATE TABLE if not exists emailadd(id int not null auto_increment,"
					 		+ "email varchar(9000) null,emailfrom varchar(500) null, primary key(id))";
						
							 st2=con.createStatement();
							st2.executeUpdate(sql11);
							System.out.println("table created");
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				 
				 try {
						con=DriverManager.getConnection(url1,"root","root");
						
						String sql11="CREATE TABLE if not exists like_email(id int not null auto_increment,"
					 		+ "name varchar(1000) not null,email varchar(500) not null,like_flag varchar(500) not null, primary key(id))";
						
							 st2=con.createStatement();
							st2.executeUpdate(sql11);
							System.out.println("table created");
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				 
				 
				 try {
						con=DriverManager.getConnection(url1,"root","root");
						
						String sql11="CREATE TABLE if not exists Doctor_Scheduler(id int not null auto_increment,"
								     +"date varchar(45) not null,fromTime varchar(45) not null,toTime varchar(45) not null,"
								     +"text varchar(300) not null ,docdetails varchar(500) not null,docemail varchar(200) not null, primary key(id))";
						
							 st1=con.createStatement();
							st1.executeUpdate(sql11);
							System.out.println("table created scheduler");
							
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}
}
   
