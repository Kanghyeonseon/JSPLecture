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
%>
	<h1>포워드 결과</h1>
ID : <%=id %><br>
PW: <%=pw %><br>
포워드 ? <%=isForward %>
</body>
</html>