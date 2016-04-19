package controller;

import java.io.IOException;
import java.security.MessageDigest;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.DAO1;
import bean.Report_reg_bean;


@WebServlet("/ManagementupdateServlet")
public class ManagementupdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid=request.getParameter("userid");
		String Password=request.getParameter("password");
		String Confirmpassword=request.getParameter("confirmpassword");
		byte[] unencodedPassword = Password.getBytes();
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
		
		Report_reg_bean rb= new Report_reg_bean(passw, passw, userid); 
		int i=DAO1.update(rb);
		if(i==1)
		{
			String msg="insert successfully";
			response.sendRedirect("path_home.jsp?msg="+msg);
		}
		else
		{
			String Error="insert Error";
			response.sendRedirect("Receptionchangepassword.jsp?Error="+Error);
		}
	}
}