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
import project.model.CustomerService;


@WebServlet("/project.controller.Login")
public class Login extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		Student c = new Student();
		
		String id = request.getParameter("id");
		c.setId(id);
		
		c.setPassword(request.getParameter("pwd"));
		
		int status = CustomerService.doLogin(c);
		if (status==-1) 
		{
			response.sendRedirect("loginCancel.jsp");
		}
		else if(status == 1)
		{
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			response.sendRedirect("login.jsp");
		}
	}

}
