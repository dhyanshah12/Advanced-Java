package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.StudentBean;

@WebServlet("/InternshipController")
public class InternshipController extends HttpServlet
{
	
	ArrayList<StudentBean> list = new ArrayList<StudentBean>();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String technology = req.getParameter("technology");
		String CollegeName = req.getParameter("collegename");
		boolean isError = false;
		
		if(name == null || name.isBlank()) {
			isError = true;
			req.setAttribute("nameerr","Please Enter Name");
		}
		
		if(email == null || email.isBlank()) {
			isError = true;
			req.setAttribute("emailerr","Please Enter Email");
		}
		
		if(technology == null || technology.isBlank()) {
			isError = true;
			req.setAttribute("technoerr","Please Enter technology");
		}
		
		if(CollegeName == null || CollegeName.isBlank()) {
			isError = true;
			req.setAttribute("clgnameerr","Please Enter CollegeName");
		}
		
		if(isError) {
			RequestDispatcher rd = req.getRequestDispatcher("InternReg.jsp");
			rd.forward(req, res);
		}else {
			
			StudentBean bean = new StudentBean();
			bean.setName(name);
			bean.setEmail(email);
			bean.setTechnology(technology);
			bean.setCollegename(CollegeName);
			
			list.add(bean);
			req.setAttribute("list",list);
			
			RequestDispatcher rd = req.getRequestDispatcher("InternSuccess.jsp");
			rd.forward(req, res);
		}
	}
}
