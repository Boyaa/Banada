<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.domain.User"%>
<%@page import="com.smhrd.domain.Grade"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.GradeDAO"%>
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
    <%// User user = (User)session.getAttribute("loginUser"); 
    
    	//System.out.println("로그인 유저" +user.getUser_nick() );
    %>
    
    
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
				<a href ="myreview.jsp?user_nick=${loginUser.user_nick }">받은 후기</a>
				<a href ="LogoutCon" style ="margin-right:200px">로그아웃</a>
               </c:otherwise>
            </c:choose>   
    </div>
	</div>
</div>
<% 
		GradeDAO dao = new GradeDAO();
		List<Grade> gBoardList = dao.selectgboard();
		pageContext.setAttribute("gBoardList",gBoardList);
	%>

    <!--요소 시작-->
    <div class="Contents-Box" style = "padding : 50px 200px 50px 200px">
      <!--제목-->
      <form  style = "text-align:center; height: 120px;">
        <div class="Title">
          <span style = "font-size:60px; font-family:'ibm'; color : #ffc107;">
            나눔 후기
          </span>
        </div>
      </form>
      <!--목록-->
      
      <div class="box-height" style="display:flex; background:#eaeaea; margin:auto; text-align:center; font-family:ibm;" >
      	<div style="width:50px; margin:auto;">      
            <p>목록</p>
        </div>
        <div style="width:150px; margin:auto;">
            <p>글쓴이</p>
        </div>
        <div style="width:150px; margin:auto;">
            <p>상대방</p>
          </div>
           <div style="width:300px; margin:auto;">
            <p>제목</p>
           </div>
          <div style="width:150px; margin:auto;">
          	<p>평점</p>
          </div>
           <div style="width:200px; margin:auto;">
            <p>작성일</p>
          </div>
        </div>
        <div class="box-height" style="margin:auto; text-align:center;">
        <!--1-->
        <!--{{#each contents}}-->
        <c:forEach var="gBoard" items="${gBoardList}" varStatus="status">
        <a href="reviewpostview.jsp?g_seq=${gBoard.g_seq}" style="text-decoration:none; color:black;";class="List-1 flex">
          <div style="display:flex;">
          <div style="width:50px; margin:auto;">
            <p>
             ${status.count}
            </p>
          </div >
          <div style="width:150px; margin:auto;">
            <p>
             <c:out value="${gBoard.g_nick}"/>
            </p>
          </div >
          <div style="width:150px; margin:auto;">
          	<p>
          	<c:out value="${gBoard.user_nick }"/>
          </div>
          <div style="width:300px; margin:auto;">
            <p>
              <c:out value="${gBoard.g_title}"/>
            </p>
          </div>
<%--           <div style="width:150px; margin:auto;">
          	          	<c:set var="score" value="${gBoard.g_score}" />
          	<c:choose>   
          	 <c:when test="${score eq 'banana1'}"> 
          	       	 </c:when>   
			  <c:when test="${score eq 'banana2'}">   
			       홍길동이 아닙니다.    
			  </c:when>    
			   <c:otherwise>     
			     사람이 없습니다 ㅜㅜ 
			   </c:otherwise>
			   </c:choose>
          </div>
 --%>          <div style="width:200px; margin:auto;">
            <p>
              <c:out value="${gBoard.g_date}"/>
            </p>
          </div>
          </div>
       </c:forEach> 
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
          <input class = "style-bt" type="button" value="글쓰기" name="submit" onclick="location.href='reviewpostwrite.jsp'"/>
        </div>
      </form>
    </div>
    <!--top-bar-->
     
<!-- footer -->
<footer class = "footer" style="background-color: #e5e5e5;
    padding-top: 4rem;
    padding-bottom: 4rem;
    box-sizing: border-box;
    text-align :center;
    margin-top: 400px;">
        <ul class = "list" style="color:black; text-align:center; margin:auto; width:max-content; text-align:center; text-decoration: none; color: #000;  list-style:none;">
            <li class = "list-object" style="float:left; padding: 0 5px;"><a href = "#" style="text-decoration: none; color:black;">About</a></li>
            <li class = "list-object" style="float:left; padding: 0 5px;">⋅</li>
            <li class = "list-object" style="float:left; padding: 0 5px;"> <a href = "#" style="text-decoration: none; color:black;">Contact</a></li>
            <li class = "list-object" style="float:left; padding: 0 5px;">⋅</li>
            <li class = "list-object" style="float:left; padding: 0 5px;"><a href = "#" style="text-decoration: none; color:black;">Terms of Use</a></li>
            <li class = "list-object" style="float:left; padding: 0 5px;">⋅</li>
            <li class = "list-object" style="float:left; padding: 0 5px;"><a href = "#" style="text-decoration: none; color:black;">Privacy Policy</a></li>
        </ul>
        <br>
        <p>© Your Website 2022. Made by H5</p>
    </footer>
</div>
</body>
</html>