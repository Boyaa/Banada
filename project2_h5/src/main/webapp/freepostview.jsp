<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/freepostview.css">
    <title>Document</title>
</head>
<body>
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
    <div>
        <div class = "img">
            <img class = "img-con" src="assets/post_image/jiyung.png" style="cursor:pointer; max-height: 200%; width: auto;WIDTH: 650px" onclick="window.open(this.src)">
        </div>
    </div>


    <alticle >
        <section class="pro">
            <div class="alticle-image">
                <img src="assets/post_image/hruru.png" style="width:50px; height:50px; -webkit-border-radius:50%; margin-right:10px"  >
            </div>
            <div style="width:250px;">
                <p id = "id">글쓴이</p>
                <p id = "live">광주광역시 남구 봉선동</p>
            </div>
            
            
            <div>
            <button type = "submit" id = "good" style="margin-left: 200px">좋아요💗</button>
            </div>
            
            
            <div>
            <p class ="count">0</p>
            </div>
            <div>
            <a href="" type = "button" class="btn">채팅요청</a>
            </div>
        </section>

        <section class = "article-description">
            <h1 id="content">제목칸</h1>
            <div id ="article-detail">
            <p>안녕하세요</p>
            <p>만나서 반가워요</p>
            <p>다음에 만나요</p>
            </div>
        </section>
        
		
        <!--댓글기능-->
        <p id="content">댓글 쓰기</p>
        
        <form action="">
        <section class="comment-on">
            <textarea placeholder=" 댓글을 입력하세요."></textarea>
            <div class="con">
                <button type = "button" class= "btn" style="margin-top:10px; cursor: pointer;  float: right; background:white;">등록</button>
            </div>
        </section>
		</form>
    </alticle>

   

    <footer class = "footer">
        <ul class = "list">
            <li class = "list-object">
                <a href = "#">About</a>
            </li>
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