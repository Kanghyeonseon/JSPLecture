<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		01StartPage로 전달받은 isForward값이 
		true이면 포워드방식으로 03Forward로 페이지 처리가 되도록 합니다. 이 때 입력했던 ID/PW를 그대로 화면에 출력해줍니다.
		false이면 리다이렉트 방식으로 04Redirect로 페이지처리가 되도록 합니다.
		이 떄 입력했던 ID/Pw를 화면에 출력해줍니다.
	 -->
<%@page import="java.net.*" %>
<%
	String id = request.getParameter("userid");
	String pw = request.getParameter("pwd");
	String isForward = request.getParameter("isForward");
	
	
 	if(isForward.equals("t")){
		RequestDispatcher dispatcher = 
		request.getRequestDispatcher("03Forward.jsp");
		dispatcher.forward(request, response);
		
	} else {
		id = URLEncoder.encode(id);
		response.sendRedirect("04Redirect.jsp?userid=" + id + "&pwd=" + pw);
	} 
	
%>


</body>
</html>