package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.UserInfo;
import utils.Md5Utils;
import dao.UserInfoDAO;

public class checkUserServelt extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		HttpSession session1 = request.getSession(true);
		String username = request.getParameter("username1");
		String password = request.getParameter("password3");
		String errMsg1 = "";
		// if(username==""||password==""){
		// errMsg= "请输入用户名或密码";
		// request.setAttribute("errMsg", errMsg);
		// request.getRequestDispatcher("./login.jsp").forward(request,
		// response);
		// return;
		// //转发到login.jsp 地址栏不会有变化。
		//
		// }
		String webpagename = request.getParameter("webpagename");
		// System.out.println(i);
		UserInfoDAO dao = new UserInfoDAO();
		UserInfo u = new UserInfo(username, Md5Utils.md5(password));// 封装成Userinfo对象
		int res = dao.checkUser(u);
		// System.out.println(res);
		if (res == 1) {

			session1.setAttribute("username2", (String) username);
			request.getRequestDispatcher(webpagename)
					.forward(request, response);
		} else {
			errMsg1 = "用户名或密码错误";
			request.setAttribute("errMsg1", errMsg1);
			request.getRequestDispatcher(webpagename)
					.forward(request, response);
			return;
		}
	}

	public static void main(String[] args) {
	}

}
