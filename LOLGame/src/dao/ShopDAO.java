package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Shop;
import db.DBManager;

public class ShopDAO {

	public int insertShop(Shop s) {
		int result = 0;
		Connection con = null;
		PreparedStatement pt = null;
		ResultSet rs = null;
		con = DBManager.getConn();
		String sql = "insert into shop(id,username,name,num,time) value (?,?,?,?,?)";
		try {
			pt = con.prepareStatement(sql);
			pt.setInt(1,s.getId());
			pt.setString(2, s.getUsername());
			pt.setString(3, s.getName());
			pt.setInt(4, s.getNum());
			pt.setString(5, s.getTime());
			result = pt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (pt != null) {
				try {
					pt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return result;
	}
	
	public List<Shop> getShopById(String username) {
		Connection con = null; // 与数据库的连接对象
		List<Shop> list = new ArrayList<Shop>();
		PreparedStatement pt = null;
		ResultSet rs = null;
		Shop c = null;
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select * from shop where username=?;"; // SQL语句
			pt = con.prepareStatement(sql);
			pt.setString(1, username);
			rs = pt.executeQuery();
			if (rs != null) {
				while(rs.next()) {
					c = new Shop();
					c.setName(rs.getString("name"));
					c.setNum(rs.getInt("num"));
					c.setTime(rs.getString("time"));
					list.add(c);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 逆序关闭资源
			if (pt != null)
				try {
					pt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return list;
	}

	public List<Shop> getShopALLById() {
		Connection con = null; // 与数据库的连接对象
		List<Shop> list = new ArrayList<Shop>();
		PreparedStatement pt = null;
		ResultSet rs = null;
		Shop c = null;
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select * from shop;"; // SQL语句
			pt = con.prepareStatement(sql);
			rs = pt.executeQuery();
			if (rs != null) {
				while(rs.next()) {
					c = new Shop();
					c.setId(rs.getInt("id"));
					c.setUsername(rs.getString("username"));
					c.setName(rs.getString("name"));
					c.setNum(rs.getInt("num"));
					c.setTime(rs.getString("time"));
					list.add(c);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 逆序关闭资源
			if (pt != null)
				try {
					pt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return list;
	}

}
