<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="Ch03.*" %>
<%
	/* request객체가 계속 유지되고있으니까 request.getParameter할 수 있다. */
	String id = request.getParameter("userid");
	String pw = request.getParameter("pwd");
	
	/* setAttribute했으니 getAttribute로 받을 수 있다. */
	/* 형변환
	setAttribute를하면 키와 밸류 형태로 들어가기 때문에 다운캐스팅을 해 줘야 String값에 넣을 수 있다.*/
	String page02 = (String)request.getAttribute("02Page");
	String page03 = (String)request.getAttribute("03Page");
	
	
	BookDTO book = (BookDTO) request.getAttribute("book");
	SampleDTO sample = (SampleDTO) request.getAttribute("sample");
	
%>

ID : <%=id %><br>
PW: <%=pw %><br>
page02 : <%=page02 %><br>
page03 : <%=page03 %><br>
book : <%=book %><br>
sample : <%=sample %><br>

</body>
</html>
