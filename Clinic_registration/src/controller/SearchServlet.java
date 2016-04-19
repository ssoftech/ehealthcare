package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;

import bean.clinicbean;

@WebServlet("/SearchServlet")

public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Country=request.getParameter("country");
		/*System.out.println(Country);*/
		String State=request.getParameter("state");
		String City=request.getParameter("city");
		 ArrayList<clinicbean> ar=DAO.show5(Country , State, City);
	     request.setAttribute("ar",ar);
	    RequestDispatcher rd=request.getRequestDispatcher("customarserach.jsp");
	     rd.forward(request, response);
	}

}
