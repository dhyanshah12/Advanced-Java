package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AmazonLogoutController")
public class AmazonLogoutController extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		Cookie c = new Cookie("loggedIn","no");
		c.setMaxAge(0);
		res.addCookie(c);
		
		res.sendRedirect("AmazonLogin.jsp");
	}
}
