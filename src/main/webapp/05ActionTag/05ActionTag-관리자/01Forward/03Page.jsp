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
	request.setAttribute("03Page", "03Page에서 만든 데이터.");
%>
<jsp:forward page="04Result.jsp">
	<jsp:param name="03Page" value="03Page에서 만든 데이터"/>
</jsp:forward>

</body>
</html>