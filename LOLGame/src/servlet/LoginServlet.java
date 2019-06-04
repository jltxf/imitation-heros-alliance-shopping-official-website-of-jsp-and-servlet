package servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AdminDAO;

@SuppressWarnings("serial")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		HttpSession session = req.getSession(true);
		ServletContext app = session.getServletContext();
		String user = req.getParameter("User");
		String pwd = req.getParameter("Pwd");
		// System.out.println(user);
		// System.out.println(pwd);
		AdminDAO admin = new AdminDAO();
		if (admin.getAdminName(user) && admin.getAdminPwd(pwd)) {
			System.out.println("登录成功");
			app.setAttribute("user", user);
			resp.sendRedirect("manager.jsp");
		}

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

}
