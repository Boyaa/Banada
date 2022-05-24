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
		
		int gseq = Integer.parseInt(request.getParameter("g_seq"));
		BigDecimal g_seq = new BigDecimal(gseq);
		String g_nick = request.getParameter("g_nick");
		System.out.println(g_nick);
		String user_nick = request.getParameter("user_nick");
		String g_review = request.getParameter("g_review");
		String g_score = request.getParameter("g_score");
		String g_title = request.getParameter("g_title");
		GradeDAO  dao = new GradeDAO();
		Grade g_vo = new Grade(g_nick, user_nick, g_review, g_score, g_title);
		int cnt = dao.insertGrade(g_vo);
		
		
		if(cnt > 0) {
			System.out.println(" 리뷰 등록 성공");
			if(g_score.equals("banana1")) {
				dao.updateScore1(g_seq);
			} else if(g_score.equals("banana2")) {
				dao.updateScore2(g_seq);
			} else if(g_score.equals("banana4")) {
				dao.updateScore4(g_seq);
			} else if(g_score.equals("banana5")) {
				dao.updateScore5(g_seq);
			} 
			request.setAttribute("gPost", g_vo);
			response.sendRedirect("reviewpostview.jsp");
		
		} else {
			System.out.println("리뷰 등록 실패");
		}
		
		
		
		
		
	}

}
