package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.BoardDAO;


public class DeleteCommentCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int comm_seq = Integer.parseInt(request.getParameter("comm_seq"));
		
		BoardDAO dao = new BoardDAO();
		dao.deleteComment(comm_seq);
	
	}

		
		
	

}
