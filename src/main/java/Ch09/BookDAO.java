package Ch09;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BookDAO {

	private static BookDAO instance = new BookDAO();

	public static BookDAO getInstance() {
		if (instance == null)
			instance = new BookDAO();
		return instance;
	}

	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String id = "book_ex";
	private String pw = "1234";

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	private BookDAO() {
		try {

			// 드라이버 적재
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// DB에 연결
			conn = DriverManager.getConnection(url, id, pw);
			System.out.println("Connected...");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	//

	// Post200처리
	public void Post200(BookDTO dto) {

		try {
			for (int i = 1; i <= 200; i++) {
				pstmt = conn.prepareStatement("insert into book_tbl values(?,?,?,?,?,?)");
				pstmt.setInt(1, i);
				pstmt.setInt(2, dto.getBookcode() + i);
				pstmt.setString(3, dto.getBookname() + i);
				pstmt.setString(4, dto.getPublisher() + i);
				pstmt.setInt(5, dto.getTotalpage() + i);
				pstmt.setInt(6, dto.getAmount() + i);
				pstmt.executeUpdate();

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	// 조회함수
	public ArrayList<BookDTO> Select() {
		ArrayList<BookDTO> list = new ArrayList();
		try {
			pstmt = conn.prepareStatement("select * from book_tbl order by NO asc");
			rs = pstmt.executeQuery();
			BookDTO dto = null;
			while (rs.next()) {
				dto = new BookDTO();
				dto.setNo(rs.getInt("NO"));
				dto.setBookcode(rs.getInt("bookcode"));
				dto.setBookname(rs.getString("bookname"));
				dto.setPublisher(rs.getString("publisher"));
				dto.setTotalpage(rs.getInt("totalpage"));
				dto.setAmount(rs.getInt("amount"));

				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}

	// 조회함수(조건 검색)
	// type - C: bookcode, N : bookname, P : publisher 로 정의 할 것임
	public ArrayList<BookDTO> Select(String type, BookDTO tdto) {
		ArrayList<BookDTO> list = new ArrayList();
		try {
			if(type.equals("C")) {
				pstmt = conn.prepareStatement("select * from book_tbl where bookcode like '%'||?||'%'");
				pstmt.setInt(1, tdto.getBookcode());
			} else if(type.equals("N")) {
				pstmt = conn.prepareStatement("select * from book_tbl where bookname like '%'||?||'%'");
				pstmt.setString(1, tdto.getBookname());
			} else if(type.equals("P")) {
				pstmt = conn.prepareStatement("select * from book_tbl where publisher like '%'||?||'%'");
				pstmt.setString(1, tdto.getPublisher());
			}
			rs = pstmt.executeQuery();
			BookDTO dto = null;
			while (rs.next()) {
				dto = new BookDTO();
				dto.setNo(rs.getInt("NO"));
				dto.setBookcode(rs.getInt("bookcode"));
				dto.setBookname(rs.getString("bookname"));
				dto.setPublisher(rs.getString("publisher"));
				dto.setTotalpage(rs.getInt("totalpage"));
				dto.setAmount(rs.getInt("amount"));

				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { pstmt.close(); } catch (Exception e) { e.printStackTrace(); }
			try { rs.close(); } catch (Exception e) { e.printStackTrace(); }
		}
		return list;
	}

	
//	 조회함수 범위검색 no가 100-150사이의 행만 Select
	//강사님 코드
	public ArrayList<BookDTO> Select(int spage, int epage) {
		ArrayList<BookDTO> list = new ArrayList();
		try {
			pstmt = conn.prepareStatement("select * from book_tbl where no >= ? and no <=?");
			pstmt.setInt(1, spage);
			pstmt.setInt(2, epage);
			rs = pstmt.executeQuery();
			BookDTO dto = null;
			while (rs.next()) {
				dto = new BookDTO();
				dto.setNo(rs.getInt("NO"));
				dto.setBookcode(rs.getInt("bookcode"));
				dto.setBookname(rs.getString("bookname"));
				dto.setPublisher(rs.getString("publisher"));
				dto.setTotalpage(rs.getInt("totalpage"));
				dto.setAmount(rs.getInt("amount"));
				list.add(dto);
			}
		} catch(Exception e) { e.printStackTrace(); }
		  finally { 
			  try { pstmt.close(); } catch (Exception e) { e.printStackTrace(); }
			  try { rs.close(); } catch (Exception e) { e.printStackTrace(); }
		  }
		return list;
	}
	
	
	//내 코드
	public ArrayList<BookDTO> Select(int spage, int epage, BookDTO dto) {
		ArrayList<BookDTO> list = new ArrayList();
		try {
			pstmt = conn.prepareStatement("select * from book_tbl where no >= ? and no <=?");
			pstmt.setInt(1, spage);
			pstmt.setInt(2, epage);
			 
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = new BookDTO();
				dto.setNo(rs.getInt("NO"));
				dto.setBookcode(rs.getInt("bookcode"));
				dto.setBookname(rs.getString("bookname"));
				dto.setPublisher(rs.getString("publisher"));
				dto.setTotalpage(rs.getInt("totalpage"));
				dto.setAmount(rs.getInt("amount"));

				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { pstmt.close(); } catch (Exception e) { e.printStackTrace(); }
			try { rs.close(); } catch (Exception e) { e.printStackTrace(); }
		}
		return list;
	}
	
	// 조건검색 포함 범위지정
	public ArrayList<BookDTO> Select(Criteria cri, BookDTO search) {
		ArrayList<BookDTO> list = new ArrayList();
		try {
			if(cri.getType().equals("C")) {
				pstmt = conn.prepareStatement("select * from (select * from book_tbl where bookcode like '%'||?||'%' order by No asc) where rownum between 1 and ?");
				pstmt.setInt(1, search.getBookcode());
				pstmt.setInt(2, cri.getEnd());
			} else if(cri.getType().equals("N")) {
				pstmt = conn.prepareStatement("select * from (select * from book_tbl where bookname like '%'||?||'%' order by No asc) where rownum between 1 and ?");
				pstmt.setString(1, search.getBookname());
				pstmt.setInt(2, cri.getEnd());
			} else if(cri.getType().equals("P")) {
				pstmt = conn.prepareStatement("select * from (select * from book_tbl where publisher like '%'||?||'%' order by No asc) where rownum between 1 and ?");
				pstmt.setString(1, search.getPublisher());
				pstmt.setInt(2, cri.getEnd());
			}
			rs = pstmt.executeQuery();
			BookDTO dto = null;
			while (rs.next()) {
				dto = new BookDTO();
				dto.setNo(rs.getInt("NO"));
				dto.setBookcode(rs.getInt("bookcode"));
				dto.setBookname(rs.getString("bookname"));
				dto.setPublisher(rs.getString("publisher"));
				dto.setTotalpage(rs.getInt("totalpage"));
				dto.setAmount(rs.getInt("amount"));

				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { pstmt.close(); } catch (Exception e) { e.printStackTrace(); }
			try { rs.close(); } catch (Exception e) { e.printStackTrace(); }
		}
		return list;
	}
	
	
	
	public static void main(String[] args) {
		BookDTO dto = new BookDTO(0, 10101010, "Title", "Publisher", 100, 10);
		BookDAO dao = BookDAO.getInstance();
		dao.Post200(dto);
	}

}
