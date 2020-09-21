package baby.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class NoticeDAO {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	public Connection getConnect() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
		String user = "hr";
		String password = "hr";

		try {
			conn = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return conn;
	}

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

	public int NoticeInsert(NoticeVO vo) {

		getConnect();

		String SQL = "insert into Notice values (?,?,?,?,?,?)";
		int cnt = -1;

		try {
			psmt = conn.prepareStatement(SQL);
			psmt.setInt(1, vo.getNotice_num());
			psmt.setString(2, vo.getID());
			psmt.setString(3, vo.getReview());
			psmt.setInt(4, vo.getStar());
			psmt.setString(5, vo.getBrand_id());
			psmt.setString(5, vo.getModel_id());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}



}
