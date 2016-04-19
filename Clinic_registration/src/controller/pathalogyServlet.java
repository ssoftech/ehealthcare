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

import Model.DAO;
import bean.Pathalogy;

@WebServlet("/pathalogyServlet")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)
public class pathalogyServlet extends HttpServlet {
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
		       String from="rr377334@gmail.com";
	 	       String pathalogyname=request.getParameter("pathalogyname");
	 			System.out.println("1 "+pathalogyname);
	 			String Email=request.getParameter("Email");
	 			System.out.println("........"+Email);
	 			String user=request.getParameter("user");
	 			System.out.println("..............."+user);
	 			String password=request.getParameter("password");
	 			String Confirmpassword=request.getParameter("Confirmpassword");
	 			String Country=request.getParameter("country");
	 			String State=request.getParameter("state");
	 		    String Address=request.getParameter("Address");
	 			String City=request.getParameter("city");
	 			String Pincode=request.getParameter("PinCode");
	 			String Mobile=request.getParameter("mobile");
	 			String userid=request.getParameter("userid");
	 			Part part=request.getPart("file");
	 			String fileName = extractFileName(part);
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
	 	        
	 			Pathalogy cb= new Pathalogy(pathalogyname, Email, passw, passw, Address, Country, State, City, Pincode, Mobile, userid, fileName); 
	 	        
	 			int i = DAO.insert(cb);
	 			if(i==1)
	 			 {
	 				new  MailClass().userCheck(user,Email);
	 				new MailClass().send(from,user,Email);  
	 				 String msg="insert successfully";
	 				 response.sendRedirect("pathalogylogin.jsp?msg="+msg);
	 			 }
	 			 else
	 			 {
	 				 String error="insert error";
	 				 response.sendRedirect("pathalogy registration.jsp?er="+error); 
	 			 }	
	 			
	}
	

}
