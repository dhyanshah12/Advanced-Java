package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AmazonLoginController")
public class AmazonLoginController extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		if(email.equalsIgnoreCase("user@gmail.com") && password.equals("user")) 
		{
			Cookie c = new Cookie("loggedIn","yes");
			c.setMaxAge(60*60*60*7);//7 days
			res.addCookie(c);
			res.sendRedirect("AmazonWishList.jsp");
		}else {
			req.setAttribute("error","Invalid Credintial");
			RequestDispatcher rd = req.getRequestDispatcher("AmazonLogin.jsp");
			rd.forward(req, res);
		}
	}
}
