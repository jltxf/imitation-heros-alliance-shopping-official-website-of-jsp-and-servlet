package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utils.Md5Utils;

import model.UserInfo;

import dao.UserInfoDAO;

public class insertUserServelt extends HttpServlet {

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
		String username = request.getParameter("username");
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");
		String webpagenamed = request.getParameter("webpagenamed");
		String cel=request.getParameter("cell");
//		System.out.println(cel);
		Long cell = Long.parseLong(cel);
		String email = request.getParameter("email");
		String sex = request.getParameter("gender");
//		System.out.println(cel);
		String errMsg = "";
		System.out.println("1111");
		UserInfoDAO dao = new UserInfoDAO();
		System.out.println("22222");
		UserInfo u = new UserInfo(username, Md5Utils.md5(password1), cell,
				email,sex);
		System.out.println("33333");
		int res = dao.insertUser(u);
		System.out.println(res);
		if (res == 0) {
			int n = dao.insertUser(u);
			if (n > 0) {
				session1.setAttribute("username2", (String)username);
				request.getRequestDispatcher(webpagenamed).forward(request, response);
			} else {
				errMsg = "注册失败";
				request.setAttribute("errMsg", errMsg);
				request.getRequestDispatcher(webpagenamed).forward(request,
						response);
				return;
			}
		} else {
			errMsg = res == 1 ? "用户名已经被占用！" : "Email已经被注册过！";
			request.setAttribute("errMsg", errMsg);
			request.getRequestDispatcher(webpagenamed).forward(request,
					response);
			return;
		}
	}
}
