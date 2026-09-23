package com.controller.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import com.util.Validators;

@WebFilter("/SignupServletF")
public class SignupFilterRegEx implements Filter{

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException 
	{
		String firstName = req.getParameter("firstname");
		String lastName = req.getParameter("lastname");
		boolean isError = false;
		String alphaRegEx = "[a-zA-Z]+";
		
		if(firstName.matches(alphaRegEx) == false) {
			isError = true;
			req.setAttribute("firstnameerror","Please Enter Valid FirstName ");
		}
		if(lastName.matches(alphaRegEx) == false) {
			isError = true;
			req.setAttribute("lastnameerr","Please Enter Valid LastName");
		}
		
		if(isError) {
			RequestDispatcher rd = req.getRequestDispatcher("FilterSignup.jsp");
			rd.forward(req, res);
		}else {
			chain.doFilter(req, res);
		}
	}
}
