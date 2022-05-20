<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="HobbyCon" method="post">
		<table>
			<tr>
				<td>나눌 취미</td>
				<td><input type="text" name="h_title"></td>
			</tr>
			<tr>
				<td>설명</td>
				<td><textarea name="h_content" maxlength="2048" style=""></textarea></td>
			</tr>
			<tr>
				<td>카테고리</td>
				<td>
					<div class="area-label">
						<label><input type="radio" name="h_cate" value="sport"
							checked="checked">스포츠</label>
						<label><input type="radio"
							name="h_cate" value="read">독서</label>

					</div>
				</td>
			</tr>
			<tr> 
				<td>최대 인원</td>
				<td><input type="text" placeholder="숫자만 입력하세요"
					name="h_maxpeople"> 명<td>
				</td>
			</tr>
		</table>
			<input button type="submit" class="btn_write" value="글 등록">
			
	</form>

</body>
</html>
</body>
</html>