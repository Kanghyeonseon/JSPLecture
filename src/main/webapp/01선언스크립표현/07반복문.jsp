<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
	<!-- 스크립틀릿을 이용하면 반복문을 사용해서 리스트를 여러개 출력할 수 있다. -->
		<%
		String str = "TEST";
		for(int i=0;i<10 ;i++){
		%>				
			<li><%= str + i %></li>
		<%		
		} //for문의 끝부분
		
		%>
	</ul>
</body>
</html>