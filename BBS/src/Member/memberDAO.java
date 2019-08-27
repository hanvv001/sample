package Member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class memberDAO {
	
	private Connection conn; // 데이터베이스를 접근하기위한 객체
	private PreparedStatement pstmt;
	private ResultSet rs; // 정보를 담을 수 있는 변수를 만들어준다.
	
	
	// mysql 처리부분
	public memberDAO() {
		// 생성자
		try {
			String URL = "jdbc:mysql://localhost:3306/bbs?useSSL=false";
			String ID = "root";
			String PW = "1234";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(URL, ID, PW);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 로그인 처리부분
	public int login(String ID, String PW) {
		String SQL = "SELECT PW FROM MEMBER WHERE ID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, ID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(PW)) {
					return 1; //로그인 성공					
				}
			}else { 
				return 0; //비밀번호 불일치
			}
			return -1; //아이디없음
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2; //데이터베이스 오류
	}
	
	public int join(member member) {
		String SQL = "INSERT INTO MEMBER (AccountNumber,ID,PW,Rating,Email,Contact,gender,name ) VALUES (?,?,?,?,?,?,?,? ) ";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, member.getAccountNumber());
			pstmt.setString(2, member.getiD());
			pstmt.setString(3, member.getpW());
			pstmt.setInt(4, member.getRating());
			pstmt.setString(5, member.getEmail());
			pstmt.setString(6, member.getContact());
			pstmt.setString(7, member.getGender());
			pstmt.setString(8, member.getName());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			return -1; // 데이터베이스 오류
		}
		return 0;
	}
	
}