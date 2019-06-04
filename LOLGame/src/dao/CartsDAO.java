package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Carts;
import model.UserInfo;
import db.DBManager;

public class CartsDAO {
	public int insertCarts(Carts c) {
		int result = 0;
		Connection con = null;
		PreparedStatement pt = null;
		ResultSet rs = null;
		con = DBManager.getConn();
		String sql = "insert into cart(id,username,name,num,price) value (?,?,?,?,?)";
		try {
			pt = con.prepareStatement(sql);
			pt.setInt(1, c.getId());
			pt.setString(2, c.getUsername());
			pt.setString(3, c.getName());
			pt.setInt(4, c.getNum());
			pt.setFloat(5, c.getPrice());
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

	public int updateCarts(Carts c) {
		int result = 0;
		Connection con = null;
		PreparedStatement pt = null;
		con = DBManager.getConn();
		String sql = "update cart set num=? where name = ? and username = ?";
		try {
			pt = con.prepareStatement(sql);
			pt.setInt(1, c.getNum());
			pt.setString(2, c.getName());
			pt.setString(3, c.getUsername());
			pt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
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

	public int checkCarts(String username1, String name1) {
		int result = 0;
		Connection con = null;
		PreparedStatement pt = null;
		ResultSet rs = null;
		String username = "";
		String name = "";
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select * from cart";

			pt = con.prepareStatement(sql);
			// u为传入的Userinfo类的一个对象
			rs = pt.executeQuery();// 执行SQL查询，得到数据结果集
			while (rs.next()) {
				username = rs.getString("username");
				name = rs.getString("name");
				// System.out.println(username1);
				// System.out.println(username);
				// System.out.println(name);
				// System.out.println(name1);
				if (username1.equals(username) && name1.equals(name)) {
					result = 1;
					//System.out.println(result);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
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
		return result;
	}

	public int deleteCarts(int id) {
		int result = 0;
		Connection con = null;
		PreparedStatement pt = null;
		con = DBManager.getConn();
		String sql = "delete from cart where id=?";
		try {
			pt = con.prepareStatement(sql);
			pt.setInt(1, id);
			result = pt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
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

	public List<Carts> getCartsById(String username) {
		Connection con = null; // 与数据库的连接对象
		List<Carts> list = new ArrayList<Carts>();
		PreparedStatement pt = null;
		ResultSet rs = null;
		Carts c = null;
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select * from cart where username=?;"; // SQL语句
			pt = con.prepareStatement(sql);
			pt.setString(1, username);
			rs = pt.executeQuery();
			if (rs != null) {
				while (rs.next()) {
					c = new Carts();
					c.setId(rs.getInt("id"));
					c.setName(rs.getString("name"));
					c.setNum(rs.getInt("num"));
					c.setPrice(rs.getFloat("price"));
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

	public List<Carts> getAllCartsById() {
		Connection con = null; // 与数据库的连接对象
		List<Carts> list = new ArrayList<Carts>();
		PreparedStatement pt = null;
		ResultSet rs = null;
		Carts c = null;
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select * from cart;"; // SQL语句
			pt = con.prepareStatement(sql);
			rs = pt.executeQuery();
			if (rs != null) {
				while (rs.next()) {
					c = new Carts();
					c.setId(rs.getInt("id"));
					c.setUsername(rs.getString("username"));
					c.setName(rs.getString("name"));
					c.setNum(rs.getInt("num"));
					c.setPrice(rs.getFloat("price"));
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

	public Carts getCartsById(int id) {
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		Carts c = null;
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select * from cart where id=?;"; // SQL语句
			pt = con.prepareStatement(sql);
			pt.setInt(1, id);
			rs = pt.executeQuery();
			if (rs != null) {
				while (rs.next()) {
					c = new Carts();
					c.setId(rs.getInt("id"));
					c.setUsername(rs.getString("username"));
					c.setName(rs.getString("name"));
					c.setNum(rs.getInt("num"));
					c.setPrice(rs.getFloat("price"));
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
		return c;
	}

	public int getCartsByUsernameandName(String username, String name) {
		int sda = 0;
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select num from  cart  where username=? and name=?  ;"; // SQL语句
			pt = con.prepareStatement(sql);
			pt.setString(1, username);
			pt.setString(2, name);
			rs = pt.executeQuery();
			if (rs != null) {
				while (rs.next()) {
					sda = rs.getInt("num");
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
		return sda;
	}

	public int getCartsByName(String username, String name) {
		int sda = 0;
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select * from  cart  where username=? and name=?  ;"; // SQL语句
			pt = con.prepareStatement(sql);
			pt.setString(1, username);
			pt.setString(2, name);
			rs = pt.executeQuery();
			if (rs != null) {
				while (rs.next()) {
					sda = rs.getInt("id");
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
		return sda;
	}
	
}
