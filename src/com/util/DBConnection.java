package com.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection 
{
	public static void main(String[] args) 
	{
		String url = "jdbc:mysql://localhost:3306/25advjava";
		String userName = "root";
		String password = "root";
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection conn = DriverManager.getConnection(url,userName,password);
			
			
			System.out.println(conn);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
