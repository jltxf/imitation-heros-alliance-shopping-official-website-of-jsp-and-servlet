package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Commodity;

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

import dao.CommodityDAO;

public class deletebrowServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private ServletConfig config;
	String obj = "";
	String modte = "";
	String msg = null;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		modte = request.getParameter("modte");
		if (modte.equals("delete")) {
			CommodityDAO com = new CommodityDAO();
			int i = com.deleteCommdity(Integer.parseInt(id));
			String webpagename = request.getParameter("webpagename");
			String obj = webpagename.replaceAll("/|/", "");// 去除/
			System.out.println(i);
			if (i != 0) {
				msg = "删除！";
				request.setAttribute("msg", msg);
				request.setAttribute("obj", obj);
				request.getRequestDispatcher("/success1.jsp").forward(request,
						response);
			}

		}

		System.out.println(2222);
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
	
		
	}
	 /* Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
	
	}
}
