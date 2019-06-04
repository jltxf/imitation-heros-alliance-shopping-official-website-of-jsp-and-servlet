package servlet;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Iteminfo;

import dao.ItemDAO;

@SuppressWarnings("serial")
public class deletitemServler extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String namex=request.getParameter("namex");
		ItemDAO itemDAO=new ItemDAO();
		itemDAO.deletetintoitem(namex);
		request.setAttribute("list", itemDAO.getAllIteminfo());
	    request.getRequestDispatcher("gameinfo.jsp").forward(request, response);
		
	}

}