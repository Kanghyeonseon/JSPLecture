<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     errorPage="05ErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="Ch03.*" %>
<%
	String BookCode = request.getParameter("BookCode");
	String BookName = request.getParameter("BookName");
	String Publisher = request.getParameter("Publisher");

	if(BookCode=="" && BookName=="" && Publisher=="") {
		throw new Exception("BookCode, BookName, Publisher 전부 널입니다..");
	} else if(BookCode=="" && BookName=="") {
		throw new Exception("BookCode BookName두 개가 널입니다.");
	} else if(BookCode=="" && Publisher=="") {
		throw new Exception("BookCode Publisher 두 개가 널입니다.");
	} else if(BookName=="" && Publisher=="") {
		throw new Exception("BookName Publisher 두 개가 널입니다.");
	} else if(BookCode=="") {
		throw new Exception("BookCode null입니다.");
	} else if(BookName==""){
		throw new Exception("BookName null입니다.");
	} else if(Publisher==""){
		throw new Exception("Publisher null입니다.");
	} 
	BookDTO dto = new BookDTO(BookCode, BookName, Publisher);
	out.println("확인 : " + dto);
%>
</body>
</html>