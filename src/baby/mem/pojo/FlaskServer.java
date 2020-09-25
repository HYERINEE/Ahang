package baby.mem.pojo;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import baby.model.BabyMemberDAO;
import baby.model.Total_modelVO;

/**
 * Servlet implementation class FlaskServer
 */
@WebServlet("/FlaskServer")
public class FlaskServer extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// category:$("#category").val(),allergy_ingre:$(".allergy_ingre").val(),
			//		allergy:$(".allergy").val(),atopy:$(".atopy").val(),sensitivity:$(".sensitivity").val() 
		 
		
		 String category=request.getParameter("category"); String
		 allergy_ingre=request.getParameter("allergy_ingre"); String
		 allergy=request.getParameter("allergy"); String
		 atopy=request.getParameter("atopy"); String
		 sensitivity=request.getParameter("sensitivity");
		 
		 String url="http://210.105.224.109:5000?category="+category+"&allergy_ingre="+allergy_ingre+"&allergy="+allergy+"&atopy="+atopy+"&sensitivity="+sensitivity; 
		 
		 URL u=new URL(url);
		 
		 HttpURLConnection conn=(HttpURLConnection) u.openConnection();
		 conn.setRequestMethod("POST");
		 
		 BufferedReader br = new BufferedReader(new
		 InputStreamReader(conn.getInputStream(), "UTF-8")); String line;

		 while ((line= br.readLine()) != null) { 
			 System.out.println(line); 
		 	break; }
		
		 conn.disconnect();
		 
		
		BabyMemberDAO dao = new BabyMemberDAO();
		ArrayList<Total_modelVO> list13 =  dao.osusume(category, line);
		
		Gson g=new Gson();
		String json=g.toJson(list13);
		System.out.println(json);
		//request.setAttribute("list13", list13);
		
		//String t = "./pure/AhangSearchSub.jsp?";// 아 오키 ㅋㅋㅋㅋㅋㅋㅋ
		
		//response.sendRedirect(t);
		
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.println(json);
		//서블릿으로 값 넘어온거죠?? 네네 어 그러면 된 것 같아요 어차피 예측값이 서블릿으로 넘어가야 했어서요 . 네 잠시만
			
	}
}
