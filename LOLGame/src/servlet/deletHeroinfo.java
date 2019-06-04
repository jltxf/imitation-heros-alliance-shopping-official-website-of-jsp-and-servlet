package servlet;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Heroinfo;

import dao.HeroDAO;

@SuppressWarnings("serial")
public class deletHeroinfo extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		response.setCharacterEncoding("utf-8");
//		request.setCharacterEncoding("utf-8");
//		String namex=request.getParameter("namexx");
//		HeroDAO heroDAO=new HeroDAO();
//		heroDAO.deleteHeroinfo(namex);
//		System.out.println(namex);
//		request.setAttribute("list", heroDAO.getAllHeroinfo());
//	    request.getRequestDispatcher("gameinfo.jsp").forward(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		doGet(request, response);
//		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		String namex=request.getParameter("namexx");
//		String p = new String(namex.getBytes("ISO8859-1"),"utf-8");
//		System.out.println(namex);
		HeroDAO heroDAO=new HeroDAO();
		heroDAO.deleteHeroinfo(namex);
		request.setAttribute("list", heroDAO.getAllHeroinfo());
	    request.getRequestDispatcher("gameinfo.jsp").forward(request, response);
//		String namex=request.getParameter("namexx");
//		HeroDAO heroDAO=new HeroDAO();
//		heroDAO.deletHeroinfo(namex);
//		request.setAttribute("list", heroDAO.getAllHeroinfo());
//		request.getRequestDispatcher("gameinfo.jsp")
//		.forward(request, response);		
	}

}
