<%@
page 
language="java" 
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
info="Page지시자의 Info속성 테스트"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	PageInfo : <%=getServletInfo() %>
	<!-- 서블릿파일의 서블릿인포를 불러온다. -->
</body>
</html>