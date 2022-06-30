<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Select</title>
</head>
<body>
	<%@page import="java.sql.*,java.util.*" %>
	<%
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "book_ex";
		String pw = "1234";
		Connection conn=null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url,id,pw);
			System.out.println("Connected...");
			// 쿼리객체 생성
			pstmt = conn.prepareStatement("select * from tbl_board");
			rs = pstmt.executeQuery();
			while(rs.next()) {
				out.print(rs.getInt("bno") + "|");
				out.print(rs.getString("title") + "|");
				out.print(rs.getString("content") + "|"); 
				out.print(rs.getString("writer") + "<br>"); 
			}
		}catch(Exception e){
			e.printStackTrace();
		} finally {
			try { rs.close(); } catch(Exception e) { e.printStackTrace(); }
			try { pstmt.close(); } catch(Exception e) { e.printStackTrace(); }
			try { conn.close(); } catch(Exception e) { e.printStackTrace(); }
		}
	%>
</body>
</html>