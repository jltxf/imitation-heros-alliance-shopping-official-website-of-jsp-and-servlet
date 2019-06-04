package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PostDAO;

@SuppressWarnings("serial")
public class PostManagerServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		PostDAO dao = new PostDAO();
		int i = Integer.parseInt(req.getParameter("str"));
		String method = req.getParameter("method");
		System.out.println(i);
		System.out.println(method);
		if (method.equals("delete")) {
			dao.deletePost(i);
			resp.sendRedirect("deletePost.jsp");
		}
	}
}
