<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.io.*" %>
<%
	String img1 = request.getParameter("img1");
	String img2 = request.getParameter("img2");
	String img3 = request.getParameter("img3");
	String img4 = request.getParameter("img4");
	Writer wout = new FileWriter("C:\\강현선\\EclipseWorkspace\\banner\\bname.txt");
	/* 상위참조변수로 하위객체 연결 -> 업캐스팅 */
	wout.write(img1+" ");
	wout.write(img2+" ");
	wout.write(img3+" ");
	wout.write(img4+" ");
	wout.flush();
	wout.close();
	response.sendRedirect("01Admin.jsp");
	/* 다시 돌아온다. */
%>

</body>
</html>