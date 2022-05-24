<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
<script src = "jquery-3.6.0.js"></script>
<style>
@font-face {
  font-family: 'IBM';
  src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/IBMPlexSansKR-SemiBold.woff') format('woff');
  font-weight: normal;
  font-style: normal;
}

/*얇은 ibm*/
@font-face {
    font-family: 'IBMs';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/IBMPlexSansKR-Light.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

@font-face {
  font-family: 'jalnan';
  src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff') format('woff');
  font-weight: normal;
  font-style: normal;
}

@font-face {
  font-family: 'paybooc';
  src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/paybooc-Bold.woff') format('woff');
  font-weight: normal;
  font-style: normal;
}

@font-face {
  font-family: 'OTW';
  src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/OTWelcomeBA.woff2') format('woff2');
  font-weight: normal;
  font-style: normal;
}
</style>
</head>
<body style="font-family: 'Noto Sans KR', sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: white;
    text-align: center;
">
<section style="border-radius:25px; border:2px solid #eaeaea; padding:50px;">
 
      <div>
         <h1 style="font-family:ibm; font-size:40px; color:#ffc107;">가입에 실패했습니다.</h1>  
         </div>
       

         <div style="font-size:20px; margin-bottom:30px; font-family:ibms;" >
         <span>다시 입력해주세요</span>  
         </div> 

        
        <div>
            <input type = button onclick="location.href='join.jsp'" 
            style="cursor:pointer; font-family:ibm; width: 200px; height: 50px; border-radius:25px; font-size:20px; border:none; background:#ffc107; color:white; margin-bottom:15px;" value="회원가입 하러가기">
        </div>
        <div>
            <input type= button onclick="location.href='main.jsp'" 
            style="cursor:pointer; font-family:ibm; width: 200px; height: 50px; border-radius:25px; font-size:20px; border:none; background:#ffc107; color:white; margin-bottom:15px;" value="메인으로 이동">
        </div>
   
      
</section>

</body>
</html>