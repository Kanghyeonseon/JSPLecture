<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 선언문  -->
	<%!
		int a=0;
	%>
	
	<!-- 스크립틀릿 -->
	<%
		String str1 = "Scriptlet 테스트";
		String str2 = "Local 변수";
		int b = 0;
		a++;
		b++;
	%>
	
	str1 = <%=str1 %><br>
	str2 = <%=str2 %><br>
	a = <%=a %><br>
	b = <%=b %><br>
</body>
</html>