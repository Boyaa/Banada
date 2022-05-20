<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/loginfail.css">
<script src = "jquery-3.6.0.js"></script>
</head>
<body>
<section class = "success-form">
   <form action="">
      <div class="int-area">
         <name="id" id="id">
         <label for = "id" style="padding-left: 25px;">로그인 실패</label>   
      </div>
        
        <div class="btn-area">
            <button onclick="location.href='login.jsp'">로그인 하러가기</button>
        </div>
        <div class="btn-area">
            <button onclick="location.href='main.jsp'">메인으로 이동</button>
        </div>
      </form>
      
</section>

</body>
</html>