package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;
import bean.Path_billBean;

@WebServlet("/path_billserv")
public class path_billserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pathalogyname=request.getParameter("pathalogyname");
		String PATIENT_NAME=request.getParameter("patientName");
		String SUGGESTED_DOCTOR=request.getParameter("SUGGESTED_DOCTOR");
		String PATIENT_AGE=request.getParameter("age");
		String PATIENT_GENDER=request.getParameter("Sex");
		String test=request.getParameter("p_test");
		 System.out.println("Test: "+test);
		String TestDate=request.getParameter("testdate");
		String Mobile=request.getParameter("mobile");
		String Address=request.getParameter("address");
		String Pathmobile=request.getParameter("pathmobile");
		String Billdate=request.getParameter("billdate");
		String PatAddress=request.getParameter("pataddress");
		String Vat=request.getParameter("vat");

		
		 String TEST_SUBCATEGORY_NAME= test;
		

		Double total_price=Double.parseDouble(request.getParameter("prcsave"));
		System.out.println("Price from Servlet " +total_price);
		Path_billBean ob= new Path_billBean(pathalogyname,PATIENT_NAME, SUGGESTED_DOCTOR, PATIENT_AGE, PATIENT_GENDER, TEST_SUBCATEGORY_NAME, total_price,TestDate,Mobile,Address,Pathmobile,Billdate,PatAddress,Vat);
		System.out.println("tt");
		int i=DAO.insert5(ob);
		
		if(i==1){
			
			response.sendRedirect("invokeBill.jsp?pname="+PATIENT_NAME+"&padd="+PatAddress+"&vat="+Vat+"&totalprice="+total_price+"&billdate="+Billdate+"&pmobile="+Mobile+"&testdate="+TestDate);
		}
		else
		{
			String error="Insertion error";
			response.sendRedirect("BILL.jsp?error="+error);
		}
	}

	}