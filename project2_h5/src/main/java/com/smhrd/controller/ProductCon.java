package com.smhrd.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.domain.Product;
import com.smhrd.domain.ProductDAO;


public class ProductCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String pd_title = request.getParameter("pd_title");
		String pd_content = request.getParameter("pd_content");
		int pd_price = Integer.parseInt(request.getParameter("pd_price"));
		String pd_cate = request.getParameter("pd_cate");
        String pd_option= request.getParameter("pd_option");
		
		Product product = new Product(pd_title, pd_content, pd_content, pd_price, pd_cate, pd_option);
		
		ProductDAO dao = new ProductDAO();
		int cnt = dao.insertProduct(product);
		
		if(cnt>0) {
			System.out.println("물건 카테고리 글 등록 성공");
		} else {
			System.out.println("물건 카테고리 글 등록 실패");
		}
		
		  String filename = "";
	      int sizeLimit = 15 * 1024 * 1024; // 한번에 올릴 수 있는 파일 용량 : 15M로 제한
	     
	      
	      //   상대경로를 절대경로로 가져와야 
	      String realPath = "C:\\Users\\smhrd\\git\\project2_h5\\project2_h5\\src\\main\\webapp\\image";
	      System.out.println(realPath);
	      
	      //upload 폴더가 없는 경우 폴더를 만들어라
	      File dir = new File(realPath);
	      if (!dir.exists()) dir.mkdirs();
	            
	      MultipartRequest multpartRequest = null;
	      multpartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());


	      String title = multpartRequest.getParameter("title"); 
	     // form내의 input name="title" 인 요소의 값을 가져옴

	      filename = multpartRequest.getFilesystemName("photo");
	     // form내의 input name="photo" 인 요소의 값을 가져옴
	           
	      PrintWriter out = response.getWriter();
	        out.print(realPath);
	}
		

	}


