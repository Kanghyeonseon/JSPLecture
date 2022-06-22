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
		//선언문 추가
		String hello = "Hello world";
		public String testFunc() {
			System.out.println("선언문 테스트");
			return "ABC";
		}
	%>
	
	<%=hello %><br>
	<%=testFunc() %>
	<!-- 여기서는 세미콜론을 입력하면 안 된다. -->
	
	
</body>
</html>