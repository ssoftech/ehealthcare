package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Model.Dao3;
import bean.Doctor_reg;


@WebServlet("/AdminRegisterServlet")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)
public class AdminRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR="images";
	   private String extractFileName(Part part) {
	        String contentDisp = part.getHeader("content-disposition");
	        String[] items = contentDisp.split(";");
	        for (String s : items) {
	            if (s.trim().startsWith("filename")) {
	                return s.substring(s.indexOf("=") + 2, s.length()-1);
	            }
	        }
	        return "";
	   }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String R_id=request.getParameter("Rnum");
		String R_deg=request.getParameter("Rdeg");
		String R_Spc=request.getParameter("Rspc");
		String R_Exp=request.getParameter("Rexp");
		String Fname=request.getParameter("Fname");
		String Lname=request.getParameter("Lname");

		String Email=request.getParameter("Email");
		String password=request.getParameter("password");
		String Confirmpassword=request.getParameter("Confirmpassword");
		String DOB=request.getParameter("DOB");
		String Gender=request.getParameter("gender");
		String Country=request.getParameter("country");
		String State=request.getParameter("state");
		String City=request.getParameter("city");
		String Pincode=request.getParameter("PinCode");
		String Address=request.getParameter("Address");
		String Mobileno=request.getParameter("Mobile No");
		String Id=request.getParameter("userid");
		System.out.println("Servlet is :"+Id);
		PrintWriter out = response.getWriter();
		Part part=request.getPart("image");
		String fileName = extractFileName(part);
		System.out.println("Filename from servlet: "+fileName);
		System.out.println("R_ID from servlet: "+R_id);
		String savePath="";
	if(!fileName.isEmpty())
	{
		File fileSaveDir = new File(request.getServletContext().getRealPath("/")+"images\\");
            
            fileSaveDir.getParentFile().mkdirs();
            if(!fileSaveDir.exists()){
                //fileSaveDir.mkdir();
            fileSaveDir.createNewFile();    
            }
        	part.write(fileSaveDir +"\\"+ fileName);
	}
	else
	{
		fileName="default.png";
	}
		

		
		byte[] unencodedPassword = password.getBytes();
		MessageDigest md = null;
		try {
		md = MessageDigest.getInstance("MD5");
		} catch (Exception e) {}
		md.reset();
		md.update(unencodedPassword);
		byte[] encodedPassword = md.digest();
		StringBuffer buf = new StringBuffer();
		for (int i = 0; i < encodedPassword.length; i++) {
		if (((int) encodedPassword[i] & 0xff) < 0x10) {
		buf.append("0");
		}
		buf.append(Long.toString((int) encodedPassword[i] & 0xff, 16));
		}
		String passw=buf.toString(); 
		
		
		
		
		Doctor_reg bn=new Doctor_reg(Id, R_id, Fname, Lname, DOB, Email, passw, Country, State, Address, Gender, Pincode, City, Mobileno, R_Exp, R_Spc, fileName, R_deg);
		
		int i=Dao3.insert(bn);
		
		if(i==1)
		 {
			 String msg="insert successfully";
			 response.sendRedirect("Admin.jsp?msg="+msg);
		 }
		 else
		 {
			 String error="insert error";
			 response.sendRedirect("AdminDoctorRegistration.jsp?er="+error); 
		 }	
	}

}
