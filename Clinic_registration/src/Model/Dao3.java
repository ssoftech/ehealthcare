package Model;

import java.io.InputStream;
import java.sql.Array;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.mail.Session;
import javax.servlet.http.HttpSession;
import javax.xml.bind.ParseConversionEvent;









import bean.Doctor_reg;
import bean.Leave_Commentbean;
import bean.Doc_LogBean;
import bean.Panelbean;
import bean.S;
import bean.Scheduler_Bean;
import bean.SizeBean;
import db.DB;

public class Dao3 {
	

	
	
	public static String Select(Doc_LogBean lb) {
		String passChk=null;
		String Email= lb.getEmail();
		String Doc_Id= lb.getDocID();
		try {
			Connection con=DB.dba();
			
			if(con!=null)
			{
				String sql = "select password from doctor_reg where email=? AND id=?";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1, Email);
				ps.setString(2, Doc_Id);
				ResultSet rs=ps.executeQuery();
				
				if(rs.next())
				{
					passChk=rs.getString(1);
					System.out.println("Password From Database "+passChk);
				}
			}
		
	}
	catch(Exception e)
		{
		
		}
		return passChk;
		}
	
	
	public static int insertComment(Leave_Commentbean lc) {
		int i=0;
		
				try {
					Connection con=DB.dba();
					
					i = 0;
					if(con!=null)
					{
					String sql="insert into leave_comment(Name,Email,Phone,Message,datetime,BlogName) "
							+"values(?,?,?,?,?,?)";
					PreparedStatement ps=con.prepareStatement(sql);
					ps.setString(1,lc.getName());
					ps.setString(2,lc.getEmail());
					ps.setString(3,lc.getPhone());
					ps.setString(4,lc.getMessage());
					ps.setString(5,lc.getDatetime());
					ps.setString(6,lc.getBlogName());
					
					i=ps.executeUpdate();
					}
				}
					catch (SQLException e) {
					e.printStackTrace();
				}
				
				return i;
				
	}
	
	public static int insert(Doctor_reg bn) {
		int i=0;

		
		try {
			Connection con=DB.dba();
			i = 0;
			if(con!=null)
			{
			String sql="insert into doctor_reg(id,Reg_ID, fname, lname,  dob, email, password, country, state,  address,gender, pincode, city, mobileno,Experience,Specilisation,Image,degree)"
					+"values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"; 
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, bn.getId());
			System.out.println("DAO3 From :"+bn.getId());
			ps.setString(2, bn.getRid());
			ps.setString(3, bn.getFname());
			ps.setString(4, bn.getLname());
			ps.setString(5, bn.getDOB());
			ps.setString(6, bn.getEmail());
			ps.setString(7,bn.getPassword());
			ps.setString(8, bn.getCountry());	
			ps.setString(9, bn.getState());
			ps.setString(10, bn.getAddress());
			ps.setString(11, bn.getGender());
			ps.setString(12, bn.getPincode());
			ps.setString(13, bn.getCity());
			ps.setString(14, bn.getMobileno());
			ps.setString(15, bn.getRexp());
			ps.setString(16, bn.getRspc());
			ps.setString(17, bn.getImage());
			ps.setString(18, bn.getRdeg());
			i=ps.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	 }
	
	public static int scheduler(Scheduler_Bean sb, String email) {
		int i=0;
		
		
		try {
			Connection con=DB.dba();
			i = 0;
			if(con!=null)
			{
			String sql="insert into doctor_scheduler(date, fromTime,  toTime, text,docdetails,docemail)"
					+"values(?,?,?,?,?,?)"; 
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, sb.getDate());
			ps.setString(2, sb.getFrom());
			ps.setString(3, sb.getTo());
			ps.setString(4, sb.getDescription());
			ps.setString(5, sb.getDocDetails());
			ps.setString(6, email);
			i=ps.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	 }
	
	
	
	public static int sizedao(SizeBean sb,String Email) {
		int i=0;
		Boolean bb = false;
		
		try {
			Connection con=DB.dba();
			i = 0;
			if(con!=null)
				
			{
				String check="select * from size where email=?";
				PreparedStatement ps2=con.prepareStatement(check);
				ps2.setString(1, Email);
				ResultSet rs2= ps2.executeQuery();
				while(rs2.next())
				{
					bb=true;
				}
				if(bb==false)
				{
				
			String sql="insert into size(Header, Footer,  Print,email)"
					+"values(?,?,?,?)"; 
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, sb.getHeader());
			ps.setString(2, sb.getFooter());

			ps.setString(3, sb.getPrint());
			ps.setString(4,Email);
			

			i=ps.executeUpdate();
			}
				else
				{
					String sql="update size set Header=?,Footer=?,Print=? where email=? "; 
					PreparedStatement ps=con.prepareStatement(sql);
					ps.setString(1, sb.getHeader());
					ps.setString(2, sb.getFooter());
					ps.setString(3, sb.getPrint());
					ps.setString(4, Email);
					i=ps.executeUpdate();
					
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	 }
	
	
	
	public static int Queue(String queue) {
		int i=0;

		
		try {
			Connection con=DB.dba();
			i = 0;
			if(con!=null)
			{
			String sql="update clinic_queue set Confirmation=? where ClinicPh=? and Registrationid=? "; 
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, queue);
			ps.setString(2, "03325622562");
			ps.setString(3, "6789054321");
			i=ps.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	 }
	
	public static int schedulercheck(Scheduler_Bean sb,String email) {
		int i = 0;

		
		try {
			Connection con=DB.dba();
			
			if(con!=null)
			{
			String sql="select * from doctor_scheduler where date=? AND  ?>=fromTime AND  ?<=toTime AND docemail=? "; 
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, sb.getDate());
			ps.setString(2, sb.getFrom());
			ps.setString(3, sb.getTo());
			ps.setString(4, email);
			ResultSet rs =ps.executeQuery();
			if(rs.next())
			{
				i++;
			}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	 }
	
	public static int schedulerUpdate(Scheduler_Bean sb,String email,int id) {
		int i=0;

		
		
	
		try {
			int S_id = 0;
			Connection con=DB.dba();
			i = 0;
			if(con!=null)
			{
		
			/*	String sql1="select id from doctor_scheduler WHERE docdetails=?"; 
				PreparedStatement ps1=con.prepareStatement(sql1);
				ps1.setString(1, sb.getDbdocdetails());
				ResultSet rs =ps1.executeQuery();
				while(rs.next())
				{
					S_id=Integer.parseInt(rs.getString("id"));
				}*/
			System.out.println("S_id is : "+id);
			String sql="UPDATE doctor_scheduler SET text=?,date=?,fromTime=?,toTime=?,docdetails=? WHERE id=? "; 
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, sb.getDescription());
			ps.setString(2, sb.getDate());
			ps.setString(3, sb.getFrom());
			ps.setString(4, sb.getTo());
			ps.setString(5, sb.getDocDetails());
			ps.setInt(6, id);
			
			i=ps.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	 }
	
	public static int schedulerDelete(Scheduler_Bean sb) {
		int i=0;

		
		try {
			int S_id = 0;
			Connection con=DB.dba();
			i = 0;
			if(con!=null)
			{
				String sql1="select id from doctor_scheduler WHERE docdetails=?"; 
				PreparedStatement ps1=con.prepareStatement(sql1);
				ps1.setString(1, sb.getDbdocdetails());
				ResultSet rs =ps1.executeQuery();
				while(rs.next())
				{
					S_id=Integer.parseInt(rs.getString("id"));
				}
			String sql="DELETE FROM doctor_scheduler WHERE docdetails=?"; 
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, sb.getDocDetails());
			
			
			i=ps.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	 }
	
	
	
	public static boolean emailCheck(String email) {
boolean status=false;
		
			try {
				Connection con=DB.dba();

				if(con!=null)
				{
					
					String sql="select email from doctor_reg where email=?";
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
	
	public static int rowcount()
	{
		Connection con=null;
		int count=0;


		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medical","root","root");

			if(con!=null)
			{
				String sql = "select count(id) from events";
				PreparedStatement ps=con.prepareStatement(sql);
				ResultSet rs=ps.executeQuery();
				
				if(rs.next())
				{
					count=rs.getInt(1);
					System.out.println("Count is"+count);
					
				
				  
				  
				 }
			}
		}
		catch(Exception e)
		{

		}
		
		return count;
	}
	
	public   static int[] s()
	{
		Connection con=null;
		int str[]=new int[2];
	    int i=0;


		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medical","root","root");
		} catch (Exception e) {
			e.printStackTrace();
		}

		try {
			
			
			if(con!=null)
			{
				String sql = "select id from events";
				PreparedStatement ps=con.prepareStatement(sql);
				ResultSet rs=ps.executeQuery();
				
				while(rs.next())
				{
					System.out.println("ID : "+rs.getString(1));
					str[i]=rs.getInt(1);
					i++;
				  //str= rs.getString(1);
				 // S ob=new S(str);
				  
				  
				 }
				
			}
			}
		catch(Exception e)
		{

		}
		
		return str;
		
		
	}
	public static String s1()
	{
		Connection con=null;
		String str="";


		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medical","root","root");
		} catch (Exception e) {
			e.printStackTrace();
		}

		try {
			
			
			if(con!=null)
			{
				String sql = "select * from events";
				PreparedStatement ps=con.prepareStatement(sql);
				
				ResultSet rs=ps.executeQuery();
				
			
				while(rs.next())
				{
					System.out.println("FromDate : "+rs.getString(2));
										
				  str= rs.getString(2);
				  
				  
				 }
				
			}
			}
		catch(Exception e)
		{

		}
		
		return str;
		
		
	}
	public static String s2()
	{
		Connection con=null;
		String str="";


		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medical","root","root");
		} catch (Exception e) {
			e.printStackTrace();
		}

		try {
			
			
			if(con!=null)
			{
				String sql = "select * from events";
				PreparedStatement ps=con.prepareStatement(sql);
				ResultSet rs=ps.executeQuery();
				
			
				while(rs.next())
				{
					System.out.println("ToDate : "+rs.getString(3));
					
				  str= rs.getString(3);
				  
				  
				 }
				
			}
			}
		catch(Exception e)
		{

		}
		
		return str;
		
		
	}
	public static String[] s3()
	{
		Connection con=null;
		String[] str=new String[3];
		int i=0;
		

		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medical","root","root");
		} catch (Exception e) {
			e.printStackTrace();
		}

		try {
			
			
			if(con!=null)
			{
				String sql = "select * from events";
				PreparedStatement ps=con.prepareStatement(sql);
				ResultSet rs=ps.executeQuery();
				
				
				while(rs.next())
				{
					System.out.println("Event : "+rs.getString(4));
					
				  str[i]= rs.getString(4);
				  
				  i++;
				
				}
			}
			}
		catch(Exception e)
		{

		}
		
		return str;
		
		
	}
	public static int Bloginsert(Panelbean pb) {
	int i=0;

	try {
		Connection con=DB.dba();
		
		i = 0;
		int k=0;
		if(con!=null)
		{
		String sql="insert into panel(message,name,category,datetime,email,file,like_blog) "
				+"values(?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,pb.getMessage());
		ps.setString(2,pb.getName());
		ps.setString(3,pb.getCategory());
		ps.setString(4,pb.getDatetime());
		ps.setString(5,pb.getEmail());
		ps.setString(6,pb.getFile());
		ps.setInt(7,k);
		
		i=ps.executeUpdate();
		}
	}
		catch (SQLException e) {
		e.printStackTrace();
	}
	
	return i;
	
}
	
	public static int emailSave(String to,String to1,String to2,String email) {
	int i=0;
	String[] spt=to.split(",");
	String[] spt1=to1.split(",");
	String[] spt2=to2.split(",");
	String[] Totalspt =null;
	int k=0;
	int lng=0;
	if(!spt1.equals(""))
	{
	lng= spt.length + spt1.length;
	}
	if(!spt1.equals("") && !spt2.equals(""))
	{
		lng= spt.length + spt1.length+spt2.length;	
	}
	
	 Totalspt = new String[lng];
	for(int p=0;p<spt.length;p++)
	{
	
		 System.out.println("Length is spt1: "+spt.length);
			
		Totalspt[k] = spt[p];

		 System.out.println("Email : Totalspt["+k+"]  And email: "+spt[p] );
		System.out.println("To value: " +Totalspt[k]);
		k++;
		
	
	}

	for(int p=0;p<spt1.length;p++)
	{
		if(!spt1[p].equals("") )
		{
		
			
			System.out.println("Length1 is spt1: "+spt1.length);
			Totalspt[k] = spt1[p];

			 System.out.println("Email1 : Totalspt["+k+"]  And email: "+spt1[p] );
			System.out.println("To1 value: " +Totalspt[k]);
			k++;
		
		
			
		
		
	}
	}
	
	for(int p=0;p<spt2.length;p++)
	{
		if(!spt2[p].equals("") )
		{
		
		
			
			System.out.println("Length2 is: "+spt2.length);
		Totalspt[k] = spt2[p];

		 System.out.println("Email2 : Totalspt["+k+"]  And email: "+spt2[p] );
		System.out.println("To2 value: " +Totalspt[k]);
		k++;
		
	}
	}
	System.out.println("Value of K is : "+k);
	for(int t=0;t<Totalspt.length -1;t++)
	{
	
		{
		System.out.println("totalspt Show email is is : "+Totalspt[t]);
		}
	
	}
	
	try {
		Connection con=DB.dba();
		
		i = 0;
		if(con!=null)
		{
			int j=0;
			
				
				
		/*		int l=0;
				String[] cc=new String[l];

				String sql11="select count(*) from emailadd ";
				PreparedStatement ps11=con.prepareStatement(sql11);
				
				ResultSet rs11=ps11.executeQuery();
				while(rs11.next()){
					l=rs11.getInt(1);
				}
				*/
			int l;
			int v;
			for(l=0;l<Totalspt.length -1;l++)
			{
				System.out.println("Total email for insert: "+Totalspt[l]);
				Boolean chk=false;
				String sql1="select * from emailadd where emailfrom=? AND email=?";
				PreparedStatement ps1=con.prepareStatement(sql1);
				ps1.setString(1, email);
				ps1.setString(2, Totalspt[l]);
				System.out.println("Email :" +Totalspt[l]);
				ResultSet rs1=ps1.executeQuery();
			
				while(rs1.next()){
					chk=true;
					v=l;
					j++;
					
				}
			
				System.out.println("Chk is: "+chk);
			if(chk!=true )
			{
		String sql="insert into emailadd(email,emailfrom) "
				+"values(?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,Totalspt[l]);
		ps.setString(2,email);
		
		
			i=ps.executeUpdate();
			}
		
	
		
		
			}
				
				}
	
	}
		catch (SQLException e) {
		e.printStackTrace();
	}
	
	return i;
	
}
	public static String getfilefromDB(String Name){	
		String filename="";
		try {
		/*	System.out.println("Name from P_DAO :" + Name);*/
			Connection con=DB.dba();
			if(con!=null)
			{
		String sql1="select file from panel where email=?";
		PreparedStatement ps1=con.prepareStatement(sql1);
		ps1.setString(1,Name);
		ResultSet rs1=ps1.executeQuery();
		while(rs1.next()){
		filename=rs1.getString(1);
	/*	System.out.println(filename);*/
		}
		}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}	
		return filename;
		
		
	}
	
	public static int like(String val,String email){	
		int i = 0,j=1;
		int count=0;
		try {
		/*	System.out.println("Name from P_DAO :" + Name);*/
			Connection con=DB.dba();
			
			if(con!=null)
				{
				String sql2="select * from panel where  name=?";
				PreparedStatement ps2=con.prepareStatement(sql2);
				//ps2.setString(1, email);
				ps2.setString(1, val);
				ResultSet rs = ps2.executeQuery();
				while(rs.next())
				{
					count=rs.getInt("like_blog");
				}
				count=j+count;
				
				String chkeml="";
				String sql21="select * from like_email where  email=? AND name=?";
				PreparedStatement ps21=con.prepareStatement(sql21);
				ps21.setString(1, email);
				ps21.setString(2, val);
				ResultSet rs1 = ps21.executeQuery();
				while(rs1.next())
				{
					chkeml="true";
				}
		String sql1="update panel set like_blog=? where  name=?";
		PreparedStatement ps1=con.prepareStatement(sql1);
		ps1.setInt(1, count);
		//ps1.setString(2, email);
		ps1.setString(2, val);
		i=ps1.executeUpdate();
		if(chkeml.equals("true"))
		{
			String sql11="update like_email set like_flag=? where name=? AND email=?";
			
			PreparedStatement ps11=con.prepareStatement(sql11);
			ps11.setString(1, "YES");
			ps11.setString(2, val);
			ps11.setString(3, email);
			
			int i1=ps11.executeUpdate();
		}
		else
		{
		String sql11="insert into like_email (name, email, like_flag)"
				+ "values(?,?,?)";
		PreparedStatement ps11=con.prepareStatement(sql11);
		ps11.setString(1, val);
		ps11.setString(2, email);
		ps11.setString(3, "YES");
		int i1=ps11.executeUpdate();
				
				}
				}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return  i;	
		
		
		
	}

	public static int dislike(String val,String email){	
		int i = 0,j=1;
		int count=0;
		try {
		/*	System.out.println("Name from P_DAO :" + Name);*/
			Connection con=DB.dba();
			
			if(con!=null)
				{
				String sql2="select * from panel where  name=?";
				PreparedStatement ps2=con.prepareStatement(sql2);
				//ps2.setString(1, email);
				ps2.setString(1, val);
				ResultSet rs = ps2.executeQuery();
				while(rs.next())
				{
					count=rs.getInt("like_blog");
				}
				count=count-j;
				
		String sql1="update panel set like_blog=? where name=?";
		PreparedStatement ps1=con.prepareStatement(sql1);
		ps1.setInt(1, count);
		//ps1.setString(2, email);
		ps1.setString(2, val);
		i=ps1.executeUpdate();
		
		String sql11="update like_email set like_flag=? where name=? AND email=?";
			
		PreparedStatement ps11=con.prepareStatement(sql11);
		ps11.setString(1, "NO");
		ps11.setString(2, val);
		ps11.setString(3, email);
		
		int i1=ps11.executeUpdate();
				
				}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return  i;	
		
		
		
	}

	public static int update_doc(Doctor_reg bn) {
		int i=0;
		
//		if(file is empty)
//			image = then set last saved image
//			else
//				image =set new image
		 try {
				
				
						Connection con=DB.dba();
					
						if(con!=null)
						{
							
							String sql="UPDATE doctor_reg set lname=?,country=?,state=?,address=?,pincode=?,city=?, mobileno=?, Experience=?,Specilisation=?,Image=?,degree=? where email=?";
							PreparedStatement ps=con.prepareStatement(sql);
							ps.setString(1, bn.getLname());
							ps.setString(2, bn.getCountry());
							ps.setString(3, bn.getState());
							ps.setString(4, bn.getAddress());
							ps.setString(5, bn.getPincode());
							ps.setString(6, bn.getCity());
							ps.setString(7, bn.getMobileno());
							ps.setString(8, bn.getRexp());
							ps.setString(9, bn.getRspc());
							ps.setString(10, bn.getImage());
							ps.setString(11, bn.getRdeg());
							ps.setString(12, bn.getEmail());
							i=ps.executeUpdate();
							
							//call the save image function
						}
		 }
		 catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 
						
		
		return i;
		}


	public static String chkpic(String fileName, String email) {
		String filename2="";
		try {
		/*	System.out.println("Name from P_DAO :" + Name);*/
			Connection con=DB.dba();
			if(con!=null)
			{
		String sql1="select * from doctor_reg where Image=? ";
		PreparedStatement ps1=con.prepareStatement(sql1);
		ps1.setString(1,fileName);
		ResultSet rs1=ps1.executeQuery();
		while(rs1.next()){
		filename2="true";
	/*	System.out.println(filename);*/
		}
		}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}	
		return filename2;
	}

	
}
