<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src = "jquery-3.6.0.js"></script>
    <link rel="stylesheet" href="assets/post.css">
</head>
<body>
    
<div class="All-box flex text-white">
  <!-- 로고-->
  <div class = "nav">
    <div class = "logo">
      <a href ="main.html">바나다</a>
    </div>
    <div class ="nav_but" style ="display: flex; justify-content: space-between;">
			<c:choose>
               <c:when test="${empty loginUser}">
				<a href ="object.jsp">소분해요</a>
				<a href ="peoplecategory.jsp">재능나눔</a>
				<a href ="post.jsp">자유게시판</a>
                <a href="login.jsp">로그인</a>
                <a href="join.jsp" >회원가입</a>
               </c:when>
             
               <c:otherwise>
				<a href ="object.jsp">소분해요</a>
				<a href ="peoplecategory.jsp">재능나눔</a>
				<a href ="post.jsp">자유게시판</a>
				<a href ="LogoutCon" style ="margin-right:200px">로그아웃</a>
               </c:otherwise>
            </c:choose>   
    </div>
</div>
    <!--요소 시작-->
    <div class="Contents-Box" style = "padding : 50px 200px 50px 200px">
      <!--제목-->
      <form  style = "text-align:center; height: 120px;">
        <div class="Title">
          <span style = "font-size:60px; font-family:'ibm'; color : #ffc107;">
            자유게시판
          </span>
        </div>
      </form>
      <!--목록-->
      <div class="List-Box box-height">
        <ul >
          <li>
            <span>목록</span>
          </li>
          <li>
            <span>닉네임</span>
          </li>
          <li>
            <span>제목</span>
          </li>
          <li>
            <span>작성일</span>
          </li>
        </ul>
        <!--1-->
        <!--{{#each contents}}-->
        <a href="freepostview.jsp" class="List-1 flex">
          <div>
            <span>
              01
            </span>
          </div>
          <div>
            <span>
              facere
            </span>
          </div>
          <div>
            <span>
              오늘 날씨가 너무 좋네요~
            </span>
          </div>
          <div>
            <span>
              2021.09.27 15 : 00
            </span>
          </div>
        </a>
      </div>
      
       <!--숫자-->
      <form class="Form-Box List-Move-Number" method="post">
        <div class="Number">
          <!--1-->
          <div class="mave-btn-1">
            <div class="page-text 1-page-text">
              <span id="li{{this}}">
                <!--{{this}}-->
                1
              </span>
            </div>
          </div>
          <!--2-->
          <div class="mave-btn-2">
            <div class="page-text 1-page-text">
              <span id="li{{this}}">
                <!--{{this}}-->
                2
              </span>
            </div>
          </div>
          <!--3-->
          <div class="mave-btn-3">
            <div class="page-text 1-page-text">
              <span id="li{{this}}">
                <!--{{this}}-->
                3
              </span>
            </div>
          </div>
        </div>
        <!--작성하기 버튼-->
        <div class="Up-Btn">
          <input class = "style-bt" type="button" value="글쓰기" name="submit" onclick="location.href='freepostwrite.jsp'"/>
        </div>
      </form>
    </div>
    <!--top-bar-->
</div>
</div>
</body>
</html>