<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String border; String bgcolor; String height;
%>
<%@page import="java.io.*" %>
<%
	Reader rin = new FileReader("C:\\style\\header\\style.txt");
	String style="";
	while(true) {
		int data=rin.read();
		/* 더이상 읽어들일 값이 있냐는 뜻이다. */
		if(data==-1) break;
		/* 리턴타입은 int니까 문자열로 바꿔준다. 덧셈연산자+""을 넣어주면 문자열이된다. */
		style+=(char)data+"";
	}
	String[]arr = style.split(" ");
	
	String border = arr[0] + " " + arr[1] + " " + arr[2];
	String bgcolor = arr[3];
	String height = arr[4];

%>
<div id=header>
	헤더입니다.
</div>
<script>
	header = document.getElementById("header");
	header.style.border="<%=border%>";
	header.style.backgroundColor="<%=bgcolor%>";
	header.style.height="<%=height%>";
</script>