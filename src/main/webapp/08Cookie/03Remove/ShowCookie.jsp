<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��Ű ����</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies!=null){
		for(int i=0; i<cookies.length; i++){
			String name = cookies[i].getName();
			String value = cookies[i].getValue();
			out.println("name : " + name + "<br>" +"value : " + value + "<br>");
		}
	}
%>
<a href = "RemoveCookie.jsp?name=c1">C1��Ű����</a>&nbsp;
<a href = "RemoveCookie.jsp?name=c2">C2��Ű����</a>
</body>
</html>