package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.Safety;
import com.smhrd.domain.SafetyDAO;


public class SafetyCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[SafetyCon]");
		request.setCharacterEncoding("UTF-8");
		
		String safetyUser1 = request.getParameter("safetyUser1");
		String safetyUser2 = request.getParameter("safetyUser2");
		String safetyAddr = request.getParameter("safetyAddr");
		String meetingTime = request.getParameter("meetingTime");
		String meetingTime2 = String.valueOf(meetingTime.replace("T"," "));
		String safetyMemo = request.getParameter("safetyMemo");
		
		Safety s_vo = new Safety(safetyUser1, safetyUser2, safetyAddr, meetingTime, meetingTime2, safetyMemo);

		SafetyDAO dao = new SafetyDAO();
		int cnt = dao.insertSafety(s_vo);

		System.out.println(meetingTime2);
		if (cnt > 0) { 
			System.out.println("안심등록 성공");
			RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
			request.setAttribute("MT", meetingTime2);
			request.setAttribute("nick", safetyUser1);
			rd.forward(request, response);

		} else { 
			System.out.println("안심등록 실패");
			response.sendRedirect("main.jsp");
		}
		
	}
	

}
