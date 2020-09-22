package baby.mem.pojo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import baby.model.BabyMemberDAO;
import baby.model.BabyMemberVO;


@WebServlet("/BabyJoin")
public class BabyJoin extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		int hp = Integer.parseInt(request.getParameter("hp"));
		
		BabyMemberVO vo = new BabyMemberVO(id, pw, name, age, hp);
		BabyMemberDAO dao = new BabyMemberDAO();
		
		int cnt = dao.BabymemberJoin(vo);
		
		response.setContentType("text/html;chrset=euc-kr");
		PrintWriter out = response.getWriter();
		
		if(cnt>0) {
			System.out.println("성공");
		}else {
			System.out.println("실패");
		}
		
		
	}

}
