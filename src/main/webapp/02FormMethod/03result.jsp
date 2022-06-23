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
		/* int형이 아니라는 오류가 떴었다. */
		int dan = Integer.parseInt(request.getParameter("dan"));
		for(int i=1; i<10; i++) {
	%>
		<%=dan %> X <%=i %> = <%=dan*i %><br>
	
	<%
		}
	%>
</body>
</html>