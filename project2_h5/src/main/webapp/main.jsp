<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul class="actions vertical">
				<li><h5>회원가입</h5></li>
				<form action="JoinCon" method="post">
					<li><input type="text" name="id" placeholder="ID를 입력하세요" ></li>
					<li><input type="password" name="pw" placeholder="PW를 입력하세요" ></li>
					<li><input type="text" name="nick" placeholder="닉네임을 입력해주세요" ></li>
					<li><input type="text" name="addr" placeholder="집주소를 입력하세요" ></li>
					<li><input type="submit" value="JoinUs" class="button fit"></li>
				</form>
			</ul>

				<li><h5>안심등록</h5></li>
				<form action="SafetyCon" method="post">
					<li><input type="text" name="safetyUser1" placeholder="내 ID를 입력하세요" ></li>
					<li><input type="text" name="safetyUser2" placeholder="상대방 ID를 입력하세요" ></li>
					<li><input type="datetime-local" name="meetingTime" placeholder="약속 날짜를 입력하세요" ></li>
					<li><input type="text" name="safetyAddr" placeholder="만남 장소를 입력하세요" ></li>
					<li><input type="text" name="safetyMemo" placeholder="메모" ></li>
					<li><input type="submit" value="안심서비스 등록" class="button fit"></li>
				</form>




</script>
</body>
</html>