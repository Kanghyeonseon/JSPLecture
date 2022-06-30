<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
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
			//쿼리 객체 생성
			pstmt = conn.prepareStatement("Delete from tbl_board where bno = ?");
			pstmt.setInt(1, 2);
			int result = pstmt.executeUpdate();
			if (result>0) {
				System.out.println("성공");
			} else { System.out.println("실패!"); }
		}catch(Exception e){
			e.printStackTrace();
		} finally {
			// 자원 제거는 만들어진 역순으로 해 준다.
			try { pstmt.close(); } catch(Exception e) { e.printStackTrace(); }
			try { conn.close(); } catch(Exception e) { e.printStackTrace(); }
		}
	%>
</body>
</html>