<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- bean 생성 -->
	<jsp:useBean id="bean" class="Ch05.TestBean" scope="session" />
	<!-- 값 등록 -->
	<jsp:setProperty name="bean" property="msg2" value="Msg2Value!" />
	
	<!-- redirect(request가 계속초기화되면서 전달된다.) -->
	<%
		response.sendRedirect("03b.jsp");	
	%>
</body>
</html>