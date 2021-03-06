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
		String sql = "update BabyMember set pw=? , hp=? where id=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getPw());
			psmt.setInt(2, vo.getHp());
			psmt.setString(3, vo.getId());

			cnt = psmt.executeUpdate();
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			dbClose();
		}

		return cnt;
	}

	public int memberdelete(BabyMemberVO vo) {
		int cnt = 0;
		String sql = "delete from BabyMember where id=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getId());
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return cnt;

	}

	public ArrayList<BabyMemberVO> memberlogin(String id_o, String pw_o) {
		// int cnt = 0;
		ArrayList<BabyMemberVO> list = new ArrayList<BabyMemberVO>();
		getConnect();
		String sql = "select id, pw from babymember where id=? and pw=?";
		try {

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id_o);
			psmt.setString(2, pw_o);
			rs = psmt.executeQuery();

			if (rs.next()) {
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				// BabyMemberVO vo = new BabyMemberVO(id, pw);
				list.add(new BabyMemberVO(id, pw));

			} else {
				System.out.println("嬢 list 設公吉牛 しし");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}

		return list;
	}

	public Total_modelVO memberAllList() {
		getConnect();
		Total_modelVO vo = null;

		String sql = "select * from total_model where num=1";

		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			if (rs.next()) {

				int num = rs.getInt(1);
				String category = rs.getString(2);
				String brand_id = rs.getString(3);
				String model_id = rs.getString(4);
				int allergy = rs.getInt(5);
				String allergy_ingre = rs.getString(6);
				int atopy = rs.getInt(7);
				int sensitivity = rs.getInt(8);
				String ingredient = rs.getString(9);
				double ingre_avg = rs.getDouble(10);
				String filename = rs.getString(11);
				String filecontent = rs.getString(12);
				int rank = rs.getInt(13);

				// 広奄
				vo = new Total_modelVO(num, category, brand_id, model_id, allergy, allergy_ingre, atopy, sensitivity,
						ingredient, ingre_avg, filename, filecontent, rank);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return vo;

	}

	public int BabymemberJoin(BabyMemberVO vo) {

		conn = getConnect();
		String sql = "insert into BabyMember values(?,?,?,?,?)";
		int cnt = -1;
		try {
			psmt = conn.prepareStatement(sql);
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

	public ArrayList<Total_modelVO> CaLotion() {
		ArrayList<Total_modelVO> list1 = new ArrayList<Total_modelVO>();
		conn = getConnect();

		String sql = "select * from total_model where category='lotion'";

		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {

				int num = rs.getInt(1);
				String category = rs.getString(2);
				String brand_id = rs.getString(3);
				String model_id = rs.getString(4);
				int allergy = rs.getInt(5);
				String allergy_ingre = rs.getString(6);
				int atopy = rs.getInt(7);
				int sensitivity = rs.getInt(8);
				String ingredient = rs.getString(9);
				double ingre_avg = rs.getDouble(10);
				String filename = rs.getString(11);
				String filecontent = rs.getString(12);
				int rank = rs.getInt(13);

				// 広奄
				Total_modelVO vo = new Total_modelVO(num, category, brand_id, model_id, allergy, allergy_ingre, atopy,
						sensitivity, ingredient, ingre_avg, filename, filecontent, rank);
				list1.add(vo);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return list1;

	}

	public ArrayList<Total_modelVO> CaOil() {
		ArrayList<Total_modelVO> list2 = new ArrayList<Total_modelVO>();
		conn = getConnect();

		String sql = "select * from total_model where category='oil'";

		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {

				int num = rs.getInt(1);
				String category = rs.getString(2);
				String brand_id = rs.getString(3);
				String model_id = rs.getString(4);
				int allergy = rs.getInt(5);
				String allergy_ingre = rs.getString(6);
				int atopy = rs.getInt(7);
				int sensitivity = rs.getInt(8);
				String ingredient = rs.getString(9);
				double ingre_avg = rs.getDouble(10);
				String filename = rs.getString(11);
				String filecontent = rs.getString(12);
				int rank = rs.getInt(13);

				// 広奄
				Total_modelVO vo = new Total_modelVO(num, category, brand_id, model_id, allergy, allergy_ingre, atopy,
						sensitivity, ingredient, ingre_avg, filename, filecontent, rank);
				list2.add(vo);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return list2;

	}

	public ArrayList<Total_modelVO> CaWash() {
		ArrayList<Total_modelVO> list3 = new ArrayList<Total_modelVO>();
		conn = getConnect();

		String sql = "select * from total_model where category='wash'";

		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {

				int num = rs.getInt(1);
				String category = rs.getString(2);
				String brand_id = rs.getString(3);
				String model_id = rs.getString(4);
				int allergy = rs.getInt(5);
				String allergy_ingre = rs.getString(6);
				int atopy = rs.getInt(7);
				int sensitivity = rs.getInt(8);
				String ingredient = rs.getString(9);
				double ingre_avg = rs.getDouble(10);
				String filename = rs.getString(11);
				String filecontent = rs.getString(12);
				int rank = rs.getInt(13);

				// 広奄
				Total_modelVO vo = new Total_modelVO(num, category, brand_id, model_id, allergy, allergy_ingre, atopy,
						sensitivity, ingredient, ingre_avg, filename, filecontent, rank);
				list3.add(vo);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return list3;

	}

	public ArrayList<Total_modelVO> CaCream() {
		ArrayList<Total_modelVO> list = new ArrayList<Total_modelVO>();
		conn = getConnect();

		String sql = "select * from total_model where category='cream'";

		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {

				int num = rs.getInt(1);
				String category = rs.getString(2);
				String brand_id = rs.getString(3);
				String model_id = rs.getString(4);
				int allergy = rs.getInt(5);
				String allergy_ingre = rs.getString(6);
				int atopy = rs.getInt(7);
				int sensitivity = rs.getInt(8);
				String ingredient = rs.getString(9);
				double ingre_avg = rs.getDouble(10);
				String filename = rs.getString(11);
				String filecontent = rs.getString(12);
				int rank = rs.getInt(13);

				// 広奄
				Total_modelVO vo = new Total_modelVO(num, category, brand_id, model_id, allergy, allergy_ingre, atopy,
						sensitivity, ingredient, ingre_avg, filename, filecontent, rank);
				list.add(vo);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return list;

	}

	public Total_modelVO CaAll(String num1) {
		Total_modelVO vo = null;
		conn = getConnect();

		String sql = "select * from total_model where num =? ";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, num1);
			rs = psmt.executeQuery();

			if (rs.next()) {

				int num = rs.getInt(1);
				String category = rs.getString(2);
				String brand_id = rs.getString(3);
				String model_id = rs.getString(4);
				int allergy = rs.getInt(5);
				String allergy_ingre = rs.getString(6);
				int atopy = rs.getInt(7);
				int sensitivity = rs.getInt(8);
				String ingredient = rs.getString(9);
				double ingre_avg = rs.getDouble(10);
				String filename = rs.getString(11);
				String filecontent = rs.getString(12);
				int rank = rs.getInt(13);

				// 広奄
				vo = new Total_modelVO(num, category, brand_id, model_id, allergy, allergy_ingre, atopy, sensitivity,
						ingredient, ingre_avg, filename, filecontent, rank);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return vo;

	}
	
	public ArrayList<Total_modelVO> CaAllOrderby() {
		
		ArrayList<Total_modelVO> list4 = new ArrayList<Total_modelVO>();
		conn = getConnect();

		String sql = "select * from total_model where category='lotion' and rownum <4 order by rank ";

		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			if (rs.next()) {

				int num = rs.getInt(1);
				String category = rs.getString(2);
				String brand_id = rs.getString(3);
				String model_id = rs.getString(4);
				int allergy = rs.getInt(5);
				String allergy_ingre = rs.getString(6);
				int atopy = rs.getInt(7);
				int sensitivity = rs.getInt(8);
				String ingredient = rs.getString(9);
				double ingre_avg = rs.getDouble(10);
				String filename = rs.getString(11);
				String filecontent = rs.getString(12);
				int rank = rs.getInt(13);

				// 広奄
				Total_modelVO vo2 = new Total_modelVO(num, category, brand_id, model_id, allergy, allergy_ingre, atopy, sensitivity,
						ingredient, ingre_avg, filename, filecontent, rank);

				list4.add(vo2);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return list4;

	}
	
	public Total_modelVO CaRank(String num2) {
		Total_modelVO vo2 = null;
		conn = getConnect();

		String sql = "select * from total_model where num =? ";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, num2);
			rs = psmt.executeQuery();

			if (rs.next()) {

				int num = rs.getInt(1);
				String category = rs.getString(2);
				String brand_id = rs.getString(3);
				String model_id = rs.getString(4);
				int allergy = rs.getInt(5);
				String allergy_ingre = rs.getString(6);
				int atopy = rs.getInt(7);
				int sensitivity = rs.getInt(8);
				String ingredient = rs.getString(9);
				double ingre_avg = rs.getDouble(10);
				String filename = rs.getString(11);
				String filecontent = rs.getString(12);
				int rank = rs.getInt(13);

				// 広奄
				vo2 = new Total_modelVO(num, category, brand_id, model_id, allergy, allergy_ingre, atopy, sensitivity,
						ingredient, ingre_avg, filename, filecontent, rank);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return vo2;

	}
	

	public ArrayList<Total_modelVO> osusume(String category_num, String line) {
		ArrayList<Total_modelVO> list13 = new ArrayList<Total_modelVO>();
		
		Total_modelVO vo2 = null;
		conn = getConnect();
		
		if (category_num.equals("0")) {
			category_num = "lotion";
		}else if(category_num.equals("1")) {
			category_num = "oil";
		}else if(category_num.equals("4")) {
			category_num = "wash";
		}else if(category_num.equals("3")) {
			category_num = "cream";
		}
		double result = Double.parseDouble(line);		
		
		System.out.println(category_num+":"+result);
		
		String sql = "select * from total_model where category=? and ingre_avg< ? and rownum<4 order by ingre_avg";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, category_num);
			psmt.setDouble(2, result);
			
			rs = psmt.executeQuery();

			while (rs.next()) {

				int num = rs.getInt("num");
				String category = rs.getString(2);
				String brand_id = rs.getString(3);
				String model_id = rs.getString(4);
				int allergy = rs.getInt(5);
				String allergy_ingre = rs.getString(6);
				int atopy = rs.getInt(7);
				int sensitivity = rs.getInt(8);
				String ingredient = rs.getString(9);
				double ingre_avg = rs.getDouble(10);
				String filename = rs.getString(11);
				String filecontent = rs.getString(12);
				int rank = rs.getInt(13);

				// 広奄
				vo2 = new Total_modelVO(num, category, brand_id, model_id, allergy, allergy_ingre, atopy, sensitivity,
						ingredient, ingre_avg, filename, filecontent, rank);

				list13.add(vo2);	
		
			}
            
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}// 焼 神徹 せせせせ鉛側且熊革 軒什闘 13猿走 嗣精匝せせせせ13 置蕉収切~せせせせせせせせ
		return list13;

	}
	

	
	

}
