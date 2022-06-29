<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="CartBean" class="Ch07.CartRepository" scope="application" />
<%@ page import="java.util.*, Ch07.*" %>
<%
	String prodname = request.getParameter("prodname");
	String id = (String) session.getAttribute("ID");
	ArrayList<ProductDTO> list = CartBean.cart.get(id);
	for(int i=0; i<list.size();i++)
	{
		ProductDTO dto = list.get(i);
		if(dto.getProdname().equals(prodname))
		{
			list.remove(i);
			break;
		}
	}
%>
<script>
	alert("상품을 삭제했습니다.");
	location.href="05ShowCartList.jsp";
</script>
</body>
</html>