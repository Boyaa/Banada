package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.UserDAO;


public class NickCheckCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user_nick = request.getParameter("user_nick");
		
		UserDAO dao = new UserDAO();
		boolean checkNick = dao.nickCheck(user_nick);  //-> 응답데이터
		// check : 사용할 수 있는 아이디 -> true
		// 		 : 사용할 수 없는 아이디 -> false
		

		//클라이언트에게 응답
		PrintWriter out = response.getWriter();
		//check -> boolean
		//print -> 텍스트 출력 (boolean -> 문자열"true"/"false")
		out.print(checkNick);
	}

}
