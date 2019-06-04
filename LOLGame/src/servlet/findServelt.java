package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Shop;
import model.UserInfo;
import dao.ShopDAO;
import dao.UserInfoDAO;

@SuppressWarnings("serial")
public class findServelt extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		HttpSession session1 = request.getSession(true);
		String usernames =(String)session1.getAttribute("username2");
		System.out.println(usernames);
		if(usernames!=null){
			UserInfoDAO dao =new UserInfoDAO();
			UserInfo u = dao.findByusername(usernames);
			Long telephone = u.getTelephone();
			String email = u.getEmail();
			String sex = u.getSex();
			System.out.println(sex);
			
			request.setAttribute("telephone", telephone);
			request.setAttribute("email", email);
			request.setAttribute("sex", sex);
			System.out.println(email);
			request.getRequestDispatcher("/HeroCenter.jsp").forward(request, response);
			
		}
		
	}

}
