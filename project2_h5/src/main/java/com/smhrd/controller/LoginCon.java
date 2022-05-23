package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.User;
import com.smhrd.domain.UserDAO;


public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[LoginCon]");
		request.setCharacterEncoding("UTF-8");


		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("pw");

		
		User u_vo = new User(user_id, user_pw);

		UserDAO dao = new UserDAO();
		User loginUser = dao.selectUser(u_vo);

		if (loginUser != null) {
			// 로그인 성공
			System.out.println("로그인 성공");
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
			response.sendRedirect("loginsuc.jsp");
			

		} else {
			// 로그인 실패
			System.out.println("로그인 실패");
			response.sendRedirect("loginfail.jsp");
		}
	}

}
