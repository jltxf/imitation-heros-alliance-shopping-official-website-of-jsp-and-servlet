package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class browServlet extends HttpServlet {

	/**

	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setCharacterEncoding("utf-8");
		String classify = request.getParameter("id");
		System.out.println(classify);
		String classify1 = request.getParameter("classify1");
		System.out.println(classify1);
		request.setAttribute("classify", classify);
		System.out.println(1111);
		request.setAttribute("classfed", classify1);
		System.out.println(2222);
		if (classify != null && classify1 != null) {
			request.getRequestDispatcher("/browserShop.jsp").forward(request,
					response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}
}
