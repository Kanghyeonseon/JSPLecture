<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 프로세스</title>
</head>
<body>
<jsp:useBean id="BCrypt" class="org.mindrot.bcrypt.BCrypt" scope="page" />
<%
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	String idchk = request.getParameter("idchk");
	String pwdchk = request.getParameter("pwdchk");
	// 일단 parameter를 받는다.
	
/* 	System.out.println("USERID : " +userid);
	System.out.println("PWD : " +pwd);
	System.out.println("IDCHK : " +idchk);
	System.out.println("PWDCHK : " +pwdchk); */
	
	//패스워드 암호화
	pwd = BCrypt.hashpw(pwd, BCrypt.gensalt());
	System.out.println("PWD : "+ pwd);
	
	Cookie c1 = new Cookie("userid", userid);
	Cookie c2 = new Cookie("pwd", pwd);
	Cookie c3 = new Cookie("idchk", idchk);
	Cookie c4 = new Cookie("pwdchk", pwdchk);
	response.addCookie(c1);
	response.addCookie(c2);
	response.addCookie(c3);
	response.addCookie(c4);
	// 일단은 쿠키 유효시간을 설정하지 않았으므로 창을 닫으면 쿠키가 사라진다.
	
	response.sendRedirect("Main.jsp");
%>
</body>
</html>