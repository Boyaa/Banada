<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src = "js/jquery-3.6.0.js"></script>
    <script src = "js/chat.js"></script>
    <link rel="stylesheet" href="assets/chat.css">
</head>
<body>
    
    
    <div class="chat_wrap">
        <div class="header">
            CHAT
            <button class="safe">안심 등록</button>
        </div>
        <div class="anotherMsg">
            <br><br><br>
            <span class="anotherName">Jo</span> <br>
            <span class="msg">반갑습니다.</span>
        </div>
       <br><br><br>
       
       

        
        <div class="chat">
            <ul class="booy">
                <!-- 동적 생성 -->
            </ul>
        </div>
        <div class="input-div">
            <textarea placeholder="채팅 치세요."></textarea>
        </div>
     
        <!-- format -->
     
        
        <div class="chat format">
            <ul id="chat">
                
                <li>
                    
                    <div class="sender">
                        <span></span>
                    </div>
                    <div class="message">
                        <span></span>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    
</body>
</html>