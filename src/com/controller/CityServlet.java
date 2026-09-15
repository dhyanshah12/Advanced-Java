package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.UserBean;
import com.util.Validators;

@WebServlet("/CityServlet")
public class CityServlet extends HttpServlet
{
	ArrayList<String>list = new ArrayList<String>();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		String city = req.getParameter("city");
		boolean isError = false;
		
//		if(Validators.isBlank(city)) {
//			isError = true;
//			
//		}
		if(isError) {
			RequestDispatcher rd = req.getRequestDispatcher("InputCity.jsp");
			rd.forward(req, res);
		}else {
			
			list.add(city);
			req.setAttribute("list",list);
			RequestDispatcher rd = req.getRequestDispatcher("CitySuccess.jsp");
			rd.forward(req, res);
		}
	}
}
