package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;
import bean.Patient;

@WebServlet("/CoustomerAppointmentServlet")
public class CoustomerAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Clinicname=request.getParameter("clinicname");	
		String Patientsname=request.getParameter("Patientname");
	 String Age=request.getParameter("age");
	 String Doctorname=request.getParameter("doctor");
	 String Date=request.getParameter("date");
	 String FromTime=request.getParameter("time");
	 String ClinicEmail=request.getParameter("clinicemail");


	/* String myTime = FromTime;
	 DateTimeFormatter formatter = DateTimeFormat.forPattern("HH:mm");
	   LocalTime time = formatter.parseLocalTime(myTime);
	   time = time.plusMinutes(10);
	  System.out.println("After adding 10 min. : "+formatter.print(time));
	  String ToTime= formatter.print(time);
	  
	  System.out.println("After adding 10 min. : "+ToTime);*/
	 
	 String DISEASE=request.getParameter("disease");
	 String Mobileno=request.getParameter("mobile");
	 String Address=request.getParameter("address");
	 String Registrationid=request.getParameter("regi");
	 String SEX=request.getParameter("sex");
	 String Specilization=request.getParameter("specilization");
	 Patient pb=new Patient(Clinicname,Patientsname, Age, Doctorname, Date, DISEASE, FromTime, Mobileno, Address, Registrationid, SEX,Specilization);
	 int i = DAO.insert(pb);
	 int j = DAO.insert1(pb,ClinicEmail);
	 if(i==1 && j==1)
	 {
		 String msg="insert successfully";
		 response.sendRedirect("customarserach.jsp?msg="+msg);
	 }
	 else
	 {
		 String error="insert error";
		 response.sendRedirect("customerAppointment.jsp?er="+error); 
	 }		
	}
	}
