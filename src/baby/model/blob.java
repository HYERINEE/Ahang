package baby.model;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class blob {
	public static void main(String[] args) {
		
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
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
			
			File f = new File("C:/Users/SMT015/Crawling/oil_img/0.jpg");
			FileInputStream fis = new FileInputStream(f);
			
			String sql = "UPDATE TOTAL_MODEL SET=? WHERE NUM=1";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, "0.jpg");
			//psmt.setBinaryStream(2, fis, (int)f.length());
			int rownum = psmt.executeUpdate();
			
			if(rownum>0) {
				System.out.println("성공");
			}else {
				System.out.println("실패");
				
			}
			
			
			
		} catch (SQLException | FileNotFoundException e) {
			e.printStackTrace();
		}finally {
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
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
}
