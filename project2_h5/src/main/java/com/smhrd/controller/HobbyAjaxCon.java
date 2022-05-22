package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.HobbyDAO;


public class HobbyAjaxCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String status = request.getParameter("status");
		int h_seq = Integer.parseInt(request.getParameter("h_seq"));
		
		HobbyDAO dao = new HobbyDAO();
		dao.updateLike(h_seq, status);
		int h_like = dao.getLike(h_seq);
		
		PrintWriter out = response.getWriter();
		out.print(h_like);
	}

}
