<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String border; String bgcolor; String height;
%>
<!-- 
	원래는 데이터를 받아서 데이터베이스에 저장시켜서 유지하는데
	전달받은값을 고정으로 쓰게 하기 위해 선언문에 선언이라도 해주었..다...
 -->
<%
	border = request.getParameter("border");
	bgcolor = request.getParameter("bgcolor");
	height = request.getParameter("height");
	String color = request.getParameter("color");
	String lineheight = request.getParameter("lineheight");
	String fontsize = request.getParameter("fontsize");
%>
<div id=header>
	헤더입니다.
</div>
<script>
	header = document.getElementById("header");
	header.style.border="<%=border%>";
	header.style.backgroundColor="<%=bgcolor%>";
	header.style.color="<%=color%>";
	header.style.height="<%=height%>";
	header.style.lineHeight="<%=lineheight%>";
	header.style.fontSize="<%=fontsize%>";
</script>