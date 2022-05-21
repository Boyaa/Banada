<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet" href="assets/login.css">
<script src = "jquery-3.6.0.js"></script>
</head>
<body>
<form class = "login-form" action ="LoginCon">
   <h1 class = "font">바나다</h1>
   <section >
      <div class="int-area">
         <input type = "text" name="id" id="id" autocomplete="off" required>
         <label for = "id">아이디</label>   
            
      </div>
      <div class="int-area">
         <input type = "password" name="pw" id="pw" autocomplete="off" required>
         <label for = "id">비밀번호</label>   
      </div>
        
        <div class="btn-area">
            <button type="submit" >Login</button>
        </div>
      </section>
      <div class = "caption">
         <a href="join.jsp">아이디가 없으신가요?</a>
      </div>
</form>

</body>
</html>