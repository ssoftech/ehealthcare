package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Scheduler_Bean;
import Model.*;


@WebServlet("/SchedulerServlet")

public class SchedulerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");
		if (action.equals("Add Event")) {
		  
		String Date = request.getParameter("Date");
		String From = request.getParameter("From");
		String To = request.getParameter("To");
		String Description = request.getParameter("Description");
		String DoctorName= request.getParameter("DoctorName");
		String DocDetails=DoctorName+","+Date+","+From+","+To;
		
		System.out.println(Date + " " + From + " " + To + " " + Description +" " + DocDetails);
		
		
		Scheduler_Bean sb= new Scheduler_Bean(Date,From,To,Description,DocDetails);
		
		
		int  chk = Dao3.schedulercheck(sb,email);
		System.out.println("Already exist in DAtabase: " +chk);
		int i=0;
		int j=0;
		if(chk==1)
		{
			j=1;
			System.out.println("J is : "+j);
		}
		else
		{
			 i=Dao3.scheduler(sb,email);
		}
		
	
		
		
		if(i==1)
		 {
			 String msg="insert successfully";
			 response.sendRedirect("AddSchedule.jsp?msg="+msg);
		 }
		 else
		 {
			 
				if(j==1)
				{
					System.out.println("Check booking : " +j);
					String  error1 = "Already Booking this Time";
					response.sendRedirect("AddSchedule.jsp?er="+error1); 
			
				}
				else
				{
			 String error="insert error" ;
			 response.sendRedirect("AddSchedule.jsp?er="+error);
				}
		
		 }
	
	}
		 else if (action.equals("Update Event")) {
			  
				String Date = request.getParameter("Date");
				String From = request.getParameter("From");
				String To = request.getParameter("To");
				String Description = request.getParameter("Description");
				String DoctorName= request.getParameter("DoctorName");
				String DocDetails=DoctorName+","+Date+","+From+","+To;
	
				String dbdocdetails= (String) session.getAttribute("details1");
				int id= (int) session.getAttribute("id");
				System.out.println("DEtails from Database: "+dbdocdetails);
				System.out.println(Date + " " + From + " " + To + " "  +" " + DocDetails);
				
				
				Scheduler_Bean sb= new Scheduler_Bean(Date,From,To,Description,DocDetails,dbdocdetails);
				int i=Dao3.schedulerUpdate(sb,email,id);
				
				if(i==1)
				 {
					 String msg="Update successfully";
					 response.sendRedirect("EditSchedule.jsp?msg="+msg);
				 }
				 else
				 {
					 String error="Update error" ;
					 response.sendRedirect("EditSchedule.jsp?er="+error); 
				 }	
			    
			}
		 else if (action.equals("Delete Event"))
		 {
			 
			 String Date = request.getParameter("Date");
				String From = request.getParameter("From");
				String To = request.getParameter("To");
				String Description = "";
				String DoctorName= request.getParameter("DoctorName");
				String DocDetails=DoctorName+","+Date+","+From+","+To;
				
				System.out.println(Date + " " + From + " " + To + " "  +" " + DocDetails);
				
				
				Scheduler_Bean sb= new Scheduler_Bean(Date,From,To,Description,DocDetails);
				int i=Dao3.schedulerDelete(sb);
				
				if(i==1)
				 {
					 String msg="Delete successfully";
					 response.sendRedirect("EditSchedule.jsp?msg="+msg);
				 }
				 else
				 {
					 String error="Delete error" ;
					 response.sendRedirect("EditSchedule.jsp?er="+error); 
				 }	
		 }
	}

}
