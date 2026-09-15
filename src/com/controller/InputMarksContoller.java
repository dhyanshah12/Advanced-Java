package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.UserBean;
import com.util.Validators;

@WebServlet("/InputMarksController")
public class InputMarksContoller extends HttpServlet
{
	@Override
	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
			
		String Name = req.getParameter("name");
		String java = req.getParameter("java");
		String python = req.getParameter("python");
		String javaScript = req.getParameter("javascript");
		boolean isError = false;
		
		if(Validators.isBlank(Name)) {
			isError = true;
			req.setAttribute("nameerr","please Enter Name");
		}else {
			req.setAttribute("nameValue",Name);
		}
		if(Validators.isBlank(java)) {
			isError = true;
			req.setAttribute("javaerr","Please Enter Marks");
		}else {
			req.setAttribute("javaValue",java);
		}
		if(Validators.isBlank(python)) {
			isError = true;
			req.setAttribute("pyerr","Please Enter Marks");
		}else {
			req.setAttribute("pyValue",python);
		}
		if(Validators.isBlank(javaScript)) {
			isError = true;
			req.setAttribute("jserr","Please Enter Marks");
		}else {
			req.setAttribute("jsValue", javaScript);
		}
		
		if(isError) {
			RequestDispatcher rd = req.getRequestDispatcher("InputMarks.jsp");
			rd.forward(req, res);
		}else {
			
			UserBean userbean = new UserBean();
			
			RequestDispatcher rd = req.getRequestDispatcher("MarkSuccess.jsp");
			rd.forward(req, res);
		}
	}
}
