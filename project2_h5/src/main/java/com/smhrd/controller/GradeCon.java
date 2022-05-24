package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.Grade;
import com.smhrd.domain.GradeDAO;


public class GradeCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[GradeCon]");
		request.setCharacterEncoding("UTF-8");
		
		int gNum = Integer.parseInt(request.getParameter("g_seq"));
		BigDecimal g_seq = new BigDecimal("gNum");
		String g_nick = request.getParameter("g_nick");
		String user_nick = request.getParameter("user_nick");
		String g_review = request.getParameter("g_review");
		int g_score = Integer.parseInt(request.getParameter("g_score"));
		String g_title = request.getParameter("g_title");
		
		GradeDAO  dao = new GradeDAO();
		Grade g_vo = new Grade(g_seq);
		int cnt = dao.insertGrade(g_vo);
		
		if(cnt > 0) {
			System.out.println(" 리뷰 등록 성공");
			request.setAttribute("gPost", g_vo);
		
		} else {
			System.out.println("리뷰 등록 실패");
		}
		
		
		
		
	}

}
