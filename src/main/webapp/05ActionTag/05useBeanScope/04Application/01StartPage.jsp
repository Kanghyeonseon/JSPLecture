<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="bean" class="Ch05.TestBean" scope="application" />
	<jsp:setProperty name="bean" property="msg1" value="Msg1Value!" />
	
	<!-- redirect(request가 계속초기화되면서 전달된다.) -->
	<%
		response.sendRedirect("02a.jsp");	
	%>
</body>
</html>