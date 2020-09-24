package baby.mem.pojo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import baby.model.BabyMemberDAO;


@WebServlet("/runn")
public class runn extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("euc-kr");
		
		String category = request.getParameter("category");
		
		if (request.getParameter("category").equals("lotion")) {
			category = "lotion";
		}else if (request.getParameter("category").equals("oil")){
			category = "oil";
		}else if (request.getParameter("category").equals("cream")){
			category = "cream";
			
		}else if (request.getParameter("category").equals("wash")){
			category = "wash";
		}
		
		BabyMemberDAO dao = new BabyMemberDAO();
		
		
		String pre = request.getParameter("s");
		System.out.println(pre);
		
		response.setContentType("text/html;chrset=euc-kr");
		PrintWriter out = response.getWriter();
		
		
		out.print("<html>");
		out.print("<body>");
		out.print("category : ");
		out.print(category);
		out.print("<br>");
		out.print("pre : ");
		out.print(pre);
		out.print("</body>");
		out.print("</html>");
		
		
		
		
	}

}
