<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie c1 = new Cookie("c1", "Value1");
	c1.setMaxAge(60*60);
	c1.setPath("/"); // 슬래시 하나는 최상위를 의미 모든 URL 접근 시 쿠키 전달 
	Cookie c2 = new Cookie("c2", "Value2");
	c2.setMaxAge(60*60);
	c2.setPath("./"); // 현재 디렉토리에 접근시에만 쿠키 전달
	Cookie c3 = new Cookie("c3", "Value3");
	c3.setMaxAge(60*60); // 해당 경로에서만 쿠키가 전달
	c3.setPath("/08Cookie/01Basic/");
	
	response.addCookie(c1);
	response.addCookie(c2);
	response.addCookie(c3);
%>
</body>
</html>