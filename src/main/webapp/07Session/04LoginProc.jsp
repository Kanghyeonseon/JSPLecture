<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="sessionSave" class="Ch07.SessionSave" scope="application" />
	<!-- 어플리케이션이 켜져있는 동안 계속 사용가능한 빈 객체이다. -->
<%
	String id = request.getParameter("userid");
	String pw = request.getParameter("pwd");

	session.setAttribute("ID", id);
	session.setAttribute("PW", pw);
	session.setMaxInactiveInterval(60*15);
	
	// 세션 정보 저장
	sessionSave.AddSession(id, session);
	
	
	response.sendRedirect("04Main.jsp");
%>
</body>
</html>