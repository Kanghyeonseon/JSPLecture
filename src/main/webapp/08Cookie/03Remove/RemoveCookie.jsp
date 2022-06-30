<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>쿠키 삭제</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	// 특정 이름을 가지는 쿠키를 꺼내서 삭제한다.
	
	Cookie[] cookies = request.getCookies();
	if(cookies!=null){
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals(name)) 
			// 쿠키의 i번째에서 꺼낸 name의 값이 parameter로 전달받은 name의 값과 같은가?
			{
				cookies[i].setMaxAge(0);				// 쿠키의 유효시간을 0으로 설정하고
				response.addCookie(cookies[i]); // 쿠키 갱신. 유효시간이 response에 실려서 가야한다.
				%>
					<script>
						alert("쿠키 삭제 완료!");
						location.href="ShowCookie.jsp";
					</script>
					
				<%
			}
		}
	}
%>
<script>
	alert("해당 쿠키는 존재하지 않습니다.");
	location.href="ShowCookie.jsp";
</script>
</body>
</html>