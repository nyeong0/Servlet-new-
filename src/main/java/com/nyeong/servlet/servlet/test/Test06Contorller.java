package com.nyeong.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06")
public class Test06Contorller extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		String number1 =  request.getParameter("number1");
		String number2 =  request.getParameter("number2");
		
		int numberA = Integer.parseInt(number1);
		int numberB = Integer.parseInt(number2);
		
		int plus = numberA+numberB;
		int minus = numberA-numberB;
		int multi = numberA*numberB;
		int div = numberA/numberB;
		
		
		out.println("{\"addition\": " + plus + ","
					+ "\"subtraction\": " + minus + ","
					+ "\"multiplication\": " + multi + ","
					+ "\"division\": " + div + "}");
		
		
		
		
		
	}

}
