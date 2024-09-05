package com.basic.practice;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/add")
public class AddServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve the numbers from the form
        int num1 = Integer.parseInt(request.getParameter("num1"));
        int num2 = Integer.parseInt(request.getParameter("num2"));
        
        // Calculate the sum
        int sum = num1 + num2;
        
        // Set the content type and get the writer
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        // Generate the HTML response
        out.print("<html>");
        out.print("<body>");
        out.print("<h2>Result</h2>");
        out.print("<p>Number 1: " + num1 + "</p>");
        out.print("<p>Number 2: " + num2 + "</p>");
        out.print("<p>Sum: " + sum + "</p>");
        out.print("</body>");
        out.print("</html>");
    }
}
