<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="02Page.jsp">
		<input name="userid"><br>
		<input name="pwd"><br>
		<select name="isForward">
			<option value="t">Forward</option>
			<option value="f">Redirect</option>
		</select>
		<input type="submit"><br>
	</form>
</body>
</html>