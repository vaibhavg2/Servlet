package com.serv;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import java.util.Date;

public class FirstProgram implements Servlet{
	
	ServletConfig con;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("destroy");
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("Init method call");
		con=config;
	}

	@Override
	public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("service method call 5");
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		out.println("welcome to servlet");
		out.println("Today="+new Date().toString());
		System.out.println(getServletConfig());
		System.out.println(getServletInfo());
		
		
	}
	
	@Override
	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		return con;
	}
	
	@Override
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return "my first dservlet";
	}
	 

}
