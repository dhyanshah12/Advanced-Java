package com.controller;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/ServletLifeCycle")
public class ServletLifeCycle extends HttpServlet {

	@Override
	public void init() {
		System.out.println("Init() LifeCycleCalled....");
	}
	@Override
	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("Service() LifeCycleCalled....");
	}
	@Override
	public void destroy() {
		System.out.println("Destroy() LifeCycleCalled....");
	}
}
