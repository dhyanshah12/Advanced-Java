package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InputNameServlet")
public class InputNameServlet extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		boolean isError = false;
		String error = "";
		
		if(name==null || name.isBlank()) {
			isError = true;
			error = "Please Enter Name";
		}
		
		if(isError) {
			RequestDispatcher rd = req.getRequestDispatcher("InputName.jsp");
			rd.forward(req, res);
		}else {
			RequestDispatcher rd = req.getRequestDispatcher("OutputName.jsp");
			rd.forward(req, res);
		}
	}
}
