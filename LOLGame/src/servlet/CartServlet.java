package servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CartsDAO;
import dao.CommodityDAO;
import dao.ShopDAO;

import model.Cart;
import model.Carts;
import model.Commodity;
import model.Shop;

public class CartServlet extends HttpServlet {

	private CommodityDAO com = new CommodityDAO();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session1 = request.getSession(true);
		String username = (String) session1.getAttribute("username2");

		response.setContentType("application/json");// 接收json发送必须的头部
		String action = request.getParameter("action");
		String id = request.getParameter("id");
		String number = request.getParameter("num");

		// System.out.println(number + "numb" + id);
		// System.out.println(id);
		// System.out.println(num);
//		System.out.println(action);
		if (action != null) {
			if (action.equals("add")) // 添加
			{
				boolean ser = addToCart(request, response);
				// System.out.println("ser");
				// System.out.println(ser);
				// System.out.println(action);
			}
			if (action.equals("buy")) // 添加
			{
				boolean ser = addToCart(request, response);
				// request.setAttribute("sers", username);
				// System.out.println(username);
				request.getRequestDispatcher("/cart.jsp").forward(request,
						response);
			}
			if (action.equals("show"))// 展示
			{
			

				request.getRequestDispatcher("/cart.jsp").forward(request,
						response);
			}
			if (action.equals("delete")) // 删除
			{
				if (deleteFromCart(request, response)) {
					request.getRequestDispatcher("/cart.jsp").forward(request,
							response);
				} else {
					request.getRequestDispatcher("/cart.jsp").forward(request,
							response);
				}
			}
		}

	}

	// 添加商品到购物车
	private boolean addToCart(HttpServletRequest request,
			HttpServletResponse response) {
		response.setContentType("application/json");// 接收json发送必须的头部
		int id = Integer.parseInt(request.getParameter("id"));
		// System.out.println("numb" + id);
		int num = Integer.parseInt(request.getParameter("num"));
		HttpSession session1 = request.getSession(true);
		String username = (String) session1.getAttribute("username2");
		CommodityDAO com = new CommodityDAO();
		float price = com.getCommodityById(id).getPrice();
		String name = com.getCommodityById(id).getName();
		// System.out.println(username);
		// System.out.println(name);
		boolean result = false;
		CartsDAO rt = new CartsDAO();
		if (rt.checkCarts(username, name) == 1) {
			int num1 = rt.getCartsByUsernameandName(username, name);
			num1 += num;
			Carts cs = new Carts(username, name, num1);
			int xs = rt.updateCarts(cs);
			if (xs != 0) {
				result = true;
			}
		} else {
			int i = 0;
			List<Carts> list = rt.getAllCartsById();
			for (Carts c : list) {
				if (i <= c.getId()) {
					i = c.getId();
				}
			}
			i += 1;

			Carts cs = new Carts(i, username, name, num, price);
			int xs = rt.insertCarts(cs);

			if (xs != 0) {
				result = true;
			}
		}
		return result;
	}

	// 从购物车中删除某商品
	private boolean deleteFromCart(HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");
		int id = Integer.parseInt(request.getParameter("id"));
		CartsDAO ca = new CartsDAO();
		int x = ca.deleteCarts(id);
//		System.out.println(id);
		if (x==1) {
			return true;
		} else {
			return false;
		}
	}

	public void init() throws ServletException {
	}
}

