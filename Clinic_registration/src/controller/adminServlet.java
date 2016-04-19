package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/adminServlet")
public class adminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		{
			PrintWriter out=response.getWriter();
			String username = request.getParameter("username");
			System.out.println("user name is="+username);
			String password=request.getParameter("password");
			
			HttpSession admin=request.getSession();
			if(username.equals("admin") && password.equals("admin1234")) 
			{
				admin.setAttribute("username",username);
				String message = "valid Username/Password";
				
				 request.setAttribute("message", message);
		            request.getRequestDispatcher("Admin.jsp").forward(request, response);
		            
			}
			
			else
			{
				String message = "OOps!!! Invalid Username/Password";
	            request.setAttribute("message", message);
	            request.getRequestDispatcher("adminlogin.jsp").forward(request, response);
			}
		}
	}
}
