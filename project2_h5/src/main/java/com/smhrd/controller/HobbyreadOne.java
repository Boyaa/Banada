package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Hobby;
import com.smhrd.domain.HobbyDAO;



public class HobbyreadOne extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		System.out.println("[HobbyReadOneCon]");

		int hnum = Integer.parseInt(request.getParameter("h_seq"));
		BigDecimal h_seq = new BigDecimal("hnum");
	 	String h_cate = request.getParameter("h_cate");
	 	System.out.println("data" + h_cate);
	    String h_title = request.getParameter("h_title");
	    System.out.println("data" + h_title);
	    String h_nick = request.getParameter("h_nick");
	    System.out.println("data" + h_nick);
		String h_content = request.getParameter("h_content");
		System.out.println("data" + h_content);
		int h_maxpeople = Integer.parseInt(request.getParameter("h_maxpeople"));
		int h_like = Integer.parseInt(request.getParameter("h_like"));
		
		HobbyDAO dao = new HobbyDAO();
		//Hobby hPost = new Hobby(h_title, h_nick, h_content, h_maxpeople, h_like);
		Hobby h_vo = dao.selecthpost(h_seq);
		
		// 만약 Con 써서 하면 어떻게 readOne(서블릿이름)을 호출할 수 있는지
		
		
		if(h_vo != null) {
			// 글 읽기 성공
			System.out.println("글 읽기 성공");
			
	
		} else {
			// 로그인 실패
			System.out.println("글 읽기 실패");
		
		// 얘는 필요 없다 ~!
	}
		
	}
}


