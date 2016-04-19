package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Model.*;
import bean.Doctor_reg;

@WebServlet("/Doc_updateServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10, // 10MB
maxRequestSize = 1024 * 1024 * 50)
public class Doc_updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR = "images";

	private String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}
		return "";
	}
public String check(String email,String fileName)
{
	
	String pl=Dao3.chkpic(fileName,email);
	return pl;
}
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		/*String savePath = "D:\\24th Feb Backup\\Online_Medi_System\\WebContent"
				+ File.separator + SAVE_DIR;*/
		/*String savePath = request.getContextPath()+
				 File.separator + SAVE_DIR;
		System.out.println("Save path : "+savePath);*/
		
		/*PrintWriter out1 = response.getWriter();
		out1.println("<br/>File system context path (in TestServlet): " + savePath);
		*/String Address = request.getParameter("Address");
		String LName = request.getParameter("Name");
		String[] strar=LName.split(" ");
		String LNameAr = strar[1];
		System.out.println("Split Name: "+LNameAr);
		String Country = request.getParameter("Country");
		String Img = request.getParameter("lstimg");
		String State = request.getParameter("State");
		String City = request.getParameter("City");
		String Pincode = request.getParameter("Pincode");
		String Mobile = request.getParameter("Mobile");
		String Degree = request.getParameter("degree");
		String Specilisation = request.getParameter("Specilisation");
		String Experience = request.getParameter("Experience");
		String email = request.getParameter("Email");
		System.out.println("Email from Servlet : " + email);
		
		System.out.println("Image name from Update servlet1 : " + Img);
		Part part = request.getPart("file");
		String fileName = extractFileName(part);
		System.out.println("Image name from Update servlet : " + fileName);
		System.out.println("Part name from Update servlet : " + part);
		int i=0;
			
		if(Img!=null && fileName.equals(""))
		{
			fileName=Img;
			System.out.println("Img from if : "+Img);
			System.out.println("FileName from if : "+fileName);
			Doctor_reg bn = new Doctor_reg(Specilisation, Experience, LNameAr, email,
					Degree, Country, State, City, Pincode, Address, Mobile,
					fileName);
			 i = Dao3.update_doc(bn);

		}
		else
		{
		String pl=check(email, fileName);
				System.out.println("Filename : "+fileName);
				System.out.println("Filename in database : "+pl);
				String[] str =fileName.split("\\.");
				String finalfilename=str[0]+email+"."+str[1];
				if(pl.equals("true"))
				{
					
				File fileSaveDir = new File(request.getServletContext().getRealPath("/")+"images\\");
				System.out.println("Save path : "+fileSaveDir+"\\"+finalfilename);
				
				
				System.out.println("file name : "+str[0]);
			
				if (!fileSaveDir.exists()) {
					fileSaveDir.mkdir();
				}
				part.write(fileSaveDir +"\\"+ finalfilename);
				
				Doctor_reg bn = new Doctor_reg(Specilisation, Experience, LNameAr, email,
						Degree, Country, State, City, Pincode, Address, Mobile,
						finalfilename);
				 i = Dao3.update_doc(bn);
				}
				else
				{
					File fileSaveDir = new File(request.getServletContext().getRealPath("/")+"images\\");
					System.out.println("Save path : "+fileSaveDir+"\\"+fileName);
				
					if (!fileSaveDir.exists()) {
						fileSaveDir.mkdir();
					}
					part.write(fileSaveDir +"\\"+ fileName);
					Doctor_reg bn = new Doctor_reg(Specilisation, Experience, LNameAr, email,
							Degree, Country, State, City, Pincode, Address, Mobile,
							fileName);
					 i = Dao3.update_doc(bn);
				}
		}
	
		
		
		if (i == 1) {
			String msg = "Update successfully";
		
			response.sendRedirect("Doc_profile.jsp?msg=" + msg);

		} else {
			String Error = "Update Error";
			response.sendRedirect("Doc_update.jsp?Error=" + Error);
		}
	}

}
