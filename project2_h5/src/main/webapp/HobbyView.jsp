<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<% request.setCharacterEncoding("utf-8");
	 %>
	 
	  <alticle>
        <section class="pro">
            <div class="alticle-image">
                <img src="assets/post_image/hruru.png" style="width:50px; height:50px; -webkit-border-radius:50%; margin-right:10px"  >
            </div>
            <div style="width:250px;">
                <p id = "id"> <c:out value="${HobbyPost.h_nick}"/> 
            </div>
            <div>
            <button type = "submit" id = "good" style="margin-left: 200px">좋아요💗</button>
            </div>
            <div>
            <p class ="count"> <c:out value="${HobbyPost.h_like}"/>
            </div>
            <div>
            <a href="" type = "submit" class="btn">채팅요청</a>
            </div>
        </section>

        <section class = "ar
        ticle-description">
            <h1 id="content"><c:out value="${HobbyPost.h_title}"/>
            <div id ="article-detail">
    			 <c:out value="${HobbyPost.h_content}"/>
            </div>
        </section>
    </alticle>
</body>
</html>