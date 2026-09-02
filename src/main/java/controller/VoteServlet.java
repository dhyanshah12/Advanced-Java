package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/VoteServlet")
public class VoteServlet extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String birthYear = req.getParameter("birthyear");
		String gender = req.getParameter("gender");
		String voteStatus="";
		String error = "";
		Boolean isError = false; 
		String alphaRegEx = "[a-zA-Z]+";
		String regex = "(19[0-9]{2}|20[0-2][0-9]|2030)";
		//Validation
		if(name==null || name.isBlank()) {
			error = "Please enter Name<br>";
			isError = true;
		}else if(name.matches(alphaRegEx)==false) {
			error = "Please enter Valid Name<br>";
			isError = true;
		}
		 if(birthYear==null || birthYear.isBlank()) {
			error += "Please enter Birthyear<br>";
			isError = true;
			
		}else if(birthYear.matches(regex)==false) {
			error = "Please enter Valid BirthYear<br>";
			isError = true;
		}
		 
		 if(gender == null || gender.isBlank()) {
			error += "Please enter gender<br>";
			isError = true;
		}
		
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();	
		
		if(isError==true) {
			out.print("<font color=red>"+error+"</font>");	
		}else {
			Calendar c =  Calendar.getInstance();
			
			int year = c.get(Calendar.YEAR);
			int birthyear = Integer.parseInt(birthYear);
			int age = year-birthyear;
			
			if(gender.equals("male") && age >= 21) {
				voteStatus = "Eligible for vote";
			}else if(gender.equals("female") && age >= 23){
				voteStatus = "Eligible for vote";
			}else {
				voteStatus = "NOT Eligible for voting";
			}
			
			
			out.print("Name =>"+name+"<br>");
			out.print("Age =>"+ age+"<br>");
			out.print("Gender =>"+gender+"<br>");
			out.print("VoteStatus =>"+voteStatus+"<br>");
		}
		System.out.println("Voteservlet call....");
	}
}
