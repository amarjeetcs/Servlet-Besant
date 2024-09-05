package com.amarjeet.servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/simple")
public class ServletSingServletInterface implements Servlet {
	ServletConfig config = null;

	public ServletConfig getServletConfig() {
		return config;
	}

	public String getServletInfo() {
		return "copyright 2007-1010";
	}

	
	public void service(ServletRequest req, ServletResponse res) throws IOException, ServletException {
		System.out.println("service is calling after initilization");
		res.setContentType("text/html");

		PrintWriter out = res.getWriter();
		out.print("<html><body>");
		out.print("<b>Hello simple servlet service working</b>");
		out.print("</body></html>");

	}

	public void destroy() {
		System.out.println("servlet is destroyed");
	}
	
	public void init(ServletConfig config) {
		this.config = config;
		System.out.println("servlet is initialized");
	}


}