<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>메인</h1>
세션아이디 : <%=session.getId() %><br>
계정아이디 : <%=session.getAttribute("ID") %><br>
<a href="02Logout.jsp">로그아웃</a>
</body>
</html>