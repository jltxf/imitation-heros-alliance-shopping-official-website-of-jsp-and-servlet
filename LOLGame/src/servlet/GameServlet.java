package servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class GameServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		HttpSession session = req.getSession(true);
		ServletContext app = session.getServletContext();
		String heroname = req.getParameter("heroname");
		String itemname = req.getParameter("itemname");
		String spellname = req.getParameter("spellname");
		// System.out.println(heroname);
		if (heroname != null) {
			app.setAttribute("heroname", heroname);
			resp.sendRedirect("2.jsp");
		}
		if (itemname != null) {
			app.setAttribute("itemname", itemname);
			resp.sendRedirect("3.jsp");
		}
		if (spellname != null) {
			app.setAttribute("spellname", spellname);
			resp.sendRedirect("4.jsp");
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
}
