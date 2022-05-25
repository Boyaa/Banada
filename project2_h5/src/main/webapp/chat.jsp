<%@page import="com.smhrd.domain.Hobby"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="com.smhrd.domain.HobbyDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src = "js/jquery-3.6.0.js"></script>
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
            <button class="safe" onclick="javascript:openNewWindow('ansim.jsp')" style="font-size:14px;  border-radius:25px; border:1px solid black;  background:white; font-family:ibm; color:black;">안심등록</button>
        </div>
        <div class="anotherMsg">
            <br><br><br>
            <span class="anotherName">판매자</span> <br>
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
<script>
const Chat = (function(){
    const myName = "왜 안될";
 
    // init 함수
    function init() {
        // enter 키 이벤트
        $(document).on('keydown', 'div.input-div textarea', function(e){
            if(e.keyCode == 13 && !e.shiftKey) {
                e.preventDefault();
                const message = $(this).val();
 
                // 메시지 전송
                sendMessage(message);
                // 입력창 clear
                clearTextarea();
            }
        });
    }
 
    // 메세지 태그 생성
    function createMessageTag(LR_className, senderName, message) {
        // 형식 가져오기
        let chatLi = $('div.chat.format ul li').clone();
 
        // 값 채우기
        chatLi.addClass(LR_className);
        chatLi.find('.sender span').text(senderName);
        chatLi.find('.message span').text(message);
 
        return chatLi;
    }
 
    // 메세지 태그 append
    function appendMessageTag(LR_className, senderName, message) {
        const chatLi = createMessageTag(LR_className, senderName, message);
 
        $('div.chat:not(.format) ul').append(chatLi);
        
        
               var scrollingElement = (document.scrollingElement || document.body);
               scrollingElement.scrollTop = scrollingElement.scrollHeight;
        
        // 스크롤바 아래 고정
        $('div.chat').scrollTop($('#div.chat').prop('scrollHeight'));
    }
 
    // 메세지 전송
    function sendMessage(message) {
        // 서버에 전송하는 코드로 후에 대체
        const data = {
            "senderName"    : "${loginUser.user_nick}",
            "message"        : message
        };
 
        // 통신하는 기능이 없으므로 여기서 receive
        resive(data);
    }
 
    // 메세지 입력박스 내용 지우기
    function clearTextarea() {
        $('div.input-div textarea').val('');
    }
 
    // 메세지 수신
    function resive(data) {
        const LR = (data.senderName != myName)? "left" : "right";
        appendMessageTag("right", data.senderName, data.message);
    }
 
    return {
        'init': init
    };
})();
 
$(function(){
    Chat.init();
});



</script>
</html>