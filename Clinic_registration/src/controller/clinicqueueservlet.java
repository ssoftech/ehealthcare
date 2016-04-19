package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;

@WebServlet("/clinicqueueservlet")
public class clinicqueueservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Date=request.getParameter("Date");
		System.out.println("Date. : "+Date);
		String Doctorname=request.getParameter("doctorname");
		System.out.println("Doctorname : "+Doctorname);
		String Registrationid=request.getParameter("registrationid");
		System.out.println("Reg Id. : "+Registrationid);
		
		
		int j=DAO.queue(Date,Doctorname,Registrationid);
	}

}
