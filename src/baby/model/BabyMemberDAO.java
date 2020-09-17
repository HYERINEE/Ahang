package baby.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class BabyMemberDAO {

	// dao�� �����ͺ��̽��� �޼ҵ带 ������ִ� ���� --> �ʿ�� �ϴ� ��ü��

	private Connection conn; // ���ᰴü --> conn
	private PreparedStatement psmt; // sql ��ɹ� ���� --> psmt
	private ResultSet rs; // select �� ������ ��ü ���ڵ� �� ��Ƽ� ���� --> ����� ���� ó��

	// �����ε� --> �� �����ε��ϴ°�? �����Ҷ� Ŭ�������� �޸𸮸� �÷��ַ��� comfile ������ �ƴ϶�, ���⼭ �ٷ� �ϴ� ��
	// �ʱ�ȭ �� : static --> �Ǹ��� �ѹ� ����
	static {
		try { // DriverManager
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

	}

	// ���ᰴü --> ���� url �߸����� ����! --> finally���� �����ε� �ÿ��� �ʿ� ����
	public Connection getConnect() {
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
		String user = "hr";
		String password = "hr";

		// DriverManager �ȿ� �ִ� �ֵ��� �� Static
		try {
			conn = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// ���ϰ� �������ֱ�
		return conn;
	}

	// Close �޼���
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
	
	// ���� �������̽��� ����� �����ϴ� �۾��� �ʿ��ϴ�! ������ ���⼭�� �̰ź���!
		public int memberInsert( BabyMemberVO vo ) {
			
			conn = getConnect();
			// sql ��ɹ��� �ٲٴ� �۾��� ���� ������ �۾� --> ������ ����� ����? 
			// ==> �������,  java���� �������� sql���������� ���� �����ؼ� ����ϴ� �����ӿ�ũ : MyBatis 
			String SQL = "insert into BabyMember values (?,?,?,?,?,?)";
			int cnt = -1;  // -1�� �ǹ̴� ����!
			
			try {
				// ���� �������� ��Ų�� --> �ӵ��� ������ �ϱ� ����, �׸��� �ι�° ����
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
			String sql ="update  ���̺� �̸�  set  pw=? , hp=? , baby_age=?";
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
