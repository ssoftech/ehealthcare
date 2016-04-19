package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/TestContext")
public class TestContext extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String SAVE_DIR = "image13";
		ServletContext servletContext = getServletContext();
		//String contextPath = servletContext.getRealPath("/");
		String savePath = request.getContextPath()+ "\\WebContent"+
				 File.separator + SAVE_DIR;
		File fileSaveDir = new File(savePath);
		if (!fileSaveDir.exists()) {
			fileSaveDir.mkdir();
		}
		PrintWriter out = response.getWriter();
		out.println("<br/>File system context path (in TestServlet): " + savePath);
	}

}
