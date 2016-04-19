package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DoctorLogoutServlet")
public class DoctorLogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  

        String msg="You are successfully logged out"; 
        
       /* RequestDispatcher rd = request.getRequestDispatcher("Doctor_Login.jsp?msg="+msg);
        rd.include(request, response); */
        response.sendRedirect("Doctor_Login.jsp?msg="+msg);
          
        HttpSession session=request.getSession();  
        session.invalidate();  
           
          
        out.close();  
	}


}
