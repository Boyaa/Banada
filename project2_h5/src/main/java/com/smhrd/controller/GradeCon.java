package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class GradeCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[GradeCon]");
		request.setCharacterEncoding("UTF-8");
		
		String g_nick = request.getParameter("g_nick");
		String user_nick = request.getParameter("user_nick");
		String g_review = request.getParameter("g_review");
		
		
		
	}

}
