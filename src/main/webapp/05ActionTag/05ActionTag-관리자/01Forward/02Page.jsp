<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setAttribute("02Page", "02Page에서 만든 데이터.");
%>
<%
	request.setCharacterEncoding("UTF-8");
	/* 이 부분은 강사님 깃허브봐야할듯 한글문자는 깨지도록 설정된다. */
%>
<!-- 파라미터를 추가할 때는 이렇게한다. -->
<jsp:forward page="03Page.jsp">
	<jsp:param name="02Page" value="02Page에서 만든 데이터" />
</jsp:forward>
<%--
 forward 액션태그로 어느페이지로 이동할 지 지정한다.
request내장객체의 값을 포함해서 03페이지로 넘겨준다. setAttribute한 값도 전달함!
requestDispatcher를 <jsp:forward :~~> 와같다.
 --%>

</body>
</html>