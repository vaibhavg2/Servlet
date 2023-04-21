package com.serv;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

@SuppressWarnings("serial")
public class SecoundProgram extends GenericServlet {

	@Override
	public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Genric sevlet");
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.println("date"+new Date().toString());
		
	}
	

}
