<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	java.util.Scanner sc = new java.util.Scanner(System.in);
%>
<%
	System.out.print("행의 개수 입력 : ");
	int row = sc.nextInt();
	System.out.print("열의 개수 입력 : ");
	int col = sc.nextInt();
%>

<table>
<%
for(int i=0; i<col ;i++){
%>
	<tr>
		<%
		for(int j=0; j<row ; j++) {
		%>		
			<td><%=(j+1) + "행" + (i+1) + "열" %></td>
		<%	
		}
		
		%>	
	</tr>

<%
}
%>
</table>
</body>
</html>