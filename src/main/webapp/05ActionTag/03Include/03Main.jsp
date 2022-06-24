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
	String border=request.getParameter("border");
	String bgcolor=request.getParameter("bgcolor");
	String height=request.getParameter("height");
%>
<!-- 원래는  -->

<div id="wrapper">
	<!-- 헤더 -->
	<jsp:include page="module/header.jsp">
		<jsp:param value="<%=border %>" name="border" />
		<jsp:param value="<%=bgcolor %>" name="bgcolor" />
		<jsp:param value="<%=height %>" name="height" />
	</jsp:include>
	

	<!-- 내비 -->
	<jsp:include page="module/navi.jsp" />	
	
	<!-- 컨텐츠 -->
	<div>컨텐츠</div>
	
	<!-- 푸터 -->
	<jsp:include page="module/footer.jsp" />		
	
</div>


</body>
</html>