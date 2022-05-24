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
    <link rel="stylesheet" href="assets/myreview.css">
</head>
<body>
    
<div class="All-box flex text-white">
  <!-- 로고-->
  <div class = "nav">
    <div class = "logo">
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
    <!--요소 시작-->
    <div class="Contents-Box" >
      <!--제목-->
      <form  style = "text-align:center; height: 120px;">
        <div class="Title">
          <span style = "font-size:60px; font-family:'ibm'; ">
            마이리뷰    
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
        <a href="reviewpostview.jsp" class="List-1 flex">
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
    </div>  
    
   
    
</div>
        <div style="max-width:1000px;margin:auto; text-align:center; margin-top:10px;">
        	<div class="Up-Btn" style="float:right;">
        	<input class = "style-bt" type="button" value="글쓰기" name="submit" style="font-family:ibm; width:100px;
        	border:none; cursor:pointer; border-radius:25px; background:#ffc107; font-size:20px; color:white;" />
        	</div>  
		</div>  
		
		 <!-- footer -->
    <footer class = "footer" style="    background-color: #e5e5e5;
    padding-top: 4rem;
    padding-bottom: 4rem;
    box-sizing: border-box;
    text-align :center;
    margin-top: 320px;">
        <ul class = "list" style="display:flex; width: 500px;;
  margin-left: auto;
  margin-right: auto;">
            <li class = "list-object" style="list-style:none; padding-left:20px;">
                <a href = "#"  style="text-decoration: none; color:black;">About</a>
            </li>
            <li class = "list-object" style="list-style:none; padding-left:20px;">⋅</li>
            <li class = "list-object" style="list-style:none; padding-left:20px;">
                <a href = "#" style="text-decoration: none; color:black;">Contact</a>
            </li>
            <li class = "list-object" style="list-style:none; padding-left:20px;">⋅</li>
            <li class = "list-object" style="list-style:none; padding-left:20px;">
                <a href = "#" style="text-decoration: none; color:black;">Terms of Use</a>
            </li>
            <li class = "list-object" style="list-style:none; padding-left:20px;">⋅</li>
            <li class = "list-object" style="list-style:none; padding-left:20px;">
                <a href = "#" style="text-decoration: none; color:black;">Privacy Policy</a>
            </li>
        </ul>
        <br>
        <p>© Your Website 2022. Made by H5</p>
    </footer>
</body>
</html>