<%@page import="com.smhrd.domain.Hobby"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.HobbyDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script src = "jquery-3.6.0.js"></script>
    <link rel="stylesheet" href="assets/peoplepostwrite.css">
    <title>stickcode_summernote</title>
  </head>
<body>
    <!-- nav -->
    <div class = "nav">
        <div class = "logo">
            <a href ="main.jsp">바나다</a>
        </div>
        <div class ="nav_but">
            <a href ="object.jsp">소분해요</a>
            <a href ="peoplecategory.jsp">재능나눔</a>
            <a href ="post.jsp">자유게시판</a>
            <a href ="" style ="margin-right:200px">로그아웃</a>
        </div>
    </div>

    <form class="title-section">
        <p style="font-family: ibm; font-size: 60px;  margin: 20px; ">게시판 작성</p>
    </form>

    <form class="container" action="HobbyCon">
        <div id="category" style = "display:flex;">
            <div id = "box">카테고리</div>
            <div id = "right-box">
                <select name="fruits" class="select" style="width:100px;height:30px; font-family:ibm">
                    <option disabled selected>선택</option>
                    <option value="sports">스포츠</option>
                    <option value="game">게임/오락</option>
                    <option value="travl">아웃도어/여행</option>
                    <option value="book">인문학/책/글</option>
                    <option value="culture">문화/공연/축제</option>
                    <option value="make">공예/만들기</option>
                    <option value="music">음악/악기</option>
                    <option value="bongsa">봉사활동</option>
                    <option value="inmac">사교/인맥</option>
                    <option value="car">차/오토바이</option>
                    <option value="picture">사진/영상</option>
                    <option value="cook">요리/베이킹</option>
                    <option value="animal">반려동물</option>
                    <option value="language">외국/언어</option>
                    <option value="shop">쇼핑</option>
                  </select>
            </div>
        </div>
        <div id="product-write" style = "display:flex; ">
            <div id = "box">제목</div>
            <div id = "right-box">
            <input type="text" name="product-write" style="width:200px;height:20px;font-size:20px;"/>
            </div>
        </div>
        <div id="content" style = "display:flex;">
            <div id = "box" style="margin-right:30px; height: 100px; padding-top:68px;">내용</div>
            <div id = "right box" >
                <textarea id="write" name="write"></textarea>
            </div>
        </div>
        <div id="price" style = "display:flex;">
            <div id="box">정원</div>
            <div id = "right-box">
            <input type="text" name="number" style="width:100px;height:20px;font-size:20px;"/> 명
            </div>
        </div>

        <div id="select">
            <input type="button" value="작성완료" onclick="alert('작성완료!'); location.href='peoplecategory.jsp'"/>
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