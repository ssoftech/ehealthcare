package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.*;

@WebServlet("/likeservlet")
public class likeservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String like=request.getParameter("like");

		System.out.println(" like servlet: "+like);
		String dislike=request.getParameter("dislike");
		System.out.println(" dislike servlet: "+dislike);
		String val=request.getParameter("val");
		System.out.println("Val from like servlet: "+val);
		HttpSession session=request.getSession();  
		String email=(String)session.getAttribute("email");
		if(like!=null)
		{
		if(like.equals("like"))
		{

			System.out.println("Email from like servlet: "+email);
			int i=Dao3.like(val,email);
			if(i==1)
			{

				System.out.println("Success");
				response.sendRedirect("AzaxBlog1.jsp?val="+val);
			}
			else
				{
				response.sendRedirect("BlogView.jsp");
				}
			}
		}
		else
		{
			int i=Dao3.dislike(val,email);
			if(i==1)
			{

				System.out.println("Success");
				response.sendRedirect("AzaxBlog1.jsp?val="+val);
			}
			else
				{
				response.sendRedirect("BlogView.jsp");
				}
			}
			
	}

}
