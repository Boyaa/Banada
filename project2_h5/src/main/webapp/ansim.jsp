<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="assets/freepostview.css">
</head>
<body style="width:400px; height:300px; margin: 30px auto;">

<div style="text-align:center;">
 <div style="width:302px; margin: 0 auto 0 auto;">
 <h1 style="margin: 0 auto; padding:10px 5px; border-top:1px solid #eaeaea; border-left:1px solid #eaeaea; 
 	border-right:1px solid #eaeaea; font-family:ibms; color:#ffc107">안 심 등 록</h1>
</div>
</div>

<form action="SafetyCon" >	
 <div style="width:300px; height:200px; margin:auto; border:1px solid #eaeaea">
 			
 			<input type="hidden" name="safetyUser1" value="${loginUser.user_nick}"/>
          
 	<div class="place" style="display:flex; width:300px; height:50px;  border-bottom:1px solid #eaeaea;font-family:ibm;">
 		<div style="border-right:1px solid #eaeaea; margin: 0 0 0 12px; padding-right:12px;">
 			<div> 상대</div>
 			<div> 이름</div> 
 		</div>
 		<div style="margin-left:10px; padding-top:8px;">			
          <input name="safetyUser2" style="width:200px; height:20px; padding:5px; border:1px solid #eaeaea; " 
          type="text"/>
 		</div>
 	</div>
 	<div class="place" style="display:flex; width:300px; height:50px;  border-bottom:1px solid #eaeaea;font-family:ibm;">
 		<div style="border-right:1px solid #eaeaea; padding:12px 12px 0px 12px;">
 			장소
 		</div>
 		<div style="margin-left:10px; padding-top:8px;">			
          <input  style="width:200px; height:20px; padding:5px; border:1px solid #eaeaea; " 
          id="address_kakao" name="safetyAddr"type="text" class="id" readonly  placeholder="만날 주소 입력"/>
 		</div>
 	</div>
 
 	<div class="time" style="display:flex; width:300px; height:50px; border-bottom:1px solid #eaeaea; font-family:ibm;">
 		<div style="border-right:1px solid #eaeaea; padding:12px 12px 0px 12px;">
 			시간
 		</div>
 		<div style="margin-left:10px; padding-top:8px;">
 			<input type ="datetime-local" name="meetingTime" style="width:200px; height:20px; padding:5px; border:1px solid #eaeaea;">
 		</div>
 	</div>
 	
 	<div class="memo" style="display:flex; width:300px; height:50px;font-family:ibm;">
 		<div style="border-right:1px solid #eaeaea; padding:12px 12px 0px 12px;">
 			메모
 		</div>
 		<div style="margin-left:10px; padding-top:8px;">
 			<input name="safetyMemo" style="width:200px;  border:1px solid #eaeaea; height:20px; padding:5px; " 
          type="text"/>
 		</div>
 	</div>
 	

 	<div class="time" style="width:300px; height:50px;">
 		<div style="margin-left:10px; padding-top:8px;">
 			 <input type="submit" style="margin-left:120px; margin-top : 5px;font-family:ibm; border:1px solid #eaeaea; cursor: pointer; border-radius:50px;" 
 			 value="확인" />
 		</div>
 	</div>

 </div>


</form>

</body>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js?"></script>
		<script>
		window.onload = function(){
		    document.getElementById("address_kakao").addEventListener("click", function(){ //주소입력칸을 클릭하면
		        //카카오 지도 발생
		        new daum.Postcode({
		            oncomplete: function(data) { //선택시 입력값 세팅
		                document.getElementById("address_kakao").value = data.address; // 주소 넣기
		            }
		        }).open();
		    });
		}
</script>
</html>