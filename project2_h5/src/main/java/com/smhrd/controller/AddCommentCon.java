package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.BoardDAO;
import com.smhrd.domain.Comm;


public class AddCommentCon extends HttpServlet {
	//댓글 작성버튼 누르면 여기로 요청을하고, 받아야하는 값들 받아주기
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[addComment]");
		int hseq = Integer.parseInt(request.getParameter("h_seq"));
		
		BigDecimal h_seq = new BigDecimal(hseq);
		
	
		String comm_content = request.getParameter("comm_content");
		String comm_nick = request.getParameter("comm_nick");
		
		
		
		Comm comm = new Comm(h_seq, comm_content, comm_nick);
		
		BoardDAO dao = new BoardDAO();
		
		
		
		
		int commNum = dao.addComment(comm);
		
		PrintWriter out = response.getWriter();
		out.print(commNum);
	}

}
