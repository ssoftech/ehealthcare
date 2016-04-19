package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;
import bean.Referreddoctor;

@WebServlet("/RefdocServlet")
public class RefdocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Pathalogyname=request.getParameter("pathalogyname");
		String DoctorName=request.getParameter("doctorName");
		String Registrationid=request.getParameter("registrationid");
		String Specilization=request.getParameter("specilization");
		String Date=request.getParameter("date");
		Referreddoctor rr=new Referreddoctor(Pathalogyname, DoctorName, Registrationid, Specilization,Date);
		int i=DAO.insert(rr);
		if(i==1)
		 {
			 String msg="insert successfully";
			 response.sendRedirect("path_home.jsp?msg="+msg);
		 }
		 else
		 {
			 String error="insert error";
			 response.sendRedirect("Refdoctor.jsp?er="+error); 
		 }	
	}

}
