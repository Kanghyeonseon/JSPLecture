<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert</title>
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
			
			int i=1;
			while(i<=200) {
				pstmt = conn.prepareStatement("insert into Book_tbl values(?,?,?,?,?,?)");
				pstmt.setInt(1, i);
				pstmt.setInt(2, i);
				pstmt.setString(3, "name" + i);
				pstmt.setString(4, "publisher" + i);
				pstmt.setInt(5, i);
				pstmt.setInt(6, i);
				int result = pstmt.executeUpdate();
				i++;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		} finally {
			try { pstmt.close(); } catch(Exception e) { e.printStackTrace(); }
			try { conn.close(); } catch(Exception e) { e.printStackTrace(); }
		}
	%>
</body>
</html>