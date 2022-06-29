<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 생성</title>
</head>
<body>
	<%
		String cookieName = "mycookie";
		Cookie cookie = new Cookie(cookieName,"쿠키1Value");
 		cookie.setValue("퇴근!");
		cookie.setMaxAge(60); //쿠키 유지시간 
		response.addCookie(cookie); // 브라우저로 쿠키 전달
	%>
	<h1>쿠키생성 사이트</h1>
	<a href="01TasteCookie.jsp">쿠키확인하러 가기</a>
</body>
</html>