package servlet;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Postinfo;
import dao.PostDAO;

@SuppressWarnings("serial")
public class PostServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		String post = req.getParameter("post");
		String cont = req.getParameter("content");
		HttpSession session = req.getSession(true);
		String username = (String) session.getAttribute("username2");
		// System.out.println(username);
		// session.removeAttribute("username2");
		Timestamp time = new Timestamp(System.currentTimeMillis());
		Postinfo p = new Postinfo(username, post, cont, time);
		if (username != null) {
			PostDAO dao = new PostDAO();
			int i = dao.insertPost(p);
			if (i == 1) {
				resp.sendRedirect("postinfo.jsp");
			}
		} else {
			resp.sendRedirect("err.jsp");
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

}
