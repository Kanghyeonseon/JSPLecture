<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="bean" class="Ch05.TestBean" scope="request" />
	<jsp:setProperty name="bean" property="msg1" value="Msg1Value!" />
	<jsp:forward page="02a.jsp" />
</body>
</html>