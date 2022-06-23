<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="Ch03.*" %>
	<%
		request.setAttribute("02Page","02Page에서 전달하는 내용");
		BookDTO book = new BookDTO("1010", "자바정석", "한빛미디어");
		request.setAttribute("book",book);
		RequestDispatcher dispatcher = 
		request.getRequestDispatcher("03Page.jsp");
		dispatcher.forward(request, response);
	%>
</body>
</html>