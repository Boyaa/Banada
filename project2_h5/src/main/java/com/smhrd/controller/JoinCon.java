package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.User;
import com.smhrd.domain.UserDAO;


public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[JoinCon]");
		request.setCharacterEncoding("UTF-8");
		
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("pw");
		String user_nick = request.getParameter("nick");
		String user_addr = request.getParameter("address");
		String user_product = request.getParameter("product");
		
		User u_vo = new User(user_id, user_pw, user_nick, user_addr, user_product);

		UserDAO dao = new UserDAO();
		int cnt = dao.insertUser(u_vo);

		if (cnt > 0) { // 회원가입 성공
			System.out.println("회원가입 성공");
			RequestDispatcher rd = request.getRequestDispatcher("joinsuc.jsp");
			request.setAttribute("joinId", user_id);
			rd.forward(request, response);

		} else { // 회원가입 실패
			System.out.println("회원가입 실패");
			response.sendRedirect("joinfail.jsp");
		}
	}

}
