package baby.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class BabyMemberDAO {

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

	public int memberInsert(BabyMemberVO vo) {

		getConnect();

		String SQL = "insert into BabyMember values (?,?,?,?,?)";
		int cnt = -1;

		try {

			psmt = conn.prepareStatement(SQL);
			psmt.setString(1, vo.getId());
			psmt.setString(2, vo.getPw());
			psmt.setString(3, vo.getName());
			psmt.setInt(4, vo.getAge());
			psmt.setInt(5, vo.getHp());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}

	public int memberupdate(BabyMemberVO vo) {
		int cnt = 0;
		getConnect();
		String sql = "update  BabyMember  set  pw=? , hp=? where id=?";
		try {
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, vo.getPw());
			psmt.setInt(2, vo.getHp());
			psmt.setString(3, vo.getId());

			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			dbClose();
		}

		return cnt;
	}
	public int memberdelete(BabyMemberVO vo) {
		int cnt =0;
		String sql ="delete from BabyMember where id=?";
		try {
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, vo.getId());
			cnt =psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}

	public Total_modelVO memberAllList() {
		conn = getConnect();
		Total_modelVO vo=null;
		
		String sql = "select * from total_model where num=1";
		
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				
				int num = rs.getInt(1);
				String category= rs.getString(2);
				String brand_id = rs.getString(3);
				String model_id = rs.getString(4);
				int allergy = rs.getInt(5);
				String allergy_ingre = rs.getString(6);
				int atopy = rs.getInt(7);
				int sensitivity = rs.getInt(8);
				String ingredient = rs.getString(9);
				double ingre_avg = rs.getDouble(10);
				String model_img = rs.getString(11);
				String filename = rs.getString(12);
				String filecontent = rs.getString(13);
				
				//¹­±â
				vo = new Total_modelVO(num, category, brand_id, model_id, allergy, allergy_ingre, atopy, sensitivity, ingredient, ingre_avg, model_img, filename, filecontent);
				
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			dbClose();
		}
		return vo;
		
	}
	
	
	
	
}
