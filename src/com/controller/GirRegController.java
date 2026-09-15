package com.controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.UserBean;
import com.util.Validators;

@WebServlet("/GirRegController")
public class GirRegController extends HttpServlet
{
	int count = 0;
	
	ArrayList<UserBean> users = new ArrayList<>();
	
	public void service(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		String name = req.getParameter("name");
		String gender = req.getParameter("gender");
		String city = req.getParameter("city");
		String contact = req.getParameter("contact");
		boolean isError = false;
		
		if(Validators.isBlank(name)) {
			isError = true;
	
			
			req.setAttribute("nameerr","Please Enter Name");
		}else if(!Validators.isValidAlpha(name)) {
			isError = true;
			req.setAttribute("nameerr","Please Enter Valid Name");
			req.setAttribute("nameValue",name);
		}else {
			req.setAttribute("nameValue",name);
		}
		
		if(Validators.isBlank(gender)) {
			isError = true;
			req.setAttribute("generr","Please Select Gender");
		}else {
			req.setAttribute("genValue",gender);
		}
		
		if(Validators.isBlank(city) || city.equals("-1")) {
			isError = true;
			req.setAttribute("cityerr","Please Select City");
		}else {
			req.setAttribute("cityValue",city);
		}
		
		if(Validators.isBlank(contact)) {
			isError = true;
			req.setAttribute("conterr","Please Enter Contact");
		}else {
			req.setAttribute("contactValue", contact);
//			if(contact.contains(contact)) {
//				isError = true;
//				req.setAttribute("error","Mobile Number Already Registred");
//			}
		}
		
		if(isError) {
			
			//Fail
			RequestDispatcher rd = req.getRequestDispatcher("GirReg.jsp");
			rd.forward(req, res);
		}
		else 
		{
			 //Success
			count++;
			
			UserBean userBean = new UserBean();
			userBean.setName(name);
			userBean.setCity(city);
			userBean.setContact(contact);
			userBean.setGender(gender);
			userBean.setRegisterationDateTime(LocalDateTime.now());
			users.add(userBean);
			
			req.setAttribute("count",count);
			req.setAttribute("users",users);
			System.out.println("Count"+count);
			RequestDispatcher rd = req.getRequestDispatcher("GirSuccess.jsp");
			rd.forward(req, res);
		}
	}
}
