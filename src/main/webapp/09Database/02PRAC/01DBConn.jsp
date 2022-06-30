<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB connect</title>
</head>
<body>
	<%@page import="java.sql.*,java.util.*" %>
	<%
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "book_ex";
		String pw = "1234";
		Connection conn=null;
		try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url,id,pw);
		System.out.println("Connected...");
		}catch(Exception e){
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	%>
</body>
</html>