package controller;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.*;
import bean.Leave_Commentbean;

@WebServlet("/Leave_Comment")
public class Leave_Comment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Name=request.getParameter("name");
		String Email=request.getParameter("email");
	    String Phone=request.getParameter("phone_no");
		String Message=request.getParameter("message");
		String BlogName=request.getParameter("BlogName");
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
		String Time5=Message+Datetime;
		System.out.println("Time 5 is: " +Time5);
		Leave_Commentbean lc=new Leave_Commentbean(Name, Email, Phone, Message,Datetime,BlogName);
		
		int i=Dao3.insertComment(lc);
		if(i==1)
		 {
			 String msg="insert successfully";
			 response.sendRedirect("AzaxBlog1.jsp?val="+BlogName);
		 }
		 else
		 {
			 String error="insert error";
			 response.sendRedirect("AzaxBlog1.jsp?er="+error); 
		 }	
		
		}
		
	}

		
