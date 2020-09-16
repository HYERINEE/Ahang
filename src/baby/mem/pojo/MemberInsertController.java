package baby.mem.pojo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import baby.model.BabyMemberDAO;
import baby.model.BabyMemberVO;
import kr.mem.model.MemberDAO;
import kr.mem.model.MemberVO;
public class MemberInsertController implements Controller{
	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cpath=request.getContextPath();
  
		String name = request.getParameter("name");
	      String phone = request.getParameter("phone");
	      String addr = request.getParameter("addr");			  
	      BabyMemberVO vo = new BabyMemberVO();
	      vo.setName(name);
	      vo.setPhone(phone);
	      vo.setAddr(addr);		
		  BabyMemberDAO dao=new BabyMemberDAO();
		  int cnt=dao.memberInsert(vo);
		  String page=null;
		  if(cnt>0) {
			  page="redirect:"+cpath+"/list.do";
		  }else {
			throw new ServletException("error");  
		  }
		return page;
	}    
}
