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
import bean.Doctorbean;
import bean.Doctorentry;


@WebServlet("/doctorschedule")
public class doctorschedule extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String Date=request.getParameter("Date");
	
     ArrayList<Doctorentry> ar=DAO.show3(Date);
     request.setAttribute("ar",ar);
    RequestDispatcher rd=request.getRequestDispatcher("Doctor.jsp");
     rd.forward(request, response);
	}

}
