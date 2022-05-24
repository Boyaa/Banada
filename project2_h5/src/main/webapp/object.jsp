<%@page import="com.smhrd.domain.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

.overlaybox {position:relative;width:360px;height:350px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/box_movie.png') no-repeat;padding:15px 10px;;}
.overlaybox div, ul {overflow:hidden;margin:0;padding:0;}
.overlaybox li {list-style: none;}
.overlaybox .boxtitle {color:#fff;font-size:16px;font-weight:bold;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png') no-repeat right 120px center;margin-bottom:8px;}
.overlaybox .first {position:relative;width:247px;height:136px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/thumb.png') no-repeat;margin-bottom:8px;}
.first .text {color:#fff;font-weight:bold;}
.first .triangle {position:absolute;width:48px;height:48px;top:0;left:0;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/triangle.png') no-repeat; padding:6px;font-size:18px;}
.first {position:absolute; color:black; width:100%;bottom:0;background:white;padding:7px 15px;font-size:14px;}
.overlaybox ul {width:247px;}
.overlaybox li {position:relative;margin-bottom:2px;background:#2b2d36;padding:5px 10px;color:#ffc107;line-height: 1;}
.overlaybox li span {display:inline-block;}
.overlaybox li .number {font-size:16px;font-weight:bold;}
.overlaybox li .title {font-size:13px;}
.overlaybox ul .arrow {position:absolute;margin-top:8px;right:25px;width:5px;height:3px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/updown.png') no-repeat;} 
.overlaybox li .up {background-position:0 -40px;}
.overlaybox li .down {background-position:0 -60px;}
.overlaybox li .count {position:absolute;margin-top:5px;right:15px;font-size:10px;}
.overlaybox li:hover {color:#fff;background:white;}
.overlaybox li:hover .up {background-position:0 0px;}
.overlaybox li:hover .down {background-position:0 -20px;}   

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
				<a href ="post.jsp">나눔후기</a>
				<a href ="LogoutCon" style ="margin-right:200px">로그아웃</a>
               </c:otherwise>
            </c:choose>      
        </div>
    </div>
    
    <!-- section -->
    <form>
    <section class ="header" style="border-radius:25px;">
        <div id="map" style="width:820px;height:470px; border-radius:25px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=67a460358a31f67cda76cd800e168b40&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
        center: new kakao.maps.LatLng(35.1761129306312, 126.91353712346), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨 
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다


//커스텀 오버레이에 표시할 내용입니다     
//HTML 문자열 또는 Dom Element 입니다 
var content = '<div class="overlaybox1" style="width:100px; font-family:ibm; padding:5px; background:white; color:black;  border:5px solid #ffc107; border-radius:25px;" >' +
'    <div class="boxtitle" style="text-align:center;width:100px; font-family:jalnan;  border-bottom:2px solid #eaeaea;">사용자</div>' +
'    <ul style="width:100px; text-align:center;">' +
'        <li class="up">' +
'            <span class="number">1</span>' +
'            <span class="object">바나나</span>' +
'            <span class="arrow up"></span>' +
'            <span class="count">2개</span>' +
'        </li>' +
'        <li>' +
'            <span class="number">2</span>' +
'            <span class="object">사과</span>' +
'            <span class="arrow up"></span>' +
'            <span class="count">10개</span>' +
'        </li>' +
'        <li>' +
'            <span class="number">3</span>' +
'            <span class="object">우유</span>' +
'            <span class="arrow up"></span>' +
'            <span class="count">1+1</span>' +
'        </li>' +
'        <li>' +
'            <span class="number">4</span>' +
'            <span class="object">당면</span>' +
'            <span class="arrow down"></span>' +
'            <span class="count">1개</span>' +
'        </li>' +
'    </ul>' +
'</div>';
 
// 마커를 표시할 위치와 title 객체 배열입니다 
var positions = [
    {
        title: 'hyeon',
        latlng: new kakao.maps.LatLng(35.1771098652095, 126.914857492693)
    },
    {
        title: 'jun', 
        latlng: new kakao.maps.LatLng(35.1771707638814, 126.916101899014)
    },
    {
        title: 'dodo', 
        latlng: new kakao.maps.LatLng(35.1775634137639, 126.914837369005)
    },
    {
        title: 'lalaa',
        latlng: new kakao.maps.LatLng(35.1781473123282, 126.915739165121)
    }
];


// 마커 이미지의 이미지 주소입니다
//var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
    
for (var i = 0; i < positions.length; i ++) {
    
    // 마커 이미지의 이미지 크기 입니다
  //  var imageSize = new kakao.maps.Size(24, 35); 
    
    // 마커 이미지를 생성합니다    
  //  var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
    
  //커스텀 오버레이를 생성합니다
    var customOverlay = new kakao.maps.CustomOverlay({
        position: positions[i].latlng,
        content: content,
        xAnchor: 0.3,
        yAnchor: 0.91
    });

    //커스텀 오버레이를 지도에 표시합니다
    customOverlay.setMap(map);

    
    // 마커를 생성합니다
   // var marker = new kakao.maps.Marker({
     //   map: map, // 마커를 표시할 지도
       // position: positions[i].latlng, // 마커를 표시할 위치
       // title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
        //image : markerImage // 마커 이미지 
   // });
    
 // 인포윈도우로 장소에 대한 설명을 표시합니다
  //  var infowindow = new kakao.maps.InfoWindow({
    //    content: '<div style="width:150px;text-align:center;padding:6px 0;">사용자위치</div>'
   // });
    //infowindow.open(map, marker);
    
 
 
    
}
</script>
    </section>
    </form>
    
    <!-- 글쓰기 눌렀을때 로그인이 안되어 있으면 로그인요청 alert 표시 -->
    <form>
    <section class="write">
        <a href="objectpostwrite123.jsp" >글쓰기</a>
    </section>
    </form>

    <div class = "title">
        <h1><소분 정보></h1>
    </div>

    <section class = "serv_list">
        <div class="container">
            <div class = "item_list">
            
	<% 
		ProductDAO dao = new ProductDAO();
		List<Product> pdBoardList = dao.selectpdboard();
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