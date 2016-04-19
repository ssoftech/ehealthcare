package controller;

import java.io.IOException;
import java.security.MessageDigest;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/ClinicLoginServlet")
public class ClinicLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Userid=request.getParameter("userid");
		String email=request.getParameter("email");  
	    String password=request.getParameter("password");
	    String mobile=request.getParameter("mobile");
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
	    System.out.println(email);
	    System.out.println(password);
	    String clinicname=null;	
	    clinicname=ClinicValidate.checkUser(Userid,email,passw);
	    String mobile1=null;	
	    mobile1=ClinicValidate.checkUser1(email);
	    String Address1=null;	
	    Address1=ClinicValidate.checkUser2(email);
	    
	    
	    String City=null;	
	    City=ClinicValidate.checkUser3(email);
	    System.out.println("clinic name "+clinicname);
	    
				if (clinicname!=null)
				{
					HttpSession session=request.getSession();  
				    session.setAttribute("clinicname",clinicname);
				    session.setAttribute("email",email);
				    session.setAttribute("mobile",mobile1);
				    session.setAttribute("Address",Address1);
				    session.setAttribute("City",City);
				 
				    
					response.sendRedirect("index.jsp?email="+email);
				}
				else
				{
			        String error="Sorry username or password error";
			        response.sendRedirect("Cliniclogin.jsp?error="+error);
			    }
	}

}
