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
		request.setCharacterEncoding("UTF-8");
		
		System.out.println("[ProductCon3]");

		  String filename = "";
	      int sizeLimit = 15 * 1024 * 1024; // 한번에 올릴 수 있는 파일 용량 : 15M로 제한
	      String realPath = "C:\\Users\\smhrd\\git\\project2_h5\\project2_h5\\src\\main\\webapp\\image\\";
	      
	     // String realPath = "image/"; // <질문> + filename을 해주면 그 사진 경로 ?? 
	      System.out.println("인서트" + realPath); // 저장된 공간 
	      
	      
//	      File dir = new File(realPath);
//	      if (!dir.exists()) dir.mkdirs();
	            
	      MultipartRequest multpartRequest = null;
	      multpartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());

	      	String pd_nick = multpartRequest.getParameter("pd_nick");
			System.out.println(pd_nick);
			String pd_title = multpartRequest.getParameter("pd_title");
			System.out.println(pd_title);
			String pd_cate = multpartRequest.getParameter("pd_cate");
			String pd_name = multpartRequest.getParameter("pd_name");
			String pd_content = multpartRequest.getParameter("pd_content");
			System.out.println(pd_content);

			int pdprice = Integer.parseInt(multpartRequest.getParameter("pd_price"));
			System.out.println(pdprice); // 
			BigDecimal pd_price = new BigDecimal(pdprice);
			String pd_option= multpartRequest.getParameter("pd_option");
	      
			
			
	     // String title = multpartRequest.getParameter("title"); 
	     // form내의 input name="title" 인 요소의 값을 가져옴

	      filename = multpartRequest.getFilesystemName("uploadImg");
	     // form내의 input name="photo" 인 요소의 값을 가져옴 
	           
	       System.out.println(filename);
	       String change = realPath+filename; // 사진 경로 
	       String pd_pathonce = change.replace('\\', '/');
	       String pd_path = change.replace('C:/Users/smhrd/git/project2_h5/project2_h5/src/main/webapp/', '' );
	       System.out.println(pd_path);
	     
	       
	      // pd_path를 받아와야 하는데 빨간줄 뜸 ! int 못 받는건 모두 BigDecimal로 바꿔서 해결 
	       											
	       Product product = new Product(pd_title, pd_content, pd_nick, pd_name, pd_price, pd_cate, pd_option, pd_path);
	       													
	        
	        System.out.println(product.getPd_path());
			ProductDAO dao = new ProductDAO();
			int cnt = dao.insertProduct(product);
			
			if(cnt>0) {
				System.out.println("물건 카테고리 글 등록 성공");
				response.sendRedirect("object.jsp");
			} else {
				System.out.println("물건 카테고리 글 등록 실패");
			}
			
	}
		

	}


