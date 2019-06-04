package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class delateServelt extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -677981540220915291L;

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		HttpSession session2 = request.getSession(true);
		String username = (String)session2.getAttribute("username2");
		String uri = (String) request.getParameter("id");//获得请求的jsp （/index.jsp)
		System.out.println(uri);
		String obj = uri.replaceAll("/|/","");//去除/
		if(username!=null){
			session2.removeAttribute("username2");
			System.out.println((String)session2.getAttribute("username2"));
		}
		System.out.println(obj);
		
		response.sendRedirect(obj);
	
		
	}

}
