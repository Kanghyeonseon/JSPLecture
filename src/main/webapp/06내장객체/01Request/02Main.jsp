<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>메인페이지</h1>
<%
	String remoteIP = request.getRemoteAddr();
%>
<%=remoteIP %>님이 접속하셨습니다!<br>

<%@page import="java.io.*, java.util.*" %>
<!-- 자바유틸은 date때문에 -->
<%
	try{
		FileWriter wout = new FileWriter("C:\\강현선\\EclipseWorkspace\\upload\\test.txt", true);
		// true를 하면 내용이 계속 누적된다.
		// 접속 날짜, 시간, 원격IP(remoteIP), 원격 브라우저(클라이언트에대한 브라우저)를 저장
		wout.write(new Date().toString() + " | ");
		wout.write(request.getRemoteAddr() + " | ");
		wout.write(request.getHeader("User-Agent") + "\n");
		wout.flush();
		wout.close();
	} catch(Exception e) { e.printStackTrace(); }
%>
</body>
</html>