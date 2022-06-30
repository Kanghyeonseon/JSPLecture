<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie c1 = new Cookie("c1", "value1");
	c1.setMaxAge(60*60);
	Cookie c2 = new Cookie("c2", "value2");
	c2.setMaxAge(60*60);
	
	response.addCookie(c1);
	response.addCookie(c2);
%>
<a href="ShowCookie.jsp">쿠키확인</a>
</body>
</html>