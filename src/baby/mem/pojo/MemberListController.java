package baby.mem.pojo;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import baby.model.BabyMemberVO;
import kr.mem.model.MemberDAO;
import kr.mem.model.MemberVO;
public class MemberListController implements Controller{
	@Override
	public String requestHandle(HttpServletRequest request, 
			                    HttpServletResponse response) throws ServletException, IOException {
        BabyMemberDAO dao=new BabyMemberDAO();
        ArrayList<BabyMemberVO> list=dao.memberAllList();
		request.setAttribute("list", list);
		return "member/memberList.jsp";
	}
}
