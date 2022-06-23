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
		request.setAttribute("03Page","03Page에서 전달하는 내용");
	
		SampleDTO sample = new SampleDTO("홍길동", "대구");
		request.setAttribute("sample",sample);
		
		/* 리다이렉트 방식 */
		response.sendRedirect("04Result.jsp?Retest='리다이렉트입니다.'");
	%>

</body>
</html>