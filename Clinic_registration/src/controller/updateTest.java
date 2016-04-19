package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;
import bean.Test_categorybean;

@WebServlet("/updateTest")
public class updateTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String NAMEOFTESTS=request.getParameter("TESTNAME");
		String NAMEOFTESTS1=request.getParameter("TESTNAMEPREV");
		String Email=request.getParameter("Email");
		Test_categorybean ab= new Test_categorybean(NAMEOFTESTS);
		System.out.println("Name of test: "+NAMEOFTESTS);
         int i=DAO.update(ab,NAMEOFTESTS1,Email);
		
		if(i==1)
			response.sendRedirect("path_home.jsp");
		else
		{
			String error="Insertion error";
			response.sendRedirect("Category.jsp?error="+error);
		}
	}

	}