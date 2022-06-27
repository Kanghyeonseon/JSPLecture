<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="test1" class="Ch05.SimpleBean" scope="page"/>
	<%-- id는 참조변수같은것이다. class는경로. scope는 객체가 살아있는 범위. 보통은 page 에서만 살아있다. --%>
	<jsp:setProperty name="test1" property="msg1" value="msg1의 값!" />
	<jsp:setProperty name="test1" property="msg2" value="msg2의 값!" />
	<!-- 자바빈즈의 프로퍼티 값을 설정 .get, setProperty 객체이름 : test1 setter가 있어야 setProperty를 사용할 수 있다.-->
	
	<!-- 빈 객체 속성값 확인 -->
	MSG1 : <jsp:getProperty name="test1" property="msg1" /><br>
	MSG2 : <jsp:getProperty name="test1" property="msg2" /><br>
	
	<!-- 액션태그쓰지않고 객체를 사용하는 방법 -->
	<hr>
	<%@page import="Ch05.SimpleBean" %>
	<%
		SimpleBean bean = new SimpleBean();
		bean.setMsg1("메세지1");
		bean.setMsg2("메세지2");
	%>
	MSG1 : <%=bean.getMsg1() %><br>
	MSG2 : <%=bean.getMsg2() %>
	
</body>
</html>