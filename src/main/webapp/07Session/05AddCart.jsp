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
<jsp:useBean id="ProductDTO" class="Ch07.ProductDTO" scope="page" />
<jsp:setProperty property="*" name="ProductDTO" />
<%@ page import="java.util.*, Ch07.*" %>
<%
	System.out.println("받은 상품 정보" + ProductDTO.toString());
	String id=(String)session.getAttribute("ID");
	CartBean.cart.get(id).add(ProductDTO);
%>
<script>
	alert("상품을 카트에 담았습니다.");
	lcoation.href="05Main.jsp";
</script>
</body>
</html>