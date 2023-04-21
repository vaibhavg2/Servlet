package com.prog;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/profile")
public class Profile extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
 	Cookie[] ck= req.getCookies();
 	System.out.println(ck.length+" "+" "+ck[0].getValue()+" "+ck[1]);
	
 	if(ck[0].getValue()==" ") {
 		System.out.println("empty");
 		resp.sendRedirect("Index.html");
 	}else {
// 		System.out.println(ck.length+"hgfg");
 		resp.setContentType("text/html");
 		PrintWriter out=resp.getWriter();
 		
 		out.print("<h1>Email="+ck[0].getValue()+"<h1>");
 		out.print("<h1>Password="+ck[1].getValue()+"<h1>");
 		out.print("<a href='logout'>Logout</a>");
	}
	}
	

}
