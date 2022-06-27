<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>세션 객체에 값 넣기</h1>
<%
	String id = "abcd";
	String pw = "1234";
	
	session.setAttribute("ID", id);
	session.setAttribute("PW", pw);
	// 세션객체에 값을 넣어줄거고. 이건 보통 키와 밸류 형태로 되어있다.

	session.setMaxInactiveInterval(20);
	// 세션 유지시간 셋업 설정하지 않으면 브라우저가 종료될 때 세션이 없어진다.
%>
<a href="01SessionInfo.jsp">세션 정보 확인</a>
</body>
</html>