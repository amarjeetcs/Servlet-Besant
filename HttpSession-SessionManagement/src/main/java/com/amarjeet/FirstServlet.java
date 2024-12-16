package com.amarjeet;

import java.io.*;  
import javax.servlet.*;  
import javax.servlet.http.*;  
  
public class FirstServlet extends HttpServlet {  
    public void doGet(HttpServletRequest request, HttpServletResponse response) {  
        try {  
            response.setContentType("text/html");  
            PrintWriter out = response.getWriter();  
              
            String n = request.getParameter("userName");  
            out.print("Welcome " + n);  
              
            // Create or retrieve an existing session
            HttpSession session = request.getSession();  
            session.setAttribute("uname", n);  
      
            // Provide a link to visit SecondServlet
            out.print("<a href='servlet2'>Visit</a>");  
                      
            out.close();  
        } catch(Exception e) { 
            System.out.println(e); 
        }  
    }  
}  
