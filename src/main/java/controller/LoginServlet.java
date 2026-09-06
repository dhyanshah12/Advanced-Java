package controller;
import java.io.IOException;
import java.net.http.HttpClient;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Validators;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet{
	
		@Override
		protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
			
			System.out.println("LoginServlet::system()");
			
			String email  = req.getParameter("email");
			String password = req.getParameter("password");
			
			boolean isError = false;
			
			if(Validators.isBlank(email)) {
				isError = true;
				req.setAttribute("emailerr","Please Enter Email ");
			}
			if(Validators.isBlank(password)) {
				isError = true;
				req.setAttribute("passerr","Please enter Password ");
			}
			
			if(isError) {
				RequestDispatcher rd = req.getRequestDispatcher("Login.html");
				rd.forward(req, res);
			}
		}
}