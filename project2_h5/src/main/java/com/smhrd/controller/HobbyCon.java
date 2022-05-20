package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.Hobby;
import com.smhrd.domain.HobbyDAO;


public class HobbyCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	  	
		 
	    String h_title = request.getParameter("h_title");
		String h_content = request.getParameter("h_content");
		String h_cate = request.getParameter("h_cate");
		int h_maxpeople = Integer.parseInt(request.getParameter("h_maxpeople"));
		
		
		HobbyDAO dao = new HobbyDAO();
		// hobby 객체에 담기 - 글 쓸 때
		Hobby hobby = new Hobby(h_title, h_content, h_cate, h_maxpeople);
		// selectHobby - 글 읽을 때
		
		int cnt = dao.insertHobby(hobby);
		
		if(cnt>0) {
			System.out.println("취미 카테고리 글 등록 성공");
		} else {
			System.out.println("취미 카테고리 글 등록 실패");
		}
	}

}
