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
    
    <div class="joinForm"">                                                                                      
        <h2 class = "join-in">바나다</h2>

        <!-- 액션 적용 -->
        <form action="">
        <section class="join-box"">
        <div class="textForm" dir="ltr" style="border-top: 1px solid #ffc107; text-align: left;">
          <input name="loginId" style="width:300px; height:25px; " type="text" class="id" placeholder="아이디" />
          <input type="submit" value="중복체크"/>
        </div>
        <p style="text-align:center; border-bottom: 1px solid #ffc107;" >
          4~12자의 영문 대소문자와 숫자로만 입력 하세요.
        <p>
        <div class="textForm">
          <input name="loginPw" type="password" class="pw" placeholder="비밀번호">
        </div>
        <p id = "pw1" >
        </p>
        <div class="textForm">
        <input name="loginPwConfirm" type="password" class="pw" placeholder="비밀번호 확인">
        </div>
        <div class="textForm">
          <input name="name" type="text" class="name" placeholder="이름">
          </div>
          <div class="textForm" dir="ltr" style=" text-align: left;">
            <input name="loginId" style="width:300px; height:25px;" type="text" class="id" placeholder="닉네임"/ >
            <input type="submit" value="중복체크" />
          </div>
        <p id = "pw2" style="text-align:center; border-bottom: 1px solid #ffc107;">
          닉네임은 2~8글자 이내여야 합니다.
          </p>
        <div class="textForm">
            <input name="Address" type="text" class="Address" placeholder="주소입력">
          </div>
          <p id = "pw2" style="text-align:center; border-bottom: 1px solid #ffc107;">
            도로명 주소를 입력하셔야 합니다.
            </p>
        <input type="submit" class="btn" value="회 원 가 입"/>
      </form>

      
    </session>


  </div>
</body>
</html>