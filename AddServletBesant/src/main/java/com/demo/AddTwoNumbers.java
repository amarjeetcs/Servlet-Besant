package com.demo;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class AddTwoNumbers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddTwoNumbers() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String str1 = request.getParameter("firstNum");
		int first = Integer.parseInt(str1);
		String str2 = request.getParameter("secondNum");
		int second = Integer.parseInt(str2);
		int result = first+second;
		PrintWriter out = response.getWriter();
		out.println("Sum is "+result);
		//RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
		//rd.forward(request, response);
	}

	
}
