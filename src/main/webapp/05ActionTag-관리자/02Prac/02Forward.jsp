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
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	String mode = request.getParameter("mode");
	
	if(mode.equals("type1")) {
	/* 열고닫아야 <jsp:forward를 쓸 수 있다. */
	%>
		<jsp:forward page="A.jsp"></jsp:forward>
	<%
	} else if(mode.equals("type2")) {
	%>
		<jsp:forward page="B.jsp"></jsp:forward>
	<%
	} else if(mode.equals("type3")) {
	%>
		<jsp:forward page="C.jsp"></jsp:forward>
	<%
	}
%>
</body>
</html>