package controller;

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
import java.io.File;
import Model.DAO1;
import bean.Retailerbean;

@WebServlet("/RetailerRegisterServlet")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)
public class RetailerRegisterServlet extends HttpServlet {
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
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String from="rr377334@gmail.com";
	    String Retailername=request.getParameter("retailername");
		String Email=request.getParameter("Email");
		System.out.println("........"+Email);
		String user=request.getParameter("user");
		System.out.println("..............."+user);
	    String Address=request.getParameter("Address");
	    String Country=request.getParameter("country");
	    String State=request.getParameter("state");
		String City=request.getParameter("city");
		String Pincode=request.getParameter("PinCode");
		String Retailerid=request.getParameter("Retailerid");
		String Password=request.getParameter("password");
		System.out.println("Password is"+Password);
		String Confirmpwd=request.getParameter("confirmpassword");
		System.out.println("Confirmpwd is"+Confirmpwd);
		String Mobile=request.getParameter("MobileNo");
		String DelivaryRange=request.getParameter("Range");
		Double Minimumpricefordelivary=Double.parseDouble(request.getParameter("minimum price for delivary"));
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
		byte[] unencodedPassword = Password.getBytes();
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
		String password=buf.toString(); 
		if(Retailername != null && Email!=null)
		{
			
		}
		Retailerbean rd= new Retailerbean(Retailername, Email,Country, Address, State, City, Pincode, Retailerid, password, password, Mobile, DelivaryRange, Minimumpricefordelivary,fileName);
		int i=DAO1.insert(rd);
		System.out.println(i+"row inserted");
		if(fileName!=null)
		 {
			new  MailClass().userCheck(user,Email);
			new MailClass().send(from,user,Email); 
			 String msg="insert successfully"+i;
			 response.sendRedirect("Retailerlogin.jsp?msg="+msg);
		 }
		 else
		 {
			 String error="insert error";
			 response.sendRedirect("Retailer_registration.jsp?er="+error); 
		 }	
		
	}

	
}
