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
	<jsp:useBean id="bean" class="Ch05.TestBean" scope="page" />
	<!-- 값 등록 -->
	<jsp:setProperty name="bean" property="msg3" value="Msg3Value!" />
	
	<!-- forward(request가 유지되면서 02a.jsp로 이동한다.) -->
	<jsp:forward page="04Result.jsp" />
</body>
</html>