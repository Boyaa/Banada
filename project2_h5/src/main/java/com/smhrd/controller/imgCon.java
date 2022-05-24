package com.smhrd.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


public class imgCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
		String filename = "";
        int sizeLimit = 15 * 1024 * 1024; // 한번에 올릴 수 있는 파일 용량 : 15M로 제한
       
        String realPath = "C:\\Users\\smhrd\\git\\project2_h5\\project2_h5\\src\\main\\webapp\\image";
        System.out.println(realPath);
        
//        File dir = new File(realPath);
//        if (!dir.exists()) dir.mkdirs();
//              
//        MultipartRequest multpartRequest = null;
//        multpartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
//
//        System.out.println("변환객체" + multpartRequest);
//        String title = multpartRequest.getParameter("title"); 
//        System.out.println("타이틀" + title);
//       // form내의 input name="title" 인 요소의 값을 가져옴
//
//        filename = multpartRequest.getFilesystemName("photo");
//        System.out.println("경로" + filename);
//       // form내의 input name="photo" 인 요소의 값을 가져옴
//             
//        //DB에 realPath 를 저장 해주요
        
        
        
        PrintWriter out = response.getWriter();
        out.print(realPath);

	}

}
