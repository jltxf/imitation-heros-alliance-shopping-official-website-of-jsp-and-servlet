package servlet;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Carts;
import model.Commodity;
import model.Shop;
import dao.CartsDAO;
import dao.CommodityDAO;
import dao.ShopDAO;

public class ShopServlet extends HttpServlet {

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
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

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String[] idx;
		// 用来获取多个复选按钮的值
		response.setCharacterEncoding("utf-8");
		idx = request.getParameterValues("idx");
		
		HttpSession session = request.getSession(true);
		String username = (String) session.getAttribute("username2");
		long t = System.currentTimeMillis();
		DateFormat td = new SimpleDateFormat("yyyy-MM-dd");
		String time = td.format(new Date(t));

		
		
		if (username != null) {
				int as = idx.length;
				int[] idd = new int[as];
				for (int i = 0; i < idx.length; i++) {
					idd[i] = Integer.parseInt(idx[i]);
				}
				ShopDAO dao = new ShopDAO();
				int x = 0;
				List<Shop> list = dao.getShopALLById();
				for (Shop c : list) {
					if (x <= c.getId()) {
						x = c.getId();
					}
				}
				x += 1;
				int c=0;
				CartsDAO cf =new CartsDAO();
				for (int j = 0; j <idx.length; j++) {
					
					Carts ch = cf.getCartsById(idd[j]);
					String namex =ch.getName();
					int numd =ch.getNum();
					Shop s = new Shop(x, username, namex, numd, time);
					x += 1;
					System.out.println(s.getName());
					c = dao.insertShop(s);
					if(c!=0){
						
						int ids =cf.getCartsByName(username, s.getName());
						System.out.println(ids);
						int sdd = cf.deleteCarts(ids);
						CommodityDAO csa =new CommodityDAO();
						int idv =csa.getCommodityByName(s.getName()).getId();
						int numx =csa.getCommodityByName(s.getName()).getNumber()-numd;
						int vs =csa.updateCommodityById(idv, numx);
						
					}
					request.getRequestDispatcher("success.jsp").forward(
							request, response);
				}
				
				

			}
		

	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
