<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/joinfail.css">
<script src = "jquery-3.6.0.js"></script>
</head>
<body>
<section class = "success-form">
   <form action="">
      <div class="int-area">
         <name="id" id="id">
         <label for = "id" style="padding-left: 15px;">가입에 실패했습니다.</label>   
      </div>
       
        <div class="com-area">
         <div name="id" id="co">
         <label for = "co">다시 입력해주세요</label>  
         </div> 
      </div>
        
        <div class="btn-area">
            <input type = button onclick="location.href='join.jsp'" value="회원가입 하러가기">
        </div>
        <div class="btn-area">
            <input type= button onclick="location.href='main.jsp'" value="메인으로 이동">
        </div>
    </form>
      
</section>

</body>
</html>