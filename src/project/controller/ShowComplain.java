package project.controller;

import java.io.IOException;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project.model.CustomerService;

/**
 * Servlet implementation class ShowComplain
 */
@WebServlet("/project.controller.ShowComplain")
public class ShowComplain extends HttpServlet {
	static ResultSet rs;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		
		rs = CustomerService.complains();
		response.sendRedirect("adminDashboard.jsp?msg=rs object is not null");
	}
	public static ResultSet showComplains() {
		return rs;
	}
}
