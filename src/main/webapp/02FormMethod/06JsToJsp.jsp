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
	String c1 = request.getParameter("c1");
	String c2 = request.getParameter("c2");
	String c3 = request.getParameter("c3");
	String c4 = request.getParameter("c4");
	if(c1==null)
	{
		c1="beige";
	}if( c2==null){
		c2="beige";
	}if(c3==null) {
		c3="beige";
	}if(c4==null) {
		c4="beige";
	}
%>

<script>
	function JSFunc() {
		form = document.FORM1;
		/* FORM1이라는 이름을가진 것의 위치정보를 받는다. 여기서는 아래에있는 form이다. */
		form[0].value="blue";
		form[1].value="orange";
		form[2].value="red";
		form[3].value="skyblue";
		form.action="06JsToJsp.jsp";
		form.submit();
	}
</script>

<form name="FORM1">
	<input name="c1">
	<input name="c2">
	<input name="c3">
	<input name="c4">
	<button onclick="JSFunc()">전송</button>
</form>
	
<table border=1 width=300px height=300px>
	<tr>
		<td bgcolor=<%=c1 %>>1</td>
		<td bgcolor=<%=c2 %>>2</td>
	</tr>
	<tr>
		<td bgcolor=<%=c3 %>>3</td>
		<td bgcolor=<%=c4 %>>4</td>
	</tr>
</table>

</body>
</html>