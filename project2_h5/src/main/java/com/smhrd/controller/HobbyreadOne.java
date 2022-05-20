package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.Hobby;
import com.smhrd.domain.HobbyDAO;


public class HobbyreadOne extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
	  	
	 	
	 	String h_num = request.getParameter("h_seq");
	 	BigDecimal h_seq = new BigDecimal("h_num");
	    String h_title = request.getParameter("h_title");
	    String h_nick = request.getParameter("h_nick");
		String h_content = request.getParameter("h_content");
		String h_cate = request.getParameter("h_cate");
		int h_maxpeople = Integer.parseInt(request.getParameter("h_maxpeople"));
		int h_like = Integer.parseInt(request.getParameter("h_like"));
		
		Hobby h_vo = new Hobby(h_seq);
		HobbyDAO dao = new HobbyDAO();
		
		Hobby hobbyPost = new Hobby(h_title, h_nick, h_cate, h_content, h_maxpeople, h_like);
		
	}

}
