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
    <script language="JavaScript">
	function openNewWindow(window) { 
		open (window,"Mail","toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, width=550, height=500"); 
		}
	</script>
    <link rel="stylesheet" href="assets/chat.css">
</head>
<body style="max-width: 523px; height:940px;">
    
    <div class="chat_wrap" >
        <div class="header" style="max-width: 523px; background-color:#ffc107; font-family:'jalnan';'">
            CHAT
            <button class="safe" onclick="javascript:openNewWindow('ansim.jsp')" style="font-size:12px;  background-color:#ffc107; font-family:ibm; color:black;">안심등록</button>
        </div>
        <div class="anotherMsg">
            <br><br><br>
            <span class="anotherName">Jo</span> <br>
            <span class="msg">반갑습니다.</span>
        </div>              
        <div class="chat">
            <ul class="booy">
                <!-- 동적 생성 -->
            </ul>
        </div>
        <div class="input-div" style="width:523px;">
            <textarea placeholder="채팅 치세요." style="width:513px;"></textarea>
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