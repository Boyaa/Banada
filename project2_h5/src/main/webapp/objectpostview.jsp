<%@page import="com.smhrd.domain.Product"%>
<%@page import="com.smhrd.domain.ProductDAO"%>
<%@page import="java.math.BigDecimal"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/objectpostview.css">
    <title>Document</title>
    <script language="JavaScript">
	function openNewWindow(window) { 
		open (window,"Mail","toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, width=640, height=940"); 
		}
	</script>
</head>
<body>
<% 
   

	 
   	   int seq = Integer.parseInt(request.getParameter("pd_seq"));
   	   BigDecimal pd_seq = new BigDecimal(seq);
	   ProductDAO dao = new ProductDAO();
	   
	   System.out.println("글번호 Postview: " + pd_seq);
	   
	   //
	   //int h_seq = ((BigDecimal)dataMap.get("h_seq")).intValue();
	   
	   
	   Product pdPost = dao.selectpdpost(pd_seq); // h_seq(BigDeciaml) int로 바꿔야 함
	 //  System.out.println(hPost.getH_title());
	 
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
    <div>
        <div class = "img">
            <img class = "img-con" src="<%=dao.selectpdpost(pd_seq).getPd_path()%>" style="cursor:pointer; max-height: 200%; width: auto;WIDTH: 650px" onclick="window.open(this.src)">
      								<!-- 업로드한 사진 올리고 싶음 -->
        </div>
    </div>


    <alticle >
        <section class="pro">
            <div class="alticle-image">
                <img src="assets/post_image/hruru.png" style="width:50px; height:50px; border-radius:50%; margin-right:10px"/>
            </div>
            <div style="width:250px;">
                <p id = "id"><%=dao.selectpdpost(pd_seq).getPd_nick() %></p>
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
            <div id = "price">
                <p><%=dao.selectpdpost(pd_seq).getPd_price()%></p>
            </div>
            <div id ="article-detail">
            <p><%=dao.selectpdpost(pd_seq).getPd_content()%></p>
           
            </div>
        </section>
    </alticle>
    <div class="more">
        <a href="object.jsp">더 보러가기</a>
    </div>

    <section class = "serv_list">
        <div class="container"style="border-top:none">
             <div class = "item_list" >
 
                <!-- 이부분 반복 -->               
                <div class = "card" >
                	<div class "img">
                	<img src="assets/post_image/1.png" alt="">
                	</div>
                    <div class = "text">
                        <h2>React</h2>
                        <p>이물건 어떠세용</p>
                        <button onclick="location.href='objectpostview.jsp'" type = "submit" style = "cursor:pointer;">보러가기</button>
                	</div>
                </div>
                <!-- 이부분 반복 -->
                
             </div>   
        </div>
    </section>

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