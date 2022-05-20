<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/join.css">
    <script type="text/javascript" src ="jquery-3.6.0.js"></script>
</head>
<body>
   <body>
    
    <div class="joinForm">                                                                                      
        <h2 class = "join-in">바나다</h2>

        <!-- 액션 적용 -->
        <form action="JoinCon">
        <section class = "join-box">
        <div class="textForm" dir="ltr" style="border-top: 1px solid #ffc107; text-align: left;">
          <input id="id" name="id" style="width:300px; height:25px; " type="text" class="id" placeholder="아이디" />
        <input type="button" value="중복체크" onclick="idCheck()"/>
        <span id="idCheck"></span>
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
        <div class="textForm" style="text-align: left;">
           <input id="nick" name="nick"  style="width:300px; height:25px; " class="pw" placeholder="닉네임">
           <input type="button" value="중복체크" onclick="nickCheck()"/>
           <span id="nickCheck"></span>
         </div>
        <p id = "pw2" style="text-align:center; border-bottom: 1px solid #ffc107;">
          닉네임은 2~8글자 이내여야 합니다.
        </p>
        <div class="textForm" dir="ltr" style=" text-align: left;">
          <input  id="address_kakao" name="address" style="width:300px; height:25px;" type="text" class="pw" readonly  placeholder="주소"/>
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
			<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
			<script>
				function idCheck(){
					let id = $('#id').val();
					
					// jquery로 ajax(비동기통신) 작성
					$.ajax({
						// 전송데이터(json)
						data : {'user_id': id},
						// 요청 경로(url 매핑값)
						url : 'IdCheckCon',
						// 요청 방식(get/post)
						method : 'get',
						//전송데이터 정보(형식, 인코딩 방식)
						contentType : 'application/json; charset=utf-8',
						//응답데이터 형식지정
						dataType : 'text',
						success : function(data){ //'사용할 수 있다'(응답) -> data('사용할 수 있다')
							if(data=='true'){
								$('#idCheck').text('사용할 수 있는 아이디')				
							}else{
								$('#idCheck').text('사용할 수 없는 아이디')
							}							
						},
						error : function(){
							alert("통신실패!")
						}
					})
				}
			</script>
			<script>
				function nickCheck(){
					let nick = $('#nick').val();
					
					// jquery로 ajax(비동기통신) 작성
					$.ajax({
						// 전송데이터(json)
						data : {'user_nick': nick},
						// 요청 경로(url 매핑값)
						url : 'NickCheckCon',
						// 요청 방식(get/post)
						method : 'get',
						//전송데이터 정보(형식, 인코딩 방식)
						contentType : 'application/json; charset=utf-8',
						//응답데이터 형식지정
						dataType : 'text',
						success : function(data){ //'사용할 수 있다'(응답) -> data('사용할 수 있다')
							if(data=='true'){
								$('#nickCheck').text('사용할 수 있는 닉네임')				
							}else{
								$('#nickCheck').text('사용할 수 없는 닉네임')
							}							
						},
						error : function(){
							alert("통신실패!")
						}
					})
				}
			</script>
</html>