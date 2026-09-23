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
public class SignupFilter implements Filter 
{
	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		
		System.out.println("dofilter....called");
		
		String FirstName = req.getParameter("firstname");
		String LastName = req.getParameter("lastname");
		boolean isError = false;
		
		if(Validators.isBlank(FirstName))
		{
			isError = true;
			req.setAttribute("firstnameerr","Please Enter FirstName");
		}
		
		if(Validators.isBlank(LastName)) {
			isError = true;
			req.setAttribute("lastnameerr","Please Enter LastName");
		}
		
		if(isError) {
			
			RequestDispatcher rd = req.getRequestDispatcher("FilterSignup.jsp");
			rd.forward(req, res);
		}else {
			chain.doFilter(req, res);
		}	
	}
}
