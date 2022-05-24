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
		System.out.println(pd_price);
		String pd_cate = request.getParameter("pd_cate");
        String pd_option= request.getParameter("pd_option");
		
		
		  String filename = "";
	      int sizeLimit = 15 * 1024 * 1024; // 한번에 올릴 수 있는 파일 용량 : 15M로 제한
	     
	      
	      //   상대경로를 절대경로로 가져와야 
	      String realPath = "C:\\Users\\smhrd\\git\\project2_h5\\project2_h5\\src\\main\\webapp\\image"; // <질문> + filename을 해주면 그 사진 경로 ?? 
	      System.out.println(realPath);
	      
	      //upload 폴더가 없는 경우 폴더를 만들어라
	      File dir = new File(realPath);
	      if (!dir.exists()) dir.mkdirs();
	            
	      MultipartRequest multpartRequest = null;
	      multpartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());


	      String title = multpartRequest.getParameter("title"); 
	     // form내의 input name="title" 인 요소의 값을 가져옴

	      filename = multpartRequest.getFilesystemName("uploadImg");
	     // form내의 input name="photo" 인 요소의 값을 가져옴 
	           
	       System.out.println(filename);
	       System.out.println(realPath+"\\"+filename);
	       String pd_path = realPath+"\\"+filename;
	       Product product = new Product(pd_title, pd_content, pd_content, pd_price, pd_cate, pd_option, pd_path);
			// <질문> 여기서 realPath 넣어주면 같은 경로만 들어가는 거 아닌가욤 ?!
	        
	        System.out.println(product.getPd_path());
			ProductDAO dao = new ProductDAO();
			int cnt = dao.insertProduct(product);
			
			if(cnt>0) {
				System.out.println("물건 카테고리 글 등록 성공");
				response.sendRedirect("object.jsp");
			} else {
				System.out.println("물건 카테고리 글 등록 실패");
			}
			
	      
	      PrintWriter out = response.getWriter();
	        out.print(realPath);
	}
		

	}


