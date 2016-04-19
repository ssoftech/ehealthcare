package controller;

import java.io.IOException;
import java.security.MessageDigest;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;
import bean.Report_reg_bean;


@WebServlet("/Report_reg_servlet")
public class Report_reg_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pathalogyname=request.getParameter("pathalogyname");
		String Reportname=request.getParameter("Reportname");
		String mobile=request.getParameter("mobile");
		String gender=request.getParameter("gender");
		String password=request.getParameter("password");
		String confirmpassword=request.getParameter("confirmpassword");
		String userid=request.getParameter("userid");
		String email=request.getParameter("email");
		String Address=request.getParameter("Address");
		
		byte[] unencodedPassword = password.getBytes();
		MessageDigest md = null;
		try {
		md = MessageDigest.getInstance("MD5");
		} catch (Exception e) {}
		md.reset();
		md.update(unencodedPassword);
		byte[] encodedPassword = md.digest();
		StringBuffer buf = new StringBuffer();
		for (int i = 0; i < encodedPassword.length; i++) {
		if (((int) encodedPassword[i] & 0xff) < 0x10) {
		buf.append("0");
		}
		buf.append(Long.toString((int) encodedPassword[i] & 0xff, 16));
		}
		String passw=buf.toString(); 
		
		Report_reg_bean ab=new Report_reg_bean(pathalogyname,Reportname,mobile,gender,passw,passw,userid,email,Address);
		int i=DAO.insert(ab);
		
		if(i==1)
		{
			String msg="Insertion Successfully";
			response.sendRedirect("Management Registration.jsp?msg="+msg);
		}
		else
		{
			String error="Insertion error";
			response.sendRedirect("Management Registration.jsp?error="+error);
		}
	}

	}