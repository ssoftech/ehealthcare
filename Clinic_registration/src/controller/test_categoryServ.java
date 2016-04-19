package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Test_categorybean;
import Model.DAO;


@WebServlet("/test_categoryServ")
public class test_categoryServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String NAME_OF_TESTS=request.getParameter("NAME_OF_TESTS");
		String PATH_NAME=request.getParameter("pathalogyname");
		String TEST_DATE=request.getParameter("TEST_DATE");
		String email=request.getParameter("email");
		Test_categorybean ab= new Test_categorybean(NAME_OF_TESTS,PATH_NAME,TEST_DATE,email);
		int i=DAO.insert(ab);
		
		if(i==1)
			response.sendRedirect("path_home.jsp");
		else
		{
			String error="Insertion error";
			response.sendRedirect("Category.jsp?error="+error);
		}
	}

	}