<%@page import="com.smhrd.domain.Grade"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="com.smhrd.domain.GradeDAO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.domain.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/freepostview.css">
    <title>Document</title>
    
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>

	<% 
   	  int seq = Integer.parseInt(request.getParameter("g_seq"));
	  GradeDAO dao = new GradeDAO();
	  System.out.println("글번호 Postview: " +seq);
	   
	  BigDecimal g_seq = new BigDecimal(seq);
	  System.out.println("test"+ g_seq);
	  Grade gPost = dao.selectgpost(g_seq);
	  
	%>
	
     <!-- nav -->
     <div class = "nav">
        <div class = "logo" >
            <a href ="main.jsp">바나다</a>
        </div>
     <div class ="nav_but" style ="display: flex; justify-content: space-between;">
         <c:choose>
               <c:when test="${empty loginUser}">
            <a href ="object.jsp">소분해요</a>
            <a href ="peoplecategory.jsp">재능나눔</a>
            <a href ="reviewpost.jsp">나눔후기</a>
                <a href="login.jsp">로그인</a>
                <a href="join.jsp" >회원가입</a>
               </c:when>
             
               <c:otherwise>
            <a href ="object.jsp">소분해요</a>
            <a href ="peoplecategory.jsp">재능나눔</a>
            <a href ="reviewpost.jsp">나눔후기</a>
            <a href ="LogoutCon" style ="margin-right:200px">로그아웃</a>
               </c:otherwise>
            </c:choose>      

    </div>
    </div>
    <alticle >
        <section class="pro" style="border-top:2px solid #eaeaea; ">
            <div class="alticle-image">
                <img src="assets/post_image/hruru.png" style="width:50px; height:50px; -webkit-border-radius:50%; margin-right:10px"  >
            </div>
<<<<<<< HEAD
            <div style="width:250px; margin-right:380px;">
                <p id = "id"><%=dao.selectgpost(g_seq).getG_nick() %></p>
=======
            <div style="width:250px; margin-right:180px;">
                <p id = "id">글쓴이</p>
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-BigData-4/project2_h5.git
                <p id = "live">광주광역시 남구 봉선동</p>
            </div>
            
            <div>
			<button id="like" style="margin-left: 80px;">반하다💗</button>
			</div>
			<div>
			<p class="count">1개</p>
			</div>

        </section>

        <section class = "article-description">
            <h1 id="content"><%=dao.selectgpost(g_seq).getG_title() %></h1>
            <div id ="article-detail">
            <p><%=dao.selectgpost(g_seq).getG_review() %></p>
        
            </div>
        </section>
        
      				

   

    <footer class = "footer">
        <ul class = "list">
            <li class = "list-object">
                <a href = "#">About</a>            </li>
            <li class = "list-object">⋅</li>
            <li class = "list-object">
                <a href = "#">Contact</a>
            </li>
            <li class = "list-object">⋅</li>
            <li class = "list-object">
                <a href = "#">Terms of Use</a>
            </li>
            <li class = "list-object">⋅</li>
            <li class = "list-object">
                <a href = "#">Privacy Policy</a>
            </li>
        </ul>
        <br>
        <p>© Your Website 2022. Made by H5</p>
    </footer>
</body>
</html>