package com.controller.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter("/AmazonWishList.jsp")
public class LoginCheckFilter implements Filter
{
	@Override
	public void doFilter(ServletRequest request, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException 
	{
		
		HttpServletRequest req = (HttpServletRequest) request;
		
		Cookie allCookie[] = req.getCookies(); //access cookies from browser --> server
		
		boolean isLogin = false;
		
		if(allCookie != null) {
			for(Cookie tmp : allCookie) {
				if(tmp.getName().equals("loggedIn")) {
					isLogin = true;
				}
			}
		}
		
		if(isLogin) {
			chain.doFilter(req, resp);
		}else {
			
			HttpServletResponse res = (HttpServletResponse) resp;
			res.sendRedirect("AmazonLogin.jsp");
		}
	}
}
