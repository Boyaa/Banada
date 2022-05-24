<%@page import="com.smhrd.domain.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.ProductDAO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.domain.MapDAO"%>
<%@page import="com.smhrd.domain.User"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%

MapDAO dao = new MapDAO();

List<User> markerList = dao.selectAddr();

List<User> markerNickList = dao.selectNick();

List<User> productList = dao.selectProduct();

System.out.println("----------------");
System.out.println("맵리스트 확인 : " + markerList);
System.out.println("닉리스트 확인 : " + markerNickList);
System.out.println("상품리스트 확인 : " + productList);



session.setAttribute("markerList", markerList);
session.setAttribute("markerNickList", markerNickList);
session.setAttribute("productList", productList);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/object.css">
<style>
    @font-face {
    font-family: 'jalnan';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff') format('woff');
    font-weight: normal;
    font-style: normal;
  }

/* 얇은 ibm */
@font-face {
    font-family: 'IBMs';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/IBMPlexSansKR-Light.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

/* 굵은 ibm */
@font-face {
  font-family: 'IBM';
  src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/IBMPlexSansKR-SemiBold.woff') format('woff');
  font-weight: normal;
  font-style: normal;
}


</style>
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
    
    <!-- section -->
    <form>
    <section class ="header" style="border-radius:25px;">
       	<div id="map" style="width: 800px; height: 450px; border-radius:25px;"></div>

	<script type="text/javascript"src="//dapi.kakao.com/v2/maps/sdk.js?appkey=67a460358a31f67cda76cd800e168b40&libraries=services"></script>
	<script>

var mapContainer = document.getElementById('map');
mapOption = { 
    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
}; // 지도를 표시할 div
var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

let addr = [];
let dataNum2 = [];
let product = [];
<%for (int i = 0; i < markerNickList.size(); i++) {%>

dataNum2.push("<%=markerNickList.get(i)%>");
addr.push("<%=markerList.get(i)%>");
product.push("<%=productList.get(i)%>");

<%}%>


//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();
for(let i =0; i<addr.length; i++){
geocoder.addressSearch(addr[i], function(result, status) {

	console.log(result)
    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		
        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="font-family:jalnan; width:150px; background:#fdfd96; border-left:1px solid black; border-right:1px solid black; border-top:1px; solid black; text-align:center; padding:6px 0;">'+dataNum2[i] +'</div><div style="font-family:ibms; border-left:1px solid black; border-right:1px solid black; border-bottom:1px solid black; padding:3px 3px;">'+product[i]+'</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
    
    
});
}
 

</script>
   		 </section>
    </form>
    
    
    
    
    
    <!-- 글쓰기 눌렀을때 로그인이 안되어 있으면 로그인요청 alert 표시 -->
    <form>
     <c:choose>
          <c:when test="${empty loginUser}">
    <section class="write">
        <a href="#" onclick="alert('로그인을 해주세요')">글쓰기</a>        
    </section>
    </c:when>
      <c:otherwise>
      <section class="write">
        <a href="objectpostwrite123.jsp" >글쓰기</a>
    </section>
    
      </c:otherwise>
</c:choose>
    
    
    </form>

    <div class = "title">
        <h1><소분 정보></h1>
    </div>

    <section class = "serv_list">
        <div class="container">
            <div class = "item_list">
            
   <% 
      ProductDAO dao1 = new ProductDAO();
      List<Product> pdBoardList = dao1.selectpdboard();
      pageContext.setAttribute("pdBoardList",pdBoardList);
   %>
   
            <!-- 여기 안에 작성-->
            <c:forEach var="pdBoard" items="${pdBoardList}" varStatus="status">
           <a href="objectpostview.jsp?pd_seq=$pdBoard.pd_seq}" >
                 <div class = "card" >
                    <div class="img" src=>
                        <img src="${pdBoard.pd_path}" alt="">
                    </div>
                    <div class = "text">
                        <h2>"${pdBoard.pd_title}"</h2>
                        <p style="font-family: ibm;">관심 있으신가요?</p>
                        <button onclick="location.href='objectpostview.jsp?pd_seq=${pdBoard.pd_seq}'" style="cursor:pointer; text-decoration : none; color:#000;" >보러가기</button>
                    </div>
                 </div>
                 </c:forEach>
            <!-- 여기 안에 작성-->
            
            </div>
        </div>
    </section>

    <!-- footer -->
    <footer class = "footer">
        <ul class = "list" style="margin-left:auto; margin-right:auto;">
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