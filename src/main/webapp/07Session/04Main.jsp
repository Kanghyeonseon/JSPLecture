<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>메인</h1>
세션아이디 : <%=session.getId() %><br>
계정아이디 : <%=session.getAttribute("ID") %><br>
세션 유지시간 : <%=session.getMaxInactiveInterval() %>초<br>
<script>
	max = <%=session.getMaxInactiveInterval() %>; // 총 세션 시간을 받아온다.
	function timer() {
		max = max - 1;
		if(max <0 ){
			clearInterval(tmp);
			alert("세션 종료");
			location.href="04LoginForm.jsp";
		}
		document.getElementById("timer").innerHTML = max;
	}
	tmp=setInterval(timer, 1000);
</script>
<p id="timer"></p>
<a href="04Logout.jsp">로그아웃</a>
</body>
</html>