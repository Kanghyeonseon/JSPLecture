<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��� ���μ���</title>
</head>
<body>
<jsp:useBean id="BCrypt" class="org.mindrot.bcrypt.BCrypt" scope="page" />
<%
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	String idchk = request.getParameter("idchk");
	String pwdchk = request.getParameter("pwdchk");
	// �ϴ� parameter�� �޴´�.
	
/* 	System.out.println("USERID : " +userid);
	System.out.println("PWD : " +pwd);
	System.out.println("IDCHK : " +idchk);
	System.out.println("PWDCHK : " +pwdchk); */
	
	//�н����� ��ȣȭ
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
	// �ϴ��� ��Ű ��ȿ�ð��� �������� �ʾ����Ƿ� â�� ������ ��Ű�� �������.
	
	response.sendRedirect("Main.jsp");
%>
</body>
</html>