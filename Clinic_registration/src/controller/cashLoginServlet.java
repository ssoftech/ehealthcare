package controller;

import java.io.IOException;
import java.security.MessageDigest;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/cashLoginServlet")
public class cashLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Userid=request.getParameter("userid"); 
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
	    
	    System.out.println(password);
	    String Cashname=null;	
	    Cashname=CashValidate.checkUser(Userid,passw);
	    String mobile1=null;	
	    mobile1=CashValidate.checkUser1(Userid);
	    String Address1=null;	
	    Address1=CashValidate.checkUser2(Userid);
	    
	    
				if (Cashname!=null)
				{
					HttpSession session=request.getSession();  
				    session.setAttribute("Cashname",Cashname);
				    session.setAttribute("Userid",Userid);
				    session.setAttribute("mobile",mobile1);
				    session.setAttribute("Address",Address1);
				    
				 
				    
					response.sendRedirect("cashhome.jsp?Userid="+Userid);
				}
				else
				{
			        String error="Sorry username or password error";
			        response.sendRedirect("CashCounterlogin.jsp?error="+error);
			    }
	}

}
