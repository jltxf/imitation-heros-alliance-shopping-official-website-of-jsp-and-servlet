package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Commodity;

import dao.CommodityDAO;

public class browserServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String classify = request.getParameter("classify");
		String no = request.getParameter("no");
		String classify1 = request.getParameter("classify1");
//		String pagenumber = request.getParameter("pagenumber");
		if (classify1 == null) {
			int ids = 0;
			String ser = "";
			if (no != null) {
				ids = Integer.parseInt(no);
				CommodityDAO c = new CommodityDAO();
				Commodity com = c.getCommodityById(ids);
				ser = com.getClassify();
			}
			if (id!=null&&id.equals("one")) {
				request.setAttribute("ser", ser);
				request.setAttribute("no", no);
				request.getRequestDispatcher("/shopinfo.jsp").forward(request,
						response);// servlet重定向
			} else {
				
					request.setAttribute("classify", classify);
					request.getRequestDispatcher("/browserShop.jsp").forward(
							request, response);

			}

		} else {
//			if(null!=pagenumber){
				request.setAttribute("classify1", classify1);
				request.setAttribute("classify", classify);
				// request.setAttribute("classf", classify);
//				request.setAttribute("pagenumber", pagenumber);
				request.getRequestDispatcher("/browserShop.jsp").forward(request,
						response);
			}
	}

}
