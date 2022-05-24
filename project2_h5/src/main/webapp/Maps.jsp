<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>여러개 마커 표시하기</title>
    <style>
.overlaybox {position:relative;width:360px;height:350px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/box_movie.png') no-repeat;padding:15px 10px;}
.overlaybox div, ul {overflow:hidden;margin:0;padding:0;}
.overlaybox li {list-style: none;}
.overlaybox .boxtitle {color:#fff;font-size:16px;font-weight:bold;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png') no-repeat right 120px center;margin-bottom:8px;}
.overlaybox .first {position:relative;width:247px;height:136px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/thumb.png') no-repeat;margin-bottom:8px;}
.first .text {color:#fff;font-weight:bold;}
.first .triangle {position:absolute;width:48px;height:48px;top:0;left:0;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/triangle.png') no-repeat; padding:6px;font-size:18px;}
.first .movietitle {position:absolute;width:100%;bottom:0;background:rgba(0,0,0,0.4);padding:7px 15px;font-size:14px;}
.overlaybox ul {width:247px;}
.overlaybox li {position:relative;margin-bottom:2px;background:#2b2d36;padding:5px 10px;color:#aaabaf;line-height: 1;}
.overlaybox li span {display:inline-block;}
.overlaybox li .number {font-size:16px;font-weight:bold;}
.overlaybox li .title {font-size:13px;}
.overlaybox ul .arrow {position:absolute;margin-top:8px;right:25px;width:5px;height:3px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/updown.png') no-repeat;} 
.overlaybox li .up {background-position:0 -40px;}
.overlaybox li .down {background-position:0 -60px;}
.overlaybox li .count {position:absolute;margin-top:5px;right:15px;font-size:10px;}
.overlaybox li:hover {color:#fff;background:#d24545;}
.overlaybox li:hover .up {background-position:0 0px;}
.overlaybox li:hover .down {background-position:0 -20px;}   
</style>
    
</head>
<body>
<div id="map" style="width:100%;height:350px;"></div>

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
var content = '<div class="overlaybox1">' +
'    <div class="boxtitle">사용자1</div>' +
'    <div class="first">' +
'        <div class="triangle text">Hyeon</div>' +
'        <div class="movietitle text">양파한망</div>' +
'    </div>' +
'    <ul>' +
'        <li class="up">' +
'            <span class="number">2</span>' +
'            <span class="title">바나나</span>' +
'            <span class="arrow up"></span>' +
'            <span class="count">2</span>' +
'        </li>' +
'        <li>' +
'            <span class="number">3</span>' +
'            <span class="title">사과 10개</span>' +
'            <span class="arrow up"></span>' +
'            <span class="count">6</span>' +
'        </li>' +
'        <li>' +
'            <span class="number">4</span>' +
'            <span class="title">우유 1+1</span>' +
'            <span class="arrow up"></span>' +
'            <span class="count">3</span>' +
'        </li>' +
'        <li>' +
'            <span class="number">5</span>' +
'            <span class="title">당면</span>' +
'            <span class="arrow down"></span>' +
'            <span class="count">1</span>' +
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

		  // 마커를 생성합니다
		  var marker = new kakao.maps.Marker({
		    map: map, // 마커를 표시할 지도
		    position: positions[i].latlng, // 마커를 표시할 위치
		    image : markerImage // 마커 이미지
		  });

		  //마커를 지도에 표시한다.
		  marker.setMap(map);
    
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
</body>
</html>