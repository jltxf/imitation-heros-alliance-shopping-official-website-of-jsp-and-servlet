package servlet;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Iteminfo;

import dao.ItemDAO;
import dao.SpellDAO;

@SuppressWarnings("serial")
public class deletspellServlet extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String namex=request.getParameter("namex");
		SpellDAO spellDAO=new SpellDAO();
		spellDAO.deletetintospell(namex);
		request.setAttribute("list", spellDAO.getAllSpellinfo());
	    request.getRequestDispatcher("gameinfo.jsp").forward(request, response);
		
	}

}
