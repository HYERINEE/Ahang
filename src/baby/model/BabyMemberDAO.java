package baby.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class BabyMemberDAO {

	// dao는 데이터베이스에 메소드를 만들어주는 역할 --> 필요로 하는 객체들

	private Connection conn; // 연결객체 --> conn
	private PreparedStatement psmt; // sql 명령문 전송 --> psmt
	private ResultSet rs; // select 를 날리면 전체 레코드 값 담아서 저장 --> 결과의 집합 처리

	// 동적로딩 --> 왜 동적로딩하는가? 실행할때 클래스에다 메모리를 올려주려고 comfile 시점이 아니라, 여기서 바로 하는 것
	// 초기화 블럭 : static --> 맨먼저 한번 실행
	static {
		try { // DriverManager
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

	}

	// 연결객체 --> 접속 url 잘못쓰지 말것! --> finally구문 동적로딩 시에는 필요 없음
	public Connection getConnect() {
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
		String user = "hr";
		String password = "hr";

		// DriverManager 안에 있는 애들은 다 Static
		try {
			conn = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// 리턴값 지정해주기
		return conn;
	}

	// Close 메서드
	public void dbClose() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// 먼저 인터페이스를 만들고 구현하는 작업이 필요하다! 하지만 여기서는 이거부터!
		public int memberInsert( BabyMemberVO vo ) {
			
			conn = getConnect();
			// sql 명령문을 바꾸는 작업이 가장 귀찮은 작업 --> 별도의 방법은 무엇? 
			// ==> 예를들면,  java에서 빠져나온 sql쿼리구문을 빼서 연결해서 사용하는 프레임워크 : MyBatis 
			String SQL = "insert into BabyMember values (?,?,?,?,?,?)";
			int cnt = -1;  // -1의 의미는 실패!
			
			try {
				// 먼저 컴파일을 시킨다 --> 속도를 빠르게 하기 위함, 그리고 두번째 설정
				psmt = conn.prepareStatement(SQL); 
				psmt.setString(1, vo.getId());
				psmt.setString(2, vo.getPw());
				psmt.setString(3, vo.getName());
				psmt.setInt(4, vo.getAge());
				psmt.setInt(5, vo.getHp());
				psmt.setInt(6, vo.getBaby_age());
				
				
				cnt = psmt.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				dbClose();
			}
			return cnt;
		}
		public int memberupdate (BabyMemberVO vo) {
			int cnt =0;
			conn=getConnect();
			String sql ="update  테이블 이름  set  pw=? , hp=? , baby_age=?";
			try {
				conn.prepareStatement(sql);
				psmt.setString(1, vo.getPw());
				psmt.setInt(1, vo.getHp());
				psmt.setInt(2, vo.getBaby_age());
				
				cnt=psmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return cnt;
		}

}
