package project.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import project.db.Student;
import project.model.CustomerDao;
import project.model.CustomerService;

/**
 * Servlet implementation class Login
 */
@WebServlet("/project.controller.Forgot")
public class Forgot extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		Student u = new Student();
		u.setId(request.getParameter("id"));
		u.setEmail(request.getParameter("email"));
		
		String password = CustomerDao.getPassword(u);
		if (password !=null) 
		{
			u.setPassword(password);
			CustomerService.sendPassword(u);
			response.sendRedirect("submission.jsp?msg=Forgot");
		}
		else
		{
			response.sendRedirect("login.jsp?msg=Invalid Id or email...");
		}
		
	}

}
