package servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class CheckPostServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		HttpSession session = req.getSession(true);
		ServletContext app = session.getServletContext();
		ServletContext app2 = session.getServletContext();
		String post1 = req.getParameter("post1");
		String context1 = req.getParameter("cont1");
		System.out.println(post1);
		if (post1 != null && context1 != null) {
			app.setAttribute("post", post1);
			app2.setAttribute("cont", context1);
			resp.sendRedirect("1.jsp");
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

}
