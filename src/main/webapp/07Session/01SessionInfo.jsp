<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>세션정보확인</h1>
<%
	String id = (String) session.getAttribute("ID");
	String pw = (String) session.getAttribute("PW");
	String SID = session.getId();
	int intervalTime = session.getMaxInactiveInterval();
%>
세션아이디 : <%=SID %><br>
계정아이디 : <%=id %><br>
계정비밀번호 : <%=pw %><br>
세션유지시간 : <%=intervalTime %><br>
</body>
</html>