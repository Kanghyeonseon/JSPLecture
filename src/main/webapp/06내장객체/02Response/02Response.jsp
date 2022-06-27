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
	response.sendError(500, "그만 좀 자자 얘들아");
%>
<%=new java.util.Date().toString() %>
</body>
</html>