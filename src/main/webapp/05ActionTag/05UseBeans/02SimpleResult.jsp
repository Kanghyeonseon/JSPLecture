<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>RESULT</h1>
	<%@page import="Ch05.BookBean" %>
	<%
	%>
	<jsp:useBean id="bean" class="Ch05.BookBean" scope="page"/>
	<jsp:setProperty name="bean" property="*" />
		확인 : <%=bean.toString() %>
		코드 : <%=bean.getBookcode() %>
		제목 : <%=bean.getBookname() %>
		가격 : <%=bean.getBookprice() %>
</body>
</html>