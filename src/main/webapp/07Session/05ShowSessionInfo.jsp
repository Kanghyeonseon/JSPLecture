<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="sessionSave" class="Ch07.SessionSave" scope="application" />
<%
	Set<String> set= sessionSave.slist.keySet();
	Iterator<String> iter = set.iterator();
	while(iter.hasNext()) {
		String id = iter.next();
		String pw = (String) sessionSave.slist.get(id).getAttribute("PW");
		out.println("접속 계정 명 : " + id + "\n 접속 계정 패스워드 : " + pw +"\n");
	}
%>
</body>
</html>