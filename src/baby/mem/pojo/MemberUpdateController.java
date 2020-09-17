package baby.mem.pojo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import baby.model.BabyMemberDAO;
import baby.model.BabyMemberVO;
import kr.mem.model.MemberDAO;
import kr.mem.model.MemberVO;

public class MemberUpdateController implements Controller{

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cpath = request.getContextPath();  
		
		  int num = Integer.parseInt(request.getParameter("num"));
	      String pw = request.getParameter("pw");
	      int hp = Integer.parseInt( request.getParameter("hp"));
	      int baby_age = Integer.parseInt( request.getParameter("baby_age"));
	      
		  BabyMemberVO vo = new BabyMemberVO();
		  vo.setPw(pw);
		  vo.setHp(hp);
		  vo.setBaby_age(baby_age);
		  
		  BabyMemberDAO dao= new BabyMemberDAO();
		  int cnt = dao.mem
		  String page = null;
		  if(cnt>0) {
			  page = "redirect:"+cpath+"/list.do";
		  }else {
			  throw new ServletException("error");
		  }
		  
		return page;
	}

}
