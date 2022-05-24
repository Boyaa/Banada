<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.MapDAO"%>
<%@page import="com.smhrd.domain.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<html>
<head>
<meta charset="utf-8">
<title>여러개 마커 표시하기</title>

</head>
<body>
	<div id="map" style="width: 800px; height: 800px;"></div>

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
</body>
