<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/peoplepostview.css">
    <script language="JavaScript">
	function openNewWindow(window) { 
		open (window,"Mail","toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, width=550, height=700"); 
		}
	</script>
    <title>Document</title>
</head>
<body style="margin:0px;">
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
            <a type = "button" class="btn" style="cursor:pointer;"" onclick="javascript:openNewWindow('chat.jsp')">채팅요청</a>
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
    </alticle>

    <div class="more">
        <a href="peoplecategory.jsp">더 보러가기</a>
    </div>

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