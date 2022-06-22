<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	java.util.Scanner sc = new java.util.Scanner(System.in);
%>
<%
	for(int num=2 ; num<=9 ;num++) {
 	out.println("--------" + num + "단--------<br>");
 	for(int i=1; i<=9; i++) {
 		out.println(num + "*" + i + "=" + num*i + "<br>");
 	}
	}
%>
</body>
</html>