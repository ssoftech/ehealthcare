package controller;

import java.io.IOException;
import java.security.MessageDigest;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/RetResetPwdServlet")
public class RetResetPwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		System.out.println("Servlet is "+email);
		String password=request.getParameter("password");
		String Confirmpassword=request.getParameter("cnfpassword");
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
		
		if(Retailervalidate.updatePwd(email, passw, passw)==1)
		{
			HttpSession ses= request.getSession();
			ses.setAttribute("email", email);
			String msg="Password updated successfully! Click back and log in to your account.";
			 response.sendRedirect("Retailerlogin.jsp?msg="+msg);
		}
		else
		{
			String error="update error";
			response.sendRedirect("ResetPassword.jsp?msg="+error); 
		}
		
	}
}