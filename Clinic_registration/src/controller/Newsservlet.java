package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;
import bean.Newsbean;


@WebServlet("/Newsservlet")
public class Newsservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Name=request.getParameter("name");
		String Area=request.getParameter("area2");
		Newsbean nb=new Newsbean(Name, Area);
		int i = DAO.insert(nb);
		if(i==1)
		 {
			 String msg="insert successfully";
			 response.sendRedirect("index.jsp?msg="+msg);
		 }
		 else
		 {
			 String error="insert error";
			 response.sendRedirect("NewsLetter.jsp?er="+error); 
		 }
	}

}
