<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원정보 출력</h1>
	<jsp:useBean id="MemberBean" class="Ch05.MemberBean" scope="page" />
	<jsp:setProperty name="MemberBean" property="*" />
	확인 : <%=MemberBean.toString() %><br><br>
	이메일 : <%=MemberBean.getEmail() %><br>
	패스워드 : <%=MemberBean.getPwd() %><br>
	주소1 : <%=MemberBean.getAddr1() %>
	주소2 : <%=MemberBean.getAddr2() %>
</body>
</html>