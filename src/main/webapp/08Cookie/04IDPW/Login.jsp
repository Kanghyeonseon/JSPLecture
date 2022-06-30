<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();
	String userid = null;
	String pwd = null;
	String idchk = "";
	String pwdchk = "";
	if(cookies!=null) {
		for(Cookie cookie : cookies) {
			if(cookie.getName().equals("userid")) {
				userid = cookie.getValue();
			}
			if(cookie.getName().equals("pwd")) {
				pwd = cookie.getValue();
			}
			if(cookie.getName().equals("idchk")) {
				idchk = cookie.getValue();
			}
			if(cookie.getName().equals("pwdchk")) {
				pwdchk = cookie.getValue();
			}
		}
	}
	if(!idchk.equals("on")){
		userid="";
	}
	if(!pwdchk.equals("on")){
		pwd="";
	}

%>
<form action="LoginProc.jsp">
	<h1>Login Page</h1>
	ID : <input type="text" name="userid" value=<%=userid %>><br>
	PW : <input type="password" name="pwd" value=<%=pwd %>><br>
	<%
		if(idchk.equals("on"))
		{
			%>
			<input type="checkbox" name="idchk" checked>아이디저장&nbsp;
			<%
		} else {
			%>
				<input type="checkbox" name="idchk">아이디저장&nbsp;
			<%
		}
		if(pwdchk.equals("on"))
		{
			%>
				<input type="checkbox" name="pwdchk" checked>패스워드저장&nbsp;
			
			<%
		} else {
			%>
				<input type="checkbox" name="pwdchk">패스워드저장&nbsp;
			<%
		}
	%>
	<input type="submit" value="로그인">
</form>
</body>
</html>