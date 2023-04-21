package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class FirstServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String em=req.getParameter("em");
		String pass= req.getParameter("pass");
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		RequestDispatcher rd;
		
		if("vaibhavdhule07@gmail.com".equals(em)&& "1234".equals(pass))
		{
//			rd=req.getRequestDispatcher("/servlet2");
//			rd.forward(req, resp);
		
			resp.sendRedirect("servlet2");
		}
		else 
		{
			out.print("<h4>invalid email and password</h4>");
			rd=req.getRequestDispatcher("/Index.html");
			rd.include(req, resp);
		}
			
			
			
		
	}
	

}
