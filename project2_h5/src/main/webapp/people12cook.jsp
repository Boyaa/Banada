<%@page import="com.smhrd.domain.Hobby"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.HobbyDAO"%>
<%@page import="com.smhrd.domain.MapDAO"%>
<%@page import="com.smhrd.domain.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
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
    <link rel="stylesheet" href="assets/people.css">
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
    
    <div class = "title">
        <h1>< 재능 정보 ></h1>
        <p style="font-size:20px">요리/베이킹</p>
    </div>
    
    <section class="category">
      <div id="cateimg">
        <a href="people1sports.jsp">
        <img title="스포츠" src ="assets/category/2.png">
        </a>

        <a href="people2game.jsp">
        <img title="게임/오락" src ="assets/category/3.png">
        </a>
        
        <a href="people3travel.jsp">
        <img title="아웃도어/여행" src ="assets/category/4.png">
        </a>
        
        <a href="people4read.jsp">
        <img title="인문학/책/글" src ="assets/category/5.png">
        </a>

        <a href="people5culture.jsp">
        <img title="문화/공연/축제" src ="assets/category/6.png">
        </a>

        <a href="people6make.jsp">
        <img title="공예/만들기" src ="assets/category/7.png">
        </a>

        <a href="people7music.jsp">
        <img title="음악/악기" src ="assets/category/8.png">
        </a>

        <a href="people8bongsa.jsp">
        <img title="봉사활동" src ="assets/category/9.png">
        </a>

        <a href="people9inmec.jsp">
        <img title="사교/인맥" src ="assets/category/10.png">
        </a>

        <a href="people10car.jsp">
        <img title="차/오토바이" src ="assets/category/11.png">
        </a>

        <a href="people11picture.jsp">
        <img title="사진/영상" src ="assets/category/12.png">
        </a>

        <a href="people12cook.jsp">
        <img title="요리/베이킹" src ="assets/category/13.png">
        </a>

        <a href="people13animal.jsp">
        <img title="반려동물" src ="assets/category/14.png">
        </a>

        <a href="people14language.jsp">
        <img title="외국/언어" src ="assets/category/17.png">
        </a>

        <a href="people15shopping.jsp">
        <img title="쇼핑" src ="assets/category/15.png">
        </a>

        
    </div>
    </section>



  <!-- maps -->

    <section class ="header">
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
            content: '<div style="font-family:jalnan; width:150px; background:#fdfd96; border:1px solid black; text-align:center; padding:6px 0;">'+dataNum2[i]+'</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
    
    
});
}
 

</script>
    </section>


	<% 
		HobbyDAO dao1 = new HobbyDAO();
		List<Hobby> hBoardList = dao1.selecthboardCook();
		pageContext.setAttribute("hBoardList",hBoardList);
	%>



    <div class="Contents-Box" style = "padding : 0px 200px 50px 200px">
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

							
          <!--{{#each contents}}-->
          
          <c:forEach var="hBoard" items="${hBoardList}" varStatus="status">
            <a href="peoplepostview.jsp?h_seq=${hBoard.h_seq}" class="List-1 flex">
            <div>
              <span>
                ${status.count}
              </span>
            </div>
            <div>
              <span>
                <c:out value="${hBoard.h_nick}"/>
              </span>
            </div>
            <div>
              <span>
                <c:out value="${hBoard.h_title}"/>
              </span>
            </div>
            <div>
              <span>
                <c:out value="${hBoard.h_date}"/>
              </span>
            </div>
           </c:forEach>
          </a>

      <section class="write">
            <a href="peoplepostwrite123.jsp">글쓰기</a>
       </section>
      </div>

        

    <!-- footer -->
    <footer class = "footer">
        <ul class = "list" style="width:max-content">
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