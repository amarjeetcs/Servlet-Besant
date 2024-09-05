package com.basic.practice;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

import org.apache.catalina.connector.Response;

public class HelloWorldServlet extends GenericServlet{

	
	@Override
	
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		PrintWriter out=res.getWriter();
		out.print("<html>");
		out.print("<body>");
		out.print("<h1>Welcome to world of servlet</h1>");
		out.print("</html>");
		out.print("</body>");
		
		
	}
	

}
