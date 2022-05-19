<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%
String MT = (String)request.getAttribute("MT");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>

        #countdown,

        #HourCountdown,

        #countExpire {

            display: inline;

            color: red;

            font-weight: bold;
            
            font-size : 20px;

        }

    </style>
</head>
<body>
<script type="text/javascript">

CountDownTimer('${MT}', 'countdown');

function CountDownTimer(dt, id) {

    var end = new Date(dt);



    var _second = 1000;

    var _minute = _second * 60;

    var _hour = _minute * 60;

    var _day = _hour * 24;

    var timer;



    function showRemaining() {

        var now = new Date();

        var distance = end - now;



        // 시간 종료 시 뜨는 문구

        if (distance < 0) {

            clearInterval(timer);

            document.getElementById(id).innerHTML = '약속 시간입니다. 약속 장소로 나가!';

            return;

        }

        var days = Math.floor(distance / _day);

        var hours = Math.floor((distance % _day) / _hour);

        var minutes = Math.floor((distance % _hour) / _minute);

        var seconds = Math.floor((distance % _minute) / _second);



        document.getElementById(id).innerHTML = days + '일 ';

        document.getElementById(id).innerHTML += hours + '시간 ';

        document.getElementById(id).innerHTML += minutes + '분 ';

        document.getElementById(id).innerHTML += seconds + '초';

    }

    timer = setInterval(showRemaining, 1000);

}
</script>
 
  약속시간 까지 <div id="countdown"></div><br>
</body>
</html>