<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��Ű ����</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	// Ư�� �̸��� ������ ��Ű�� ������ �����Ѵ�.
	
	Cookie[] cookies = request.getCookies();
	if(cookies!=null){
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals(name)) 
			// ��Ű�� i��°���� ���� name�� ���� parameter�� ���޹��� name�� ���� ������?
			{
				cookies[i].setMaxAge(0);				// ��Ű�� ��ȿ�ð��� 0���� �����ϰ�
				response.addCookie(cookies[i]); // ��Ű ����. ��ȿ�ð��� response�� �Ƿ��� �����Ѵ�.
				%>
					<script>
						alert("��Ű ���� �Ϸ�!");
						location.href="ShowCookie.jsp";
					</script>
					
				<%
			}
		}
	}
%>
<script>
	alert("�ش� ��Ű�� �������� �ʽ��ϴ�.");
	location.href="ShowCookie.jsp";
</script>
</body>
</html>