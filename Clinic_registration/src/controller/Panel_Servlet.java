package controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.io.File;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Model.*;
import bean.Panelbean;
import sun.invoke.*;

@WebServlet("/Panel_Servlet")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)
public class Panel_Servlet extends HttpServlet {
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
		Part part = request.getPart("file");
		String fileName = extractFileName(part);
		File fileSaveDir = new File(request.getServletContext().getRealPath("/")+"images\\");
		System.out.println("Save path : "+fileSaveDir+"\\"+fileName);
		if (!fileSaveDir.exists()) {
			fileSaveDir.mkdir();
		}
            String Name=request.getParameter("name");
            String Email=request.getParameter("email");
            String Category=request.getParameter("category");
		    String Message=request.getParameter("comment");
		
		java.util.Date date = new java.util.Date();
		SimpleDateFormat df = new SimpleDateFormat();
		df.applyPattern("dd/MM/yyyy");
		String dt= df.format(date);
		System.out.println(dt);
		java.util.Date date1 = new java.util.Date();
		SimpleDateFormat df1 = new SimpleDateFormat();
		df1.applyPattern("HH:mm");
		String dt1= df1.format(date1);
		System.out.println(dt1 +" "+ dt);
		String Datetime=dt1 +" "+ dt; 

		part.write(fileSaveDir +"\\"+ fileName);
	
		
		Panelbean pb=new Panelbean( Message, Name,Email,Category, Datetime, fileName);
		int i=Dao3.Bloginsert(pb);
		if(i==1)
		 {
			 String msg="insert successfully";
			 response.sendRedirect("Doc_index.jsp?msg="+msg);
		 }
		 else
		 {
			 String error="insert error";
			 response.sendRedirect("BlogCreate.jsp?er="+error); 
		 }	
	}
	
	}

	

	 

