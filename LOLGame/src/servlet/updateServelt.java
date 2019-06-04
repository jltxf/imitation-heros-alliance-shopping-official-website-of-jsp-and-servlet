package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utils.Md5Utils;

import model.UserInfo;
import dao.UserInfoDAO;

/**
 * Servlet implementation class updateServelt
 */
public class updateServelt extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 104247068513024006L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setCharacterEncoding("utf-8");
		HttpSession session2 = request.getSession(true);
		String username=(String) session2.getAttribute("username1");
		String signature = (String) session2.getAttribute("signature1");
		String authcode = request.getParameter("authcode");
		String password =request.getParameter("passwords");
		System.out.println("111");
		System.out.println(password);
		System.out.println(username);
		System.out.println(authcode);
		System.out.println(signature);
		String errMsg3 ="";
		if(signature.equals(authcode)){
			System.out.println("we");
			System.out.println(signature);
			UserInfoDAO dao =new UserInfoDAO();
			UserInfo u = new UserInfo(username, Md5Utils.md5(password));// 封装成Userinfo对象
			System.out.println("ss");
			System.out.println(username);
			int res = dao.UpdateUser(u);
			
			System.out.println(res);
			if(res!=1){
				errMsg3="用户名与密码不匹配！";
				request.setAttribute("errMsg3",errMsg3);
				request.getRequestDispatcher("/alteros.jsp").forward(request,
						response);
			}else{
				errMsg3="密码修改成功！";
				request.setAttribute("errMsg3",errMsg3);
				request.getRequestDispatcher("/index.jsp").forward(request,
						response);
			}
		}else{
			errMsg3="验证码出错！";
			request.setAttribute("errMsg3",errMsg3);
			request.getRequestDispatcher("/alteros.jsp").forward(request,
					response);
		}
	}
	

}
