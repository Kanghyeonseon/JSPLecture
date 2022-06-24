<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 배너슬라이더에 추가 할 이미지 이름을 넣어줄것이다. -->
<h1>배너이미지 변경</h1>
<form action="01ChangeBanner.jsp">
	<fieldset>
		<legend>배너이미지 변경하기</legend>
		IMG1 : <input name = "img1"><br>
		IMG2 : <input name = "img2"><br>
		IMG3 : <input name = "img3"><br>
		IMG4 : <input name = "img4"><br>
		<input type="submit">
		<!-- 나중에 select option으로바꾸면된다. -->
	</fieldset>
</form>
</body>
</html>