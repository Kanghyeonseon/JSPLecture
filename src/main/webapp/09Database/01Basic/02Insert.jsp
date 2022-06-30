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
			//쿼리 객체 생성
			pstmt = conn.prepareStatement("insert into tbl_board values(?,?,?,?)");
			pstmt.setInt(1, 1);
			pstmt.setString(2, "Title1");
			pstmt.setString(3, "Content1");
			pstmt.setString(4, "Writer1");
			int result = pstmt.executeUpdate();
			// executeupdate : delete, insert, update를 할 때 사용 -> insert : 삽입 한 행의 개수 , delete : 삽입 된 행의 개수가 리턴된다.
			// executequery : select
			
			if(result>0) {
				%>
					<script>
						alert("성공!");
					</script>
				<%
			}
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