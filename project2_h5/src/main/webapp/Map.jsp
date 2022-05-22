<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.MapDAO"%>
<%@page import="com.smhrd.domain.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%
//boardNum가지고 오는 작업 필요!
MapDAO dao = new MapDAO();//messageDAO 객체 생성하기

//현재 보고있는 게시물에 작성된 댓글 전부 불러오기(메소드 호출할때는 현재 게시물 번호를 매개인자로) dao.selectAllComm(1)
//List<User> MarkerList = (List<User>) dao.selectAddr(user_addr); //-> dao에 selectAllComm 메소드 만들어놓기
//list를 반환받을건데 그 리스트안에는 댓글들정보가 담겨있음 
//그리고 이 리스트를 활용해서 아래쪽에 출력을 해줄거다

  
List<User> markerList = dao.selectAddr();
pageContext.setAttribute("markerList",markerList);   // el 표기법쓰기위한 설정
System.out.println("맵리스트 확인 : "+ markerList);



%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>주소로 장소 표시하기</title>

</head>
<body>


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=67a460358a31f67cda76cd800e168b40&libraries=services"></script>

<div id="map" style="width:100%;height:350px;"></div>



<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
	 center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('광주 북구 호동로43번길 60 ', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
        console.log(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">사용자위치</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>
</body>
</html>
