<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 위치를 document위로 올려도 상관없다. -->
<%
	/* 키와 밸류 형태로 변수를 받아올 수 있다. 여기서는 title, bgcolor를 받을 수 있다. */
	String title = request.getParameter("title");
	String bgcolor= request.getParameter("bgcolor");
	if (bgcolor.equals("etc")) {
		bgcolor = "blue";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- 스크립틀릿으롭 받아온 내용을 이렇게 사용해보기. -->
<body bgcolor=<%=bgcolor %>>
<h1><%=title %></h1>
</body>
</html>