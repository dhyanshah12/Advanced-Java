package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CookieCityController")
public class CookieCityController extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		String city = req.getParameter("city");
		
		Cookie c = new Cookie("city",city);
		
		res.addCookie(c);
		
		res.sendRedirect("CookieSuccess.jsp");
	}
}
