<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="com.smhrd.domain.Hobby"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.HobbyDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page import="com.smhrd.domain.User"%>
<%@page import="com.smhrd.domain.Comm"%>
<%@page import="com.smhrd.domain.BoardDAO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="assets/peoplepostview.css">
<script language="JavaScript">
	function openNewWindow(window) { 
		open (window,"Mail","toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, width=620, height=940"); 
		}
	</script>
	<%
BoardDAO dao = new BoardDAO();

List<Comm> commList = (List<Comm>) dao.selectAllComm(1); 
User u_vo = (User)session.getAttribute("loginUser"); //세션에서 로그인한 멤버의 키값 가져오기

pageContext.setAttribute("list", commList); 
%>
	
<title>Document</title>
</head>

<body>

   <% 
   	  int seq = Integer.parseInt(request.getParameter("h_seq"));
	  HobbyDAO dao1 = new HobbyDAO();
	  System.out.println("글번호 Postview: " +seq);
	   
	  BigDecimal h_seq = new BigDecimal(seq);
	  System.out.println("test"+h_seq);
	  Hobby hPost = dao1.selecthpost(h_seq); 
	%>

	<!-- nav -->
	<div class="nav">
		<div class="logo">
			<a href="main.jsp">바나다</a>
		</div>
		<div class="nav_but"
			style="display: flex; justify-content: space-between;">
			<c:choose>
				<c:when test="${empty loginUser}">
					<a href="object.jsp">소분해요</a>
					<a href="peoplecategory.jsp">재능나눔</a>
					<a href="reviewpost.jsp">나눔후기</a>
					<a href="login.jsp">로그인</a>
					<a href="join.jsp">회원가입</a>
				</c:when>

				<c:otherwise>
					<a href="object.jsp">소분해요</a>
					<a href="peoplecategory.jsp">재능나눔</a>
					<a href="reviewpost.jsp">나눔후기</a>
					<a href="LogoutCon" style="margin-right: 200px">로그아웃</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	</div>
	
	<alticle>
	<section class="pro">
		<div class="alticle-image">
			<img src="assets/post_image/hruru.png"
				style="width: 50px; height: 50px; -webkit-border-radius: 50%; margin-right: 10px">
		</div>
		<div style="width: 250px;">
			<p id="id"><%=dao1.selecthpost(h_seq).getH_nick() %></p>
			<p id="live">광주광역시 남구 봉선동</p>
		</div>

		<%
		// int h_like = dao.getLike(hPost.getH_seq());
		// pageContext.setAttribute("like", h_like); // el 표기법 쓰기 위해 써 줌 
			%>

		<div>
			<button id="like" style="margin-left: 190px;">반하다💗</button>
		</div>
		<div>
			<p class="count"><%=dao1.selecthpost(h_seq).getH_like() %>개</p>
		</div>
		<div>
			<a type="button" class="btn" style="cursor: pointer;"
				" onclick="javascript:openNewWindow('chat.jsp')">채팅요청</a>
		</div>
	</section>

	<section class="article-description">
		<h1 id="content"><%=dao1.selecthpost(h_seq).getH_title() %></h1>
		<div id="article-detail">
			<p><%=dao1.selecthpost(h_seq).getH_content() %></p>
		
		</div>
	</section>
		</alticle>
	
	<!--댓글기능-->
        <div style="max-width:700px; margin:auto;margin-bottom:50px">
        <a href="reviewpost.jsp" style="float:right; color:black; text-decoration:none; font-family:ibm">후기 더 보기</a>
        </div>
         
            <section class="comment-on" style="max-width:700px; margin:auto;margin-bottom:50px">
            <textarea id="commvalue" placeholder=" 댓글을 입력하세요." style="    font-family: ibms;
    font-size: 20px;
    width: 700px;
    height: 100px;
    resize: none;
    padding: 0;
    margin: 0 auto;
    border-radius: 1px;">
               
            </textarea>
            <div class="con">
                <button type = "button" class= "writeCom" style="margin-top:10px; border-radius:25px; margin-bottom:10px;  cursor: pointer;  float: right; background:white;">등록</button>
            </div>
        
            <div id="comm_content" style="margin-top:50px;">
            <c:forEach var="comm" items="${list }"> 
            
            <p style=" border-bottom: 1px solid #eaeaea; padding:5px;">  
            <button style="float:right; margin-top:10px; border:0.5px solid #eaeaea; border-radius:25%; background-color:white; cursor: pointer;" class = 'removeCom' id = '${comm.comm_seq}'>X</button>         
			<div>
            <div class="alticle-image" style="padding-top:10px;">
                <div style="float:left;">
                	<img src="assets/post_image/hruru.png" style="width:30px; height:30px; -webkit-border-radius:50%; margin-right:10px"  >
           		</div>
           		<div style="padding-bottom:5px; padding-top:2px; font-size:12px;">
           			<c:out value="${comm.comm_nick }"/>
           		</div>
            </div>
            <div style="font-size:15px;">
            <c:out value="${comm.comm_content }"/>
            </div>
            <div style="font-size:10px; padding-top:5px; float:right;">
            <c:out  value="${comm.comm_date }"/>
            </div>

            </c:forEach>
             </div>
           </section>


	<footer class="footer">
		<ul class="list">
			<li class="list-object"><a href="#">About</a></li>
			<li class="list-object">⋅</li>
			<li class="list-object"><a href="#">Contact</a></li>
			<li class="list-object">⋅</li>
			<li class="list-object"><a href="#">Terms of Use</a></li>
			<li class="list-object">⋅</li>
			<li class="list-object"><a href="#">Privacy Policy</a></li>
		</ul>
		<br>
		<p>© Your Website 2022. Made by H5</p>
	</footer>

	<script>
        $(document).on("click","#like",function(){ 
			$.ajax({
				data : {status : "like", h_seq : ${hobbyPost.h_seq} },
				url : "HobbyAjaxCon",
				method : "GET",
				dataType : "text", 
				context : this, 
				success: function(data){
					$('#like+span').text(data)
					$(this).text('좋아요 취소') 
		            $(this).attr('id','dislike')	
				},
				error: function(){
					alert("통신실패!")
				}
			})
        });

        $(document).on("click","#dislike",function(){ 
            $.ajax({
				data : {status :                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 "dislike", h_seq : ${hobbyPost.h_seq} },
				url : "HobbyAjaxCon",
				method : "GET",
				dataType : "text",
				context : this,
				success: function(data){
						$('#dislike+span').text(data)
			            $(this).text('좋아요')
			            $(this).attr('id','like')
				},
				error: function(){
					alert("통신실패!")
				}
			})
    
        });
        
        </script>

</body>
</html>