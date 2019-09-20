package project.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.db.ComplainBox;
import project.model.CustomerService;


@WebServlet("/project.controller.ComplainRegister")
public class ComplainRegister extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		ComplainBox c = new ComplainBox();
		HttpSession session =request.getSession();
		c.setSubject((String)session.getAttribute("subject"));
		c.setBlock(request.getParameter("block"));
		c.setRoom(request.getParameter("room"));
		c.setProblem(request.getParameter("problem"));
		
		int status = CustomerService.doComplain(c);
		if(status>0)
		{
			response.sendRedirect("submission.jsp?msg=complainRegister");
		}
		else 
		{
			out.print("Complain registration failed...");
		}
	}

}
