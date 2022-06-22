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
for(int i=0; i<10; i++){
	out.println("Hello world<br>");
}

int a=100;
if(a%2==0){
	out.println(a + "는 짝수 입니다.");
}
%>
</body>
</html>