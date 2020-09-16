package baby.mem.pojo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import baby.model.BabyMemberVO;
import kr.mem.model.MemberDAO;
import kr.mem.model.MemberVO;
public class MemberContentController implements Controller{
	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

       	int num=Integer.parseInt(request.getParameter("num"));
       	BabyMemberDAO dao=new BabyMemberDAO();
		BabyMemberVO vo=dao.memberContent(num);
		// memberContent.jsp
		request.setAttribute("vo", vo);		
		return "member/memberContent.jsp";
	}

}
