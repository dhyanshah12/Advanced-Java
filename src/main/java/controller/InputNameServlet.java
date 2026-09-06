package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Validators;

@WebServlet("/InputNameServlet")
public class InputNameServlet extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String Password = req.getParameter("password");
		boolean isError = false;
//		String alphaRegEx = "[a-zA-Z]+";
//		
//		if(Validators.isBlank(name)) {
//			isError = true;
//			req.setAttribute("nameerr","Please Enter Name");
//		}else if(!Validators.isBlank(name)) {
//			req.setAttribute("nameError", "Please Enter Valid Name");
//			req.setAttribute("nameValue",name);
//		}else {
//			req.setAttribute("nameValue",name);
//		}
//		
//		
//		if(Validators.isBlank(email)) {
//			isError = true;
//			req.setAttribute("emailerr","Please Enter Email");
//		}else {
//			req.setAttribute("emailValue",email);
//		}
//		if(Validators.isBlank(Password)) {
//			isError = true;
//			req.setAttribute("passerr","Please Enter Password");
//		}
//		
		if(isError) {
			RequestDispatcher rd = req.getRequestDispatcher("InputName.jsp");
			rd.forward(req, res);
		}else {
			RequestDispatcher rd = req.getRequestDispatcher("OutputName.jsp");
			rd.forward(req, res);
		}
	}
}
