package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/Doc_ResetPwdServlet")
public class Doc_ResetPwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String password=request.getParameter("password");
		String email=request.getParameter("email");
		System.out.println("Email from Servlet : " +email);
		HttpSession session= request.getSession();
		String chk= (String)session.getAttribute("email");
		System.out.println("Check email is : "+chk);
		if(chk==null)
		{
		if(DoctorValidate.updatePwd(email, password)==1)
		{
			HttpSession ses= request.getSession();
			ses.setAttribute("email", email);
			
			String msg="Password updated successfully!";
			response.sendRedirect("Doctor_Login.jsp?msg="+msg);
		}
		else
		{
			String error="update error";
			response.sendRedirect("Doc_ResetPassword.jsp?msg="+error); 
		}
		}
		else
		{
			if(DoctorValidate.updatePwd(email, password)==1)
			{
				HttpSession ses= request.getSession();
				ses.setAttribute("email", email);
				
				String msg="Password updated successfully!";
				response.sendRedirect("Doc_index.jsp?msg="+msg);
			}
			else
			{
				String error="update error";
				response.sendRedirect("Doc_ResetPasswordDashBoard.jsp?msg="+error); 
			}
		}
	}

}
