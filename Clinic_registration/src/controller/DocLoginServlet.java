package controller;

import java.io.IOException;
import java.security.MessageDigest;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Doc_LogBean;
import Model.*;

@WebServlet("/DocLoginServlet")
public class DocLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html");
	String Doc_ID = request.getParameter("docid");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
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
	System.out.println("Encrypted Password "+passw);
	Doc_LogBean lb = new Doc_LogBean(Doc_ID,email, password);
	String PassDB= Dao3.Select(lb);
	System.out.println("Database Password From Servlet " +PassDB);
	
	
	
	

	if(passw.equals(PassDB))
	{
		
		
		System.out.println("Email is : "+email);
		String strCheckBoxValue = request.getParameter("rememberme");
		if(strCheckBoxValue !=null)
		{
			Cookie cookies1 = new Cookie("EmailName", email);
			cookies1.setMaxAge(60);
 		   response.addCookie(cookies1);
 		   
 			Cookie cookies2 = new Cookie("PasswordName", password);
 			cookies2.setMaxAge(60);
  		   response.addCookie(cookies2);
		}
		
		HttpSession session=request.getSession();  
	    session.setAttribute("email",email);
		/*RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);*/
	    response.sendRedirect("Doc_index.jsp");
	}
	else
	{
		String error="Sorry username or password error";
        response.sendRedirect("Doctor_Login.jsp?error="+error);
	}
	}
}