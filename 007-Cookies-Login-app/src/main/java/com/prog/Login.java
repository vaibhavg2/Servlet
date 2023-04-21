package com.prog;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class Login extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 String email =req.getParameter("nm");
	 String password=req.getParameter("ps");
	 
	 Cookie ck= new Cookie("em", email);
	 Cookie ck1=new Cookie("ps", password);
	 
	 resp.addCookie(ck);
	 resp.addCookie(ck1);
	 
	 resp.sendRedirect("profile");
	
	}

	
}
