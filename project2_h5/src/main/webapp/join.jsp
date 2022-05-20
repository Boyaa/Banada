<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/join.css">
    <script src = "jquery-3.6.0.js"></script>
</head>
<body>
   <body>
    
    <div class="joinForm">                                                                                      
        <h2 class = "join-in">바나다</h2>

        <!-- 액션 적용 -->
        <form action="JoinCon">
        <section class = "join-box">
        <div class="textForm" dir="ltr" style="border-top: 1px solid #ffc107; text-align: left;">
          <input name="id" style="width:300px; height:25px; " type="text" class="id" placeholder="아이디" />
        <!--   <input type="submit" value="중복체크"/>  -->
        </div>
        <p style="text-align:center; border-bottom: 1px solid #ffc107;" >
          4~12자의 영문 대소문자와 숫자로만 입력 하세요.
        </p>
        <div class="textForm">
          <input name="pw" type="password" class="pw" placeholder="비밀번호">
        </div>
         <div class="textForm">
           <input name="pw" type="password" class="pw" placeholder="비밀번호 확인">
         </div>
        <!--   <div class="textForm">
           <input name="name" type="text" class="name" placeholder="이름">
          </div>  -->
        <div class="textForm" dir="ltr" style=" text-align: left;">
          <input name="nick" style="width:300px; height:25px;" type="text" class="nick" placeholder="닉네임"/>
         <!--  <input type="submit" value="중복체크" />  -->
        </div>
        <p id = "pw2" style="text-align:center; border-bottom: 1px solid #ffc107;">
          닉네임은 2~8글자 이내여야 합니다.
        </p>
        <div class="textForm" dir="ltr" style=" text-align: left;">
          <input  id="address_kakao" name="address" style="width:300px; height:25px;" type="text" class="id" readonly  placeholder="주소"/>
        </div>
        <p id = "pw2" style="text-align:center; border-bottom: 1px solid #ffc107;">
          주소 찾기를 눌러 입력받아주세요
        </p>
        <input type="submit" class="btn" value="회 원 가 입"/>
      </section>
       
       </form>
     

  </div>
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