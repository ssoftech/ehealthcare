package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;
import bean.Information;

@WebServlet("/InformationServlet")
public class InformationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pathalogyname=request.getParameter("pathalogyname");
		System.out.println("Servlet is:"+pathalogyname);
		String PATIENT_NAME=request.getParameter("patientName");
		String SUGGESTED_DOCTOR=request.getParameter("Doctor");
		String PATIENT_AGE=request.getParameter("age");
		String PATIENT_GENDER=request.getParameter("sex");
		String Mobile=request.getParameter("mobile");
		String Test1=request.getParameter("test");
		String Test2=request.getParameter("test1");
		String Test3=request.getParameter("test2");
		String Test4=request.getParameter("test3");
		String Test5=request.getParameter("test4");
	
		String TestDate=request.getParameter("testdate");
		String DeliveryDate=request.getParameter("date");
		String Address=request.getParameter("address");
		String Test= Test1+" "+Test2+" "+Test3+" "+Test4+" "+Test5;
		Information in=new Information(pathalogyname, PATIENT_NAME, SUGGESTED_DOCTOR, PATIENT_AGE, PATIENT_GENDER, Mobile, Test, TestDate, DeliveryDate,Address);
	int i=DAO.insert(in);
	if(i==1)
	 {
		 String msg="insert successfully";
	 response.sendRedirect("path_home.jsp?msg"+msg);
	 }
	else
	 {
		 String error="insert error";
		 response.sendRedirect("Customerinformtion.jsp?er="+error); 
	 }	
	}

}
