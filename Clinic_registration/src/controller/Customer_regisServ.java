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
import bean.Customer_regisBean;


@WebServlet("/Customer_regisServ")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)
public class Customer_regisServ extends HttpServlet {
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
		
		String FirstNAME=request.getParameter("fname");
		String LastNAME=request.getParameter("lname");
		String EMAIL=request.getParameter("email");
		String Gender=request.getParameter("gender");
		String PASSWORD=request.getParameter("password");
		String Confirmpassword=request.getParameter("password");
		String Country=request.getParameter("country");
		String State=request.getParameter("state");
		String CITY=request.getParameter("city");
		String ADDRESS=request.getParameter("ADDRESS");
		String Zipcode=request.getParameter("zipcode");
		String MOBILENO=request.getParameter("MOBILE");
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
		byte[] unencodedPassword = PASSWORD.getBytes();
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
		Customer_regisBean ob= new Customer_regisBean(FirstNAME,LastNAME,EMAIL,Gender,passw, passw, Country, State, CITY,ADDRESS,Zipcode,MOBILENO,fileName);
	
		int i=DAO.insert(ob);
		if(i>0){
			String msg="Insert successfully";
			response.sendRedirect("Customerlogin.jsp? msg" +msg);
			
		}
		else
		{
			String error="Insertion error";
			response.sendRedirect("Customer_Regis.jsp?error="+error);
		}
	}

	}