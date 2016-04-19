package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.*;
import bean.SizeBean;

@WebServlet("/HeaderFooter")
public class HeaderFooter extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Print = request.getParameter("print");
		String Header = request.getParameter("Header");
		String Footer = request.getParameter("Footer");
		String Email = request.getParameter("email");
		
		
		SizeBean sb = new SizeBean(Header,Footer,Print);
		int chk=Dao3.sizedao(sb,Email);
		
		
		
		if(chk==1)
		{
			String s="Successfully Insert";
			response.sendRedirect("PrescriptionSettings.jsp?msg="+s);
		}
		else
		{
			String s="Insert Error";
			response.sendRedirect("PrescriptionSettings.jsp?msg="+s);
		}
		
		
	}

}
