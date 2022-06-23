<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="get" action="04multiple.jsp">
		<fieldset>
			<legend>구구단</legend>
			<label>단수</label>
			<input type="text" name="dan"><input type="submit">
		</fieldset>
	</form>
	<hr>
	<% 
	/* trycatch가 없으면 dan이 없는데 불러오는 경우가 생겨서 오류가 생긴다 */
		try {
		/* int형이 아니라는 오류가 떴었다. */
		int dan = Integer.parseInt(request.getParameter("dan"));
		for(int i=1; i<10; i++) {
	%>
		<%=dan %> X <%=i %> = <%=dan*i %><br>
	
	<%
		}
		} catch(Exception e) {}
	%>
</body>
</html>