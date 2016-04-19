package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/GotoEdit")
public class GotoEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Medicinename=request.getParameter("medicinename");
		System.out.println("Medicine name from gotoedit: "+Medicinename);
		HttpSession session=request.getSession();  
	    session.setAttribute("medicinename",Medicinename);
	   /* RequestDispatcher rd = request.getRequestDispatcher("Edit_Medicine.jsp");
		rd.forward(request, response);*/
	    response.sendRedirect("Edit_Medicine.jsp");
	}

}
