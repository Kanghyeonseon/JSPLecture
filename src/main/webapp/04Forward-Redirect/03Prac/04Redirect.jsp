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
	String id = request.getParameter("userid");
	String pw = request.getParameter("pwd");
	String isForward = request.getParameter("isForward");
	
	String Retest = request.getParameter("Retest");
%>
	<h1>리다이렉트 결과</h1>
	ID : <%=id %><br>
	PW: <%=pw %><br>
	포워드 ? <%=isForward %>
</body>
</html>