package baby.mem.pojo;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import baby.model.BabyMemberDAO;
import baby.model.Total_modelVO;


@WebServlet("/lotionSelect")
public class lotionSelect extends HttpServlet {
	protected String requestHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BabyMemberDAO dao = new BabyMemberDAO();
		ArrayList<Total_modelVO> list = dao.lotion_atopy();		
		request.setAttribute("list", list);
		
		return "./pure/lotion.jsp";
		
	}

}
