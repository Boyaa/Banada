<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.MapDAO"%>
<%@page import="com.smhrd.domain.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//boardNum가지고 오는 작업 필요!
MapDAO dao = new MapDAO();//messageDAO 객체 생성하기


  
List<User> markerList = dao.selectAddr(); 

List<User> markerNickList = dao.selectNick();


//pageContext.setAttribute("markerList",markerList);   // el 표기법쓰기위한 설정
System.out.println("----------------");
System.out.println("맵리스트 확인 : "+ markerList);
System.out.println("맵리스트 확인 : "+ markerNickList);

session.setAttribute("markerList", markerList);
session.setAttribute("markerNickList", markerNickList);





%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>여러개 마커 표시하기</title>
    
</head>
<body>
<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=67a460358a31f67cda76cd800e168b40&libraries=services"></script>
<script>


let dataNum = '<%=markerList%>';
let dataNum2 = '<%=markerNickList%>';
let data ='승환,서영,형쌤'
console.log(dataNum);
console.log(dataNum2);



var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
        center: new kakao.maps.LatLng(35.1761129306312, 126.91353712346), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다


 
// 마커를 표시할 위치와 title 객체 배열입니다 
/* var positions = [
    {
        title: '카카오', 
        latlng: new kakao.maps.LatLng(33.450705, 126.570677)
    },
    {
        title: '생태연못', 
        latlng: new kakao.maps.LatLng(33.450936, 126.569477)
    },
    {
        title: '텃밭', 
        latlng: new kakao.maps.LatLng(33.450879, 126.569940)
    },
    {
        title: '근린공원',
        latlng: new kakao.maps.LatLng(33.451393, 126.570738)
    }
]; */



//car


//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();


// 마커 이미지의 이미지 주소입니다
var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
    

   

        
for (var i = 0; i < test.length; i ++) {
	//console.log(test2[i]);
    
	//var iwContent = '<div style="padding:5px;">'+ test2[i] + '</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	var iwContent = test2; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    console.log(iwContent);

	
    // 마커 이미지의 이미지 크기 입니다
    var imageSize = new kakao.maps.Size(24, 35); 

    // 마커 이미지를 생성합니다    
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 

 // 주소로 좌표를 검색합니다
    geocoder.addressSearch(test[i], function(result, status) {

  // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {
    	 	 
    	 var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
    	 
    	 
    	// 마커를 생성합니다
    	 var marker = new kakao.maps.Marker({
    		 map: map,
    	     position: coords,
    	     image : markerImage // 마커 이미지 
    	 });

    	 // 마커가 지도 위에 표시되도록 설정합니다
    	 marker.setMap(map);
		
    	 var iwContent = '<div style="padding:5px;">'+ test2[i] + '</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    	     iwPosition = coords; //인포윈도우 표시 위치입니다
		
    	 // 인포윈도우를 생성합니다
    	var infowindow = new kakao.maps.InfoWindow({
    		 map: map,
    	     position : iwPosition, 
    	     content : iwContent
    	 });
    	     console.log(iwContent);
		  
    	 // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
    	 infowindow.open(map, marker); 
		
    /*  // 결과값으로 받은 위치를 마커로 표시합니다
         var marker = new kakao.maps.Marker({
             map: map,
             position: coords,
             image : markerImage // 마커 이미지 
         }); 
          */
         

 /*     var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
           console.log(result[0].y, result[0].x);  
           
        // 결과값으로 받은 위치를 마커로 표시합니다
           var marker = new kakao.maps.Marker({
               map: map,
               position: coords
           }); 
            */
           
      /* // 마커를 생성합니다
      var marker = new kakao.maps.Marker({
          map: map, // 마커를 표시할 지도
          position: dataArray[i].latlng, // 마커를 표시할 위치
          title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
          image : markerImage // 마커 이미지 
      }); */
           
}
  
  
    
    })
}
    

</script>
</body>
</html>