package baby.mem.pojo;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import baby.model.BabyMemberDAO;
import baby.model.BabyMemberVO;

/**
 * Servlet implementation class BabyLogin
 */
@WebServlet("/BabyLogin")
public class BabyLogin extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		BabyMemberDAO dao = new BabyMemberDAO();
		//BabyMemberVO vo = new BabyMemberVO(id, pw);
		ArrayList<BabyMemberVO> list = dao.memberlogin(id, pw);
		
		Enumeration<String> hnames = request.getHeaderNames();
		PrintWriter out = response.getWriter();
		
		
		
		if (list != null) { //id와 pw가 db에 있는 상태.
			
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			response.sendRedirect("./pure/AhangHome_loginBx.html");
			//out.print("window.location.href='./pure/AhangHome.html'");
			
		}else {
			//실패
		
		}
		
		
		
	
	}

}
