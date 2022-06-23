<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 관련된 패키지 경로를 쓸 수 있다. -->
<%@page import="java.util.*,Ch03.*" %>
<%
	Scanner sc = new Scanner(System.in);
	SampleDTO dto = new Ch03.SampleDTO("홍길동","55");
%>

</body>
</html>