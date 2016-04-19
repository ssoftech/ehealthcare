package controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.util.*;

import Model.DAO;
import Model.DAO1;
import bean.Retailerbean;
import bean.clinicbean;


@WebServlet("/Retailer_updateServlet")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)
public class Retailer_updateServlet extends HttpServlet {
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
		 PrintWriter out = response.getWriter();
		 File fileSaveDir = new File(request.getServletContext().getRealPath("/")+"images\\");
		 if(!fileSaveDir.exists()){
	            fileSaveDir.mkdir();
	        }
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");
		String address=request.getParameter("address");
		String pincode=request.getParameter("pincode");
		String mobile=request.getParameter("mobile");
		Part part=request.getPart("file");
        String fileName=extractFileName(part);
        int j=0;
        if(!fileName.equals(""))
        {
        	part.write(fileSaveDir +"\\"+ fileName);
        System.out.println("filename "+fileName);
        Retailerbean rd1=new Retailerbean( email,fileName);
         j=DAO1.update1(rd1);
        }
		Retailerbean rd=new Retailerbean(address, pincode, email, mobile);
		
		
		int i=DAO1.update(rd);
		 if(i==1 || j==1 )
		 {
			 String msg="update successfully";
			 response.sendRedirect("Retailer_update.jsp?msg="+msg);
		 }
		 else
		 {
			 String error="update error";
			 response.sendRedirect("Retailer_update.jsp?msg="+error); 
		 }
		
		
	}


	}


