<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script src = "jquery-3.6.0.js"></script>
    <link rel="stylesheet" href="assets/reviewpostwrite.css">
    <title>stickcode_summernote</title>

  </head>
<body>
    <!-- nav -->
    <div class = "nav">
        <div class = "logo">
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

    <form class="title-section">
        <p style="font-family: ibm; font-size: 60px;  margin: 20px; ">후기 작성</p>
    </form>

    <form class="container" action="">
        <div id="product-write" style = "display:flex; ">
            <div id = "box">후기 제목</div>
            <div id = "right-box">
            <input type="text" name="g_title" placeholder="제목을 입력하세요." style="width:200px;height:30px;font-size:12px;"/>
            </div>
        </div>

        <div id="price" style = "display:flex;">
            <div id="box">상대방</div>
            <div id = "right-box">
                <input type="text" name="g_nick" placeholder="이름을 입력하세요." style="width:200px;height:30px;font-size:12px;"/>
            </div>
        </div>

        <div id="category" style = "display:flex;">
            <div id = "box">평점</div>
            <div id = "right-box">
                <select name="g_score" class="select" style="width:115px;height:30px; font-family:ibm">
                    <option disabled selected>선택</option>
                    <option value="banana1">🍌</option>
                    <option value="banana2">🍌🍌</option>
                    <option value="banana3">🍌🍌🍌</option>
                    <option value="banana4">🍌🍌🍌🍌</option>
                    <option value="banana5">🍌🍌🍌🍌🍌</option>
                  
                  </select>
            </div>
        </div>


        <div id="content" style = "display:flex;">
            <div id = "box" style="margin-right:30px; height: 100px; padding-top:68px;">리뷰 내용</div>
            <div id = "right box" >
                <textarea id="write" name="g_review"  placeholder="내용을 입력하세요."></textarea>
            </div>
        </div>

        <div id="select">
            <input type="button" value="등록완료" onclick="alert('등록완료!'); location.href='peoplecategory.jsp'"/>
        </div>
        
    </form>


     <!-- footer -->
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