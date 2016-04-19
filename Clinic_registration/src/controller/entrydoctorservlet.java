package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;
import bean.Doctorentry;


@WebServlet("/entrydoctorservlet")
public class entrydoctorservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String clinicname=request.getParameter("clinicname");
		String Doctorname=request.getParameter("Doctorname");
		String Registrationid=request.getParameter("registration");
		String Specilization=request.getParameter("specilization");
		String Date=request.getParameter("Date");
		String Formtime=request.getParameter("Fromtime");
		String Totime=request.getParameter("Totime");
		
		Doctorentry bn=new Doctorentry(clinicname, Doctorname, Registrationid, Specilization, Date, Formtime, Totime);
		int i=DAO.insert(bn);
		
		if(i==1)
		 {
			 String msg="insert successfully";
			 response.sendRedirect("index.jsp?msg="+msg);
		 }
		 else
		 {
			 String error="insert error";
			 response.sendRedirect("Entry From.jsp?er="+error); 
		 }	
		
	}

}
