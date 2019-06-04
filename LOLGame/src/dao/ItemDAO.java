package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Heroinfo;
import model.Iteminfo;
import db.DBManager;

/**
 * 英雄信息逻辑类
 * 
 * @author Administrator
 * 
 */

public class ItemDAO {

	Iteminfo iteminfo = new Iteminfo();

	public List<Iteminfo> getAllIteminfo() {
		// DBConn conn=new DBConn();
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		List<Iteminfo> list = new ArrayList<Iteminfo>(); // 商品集合
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select * from iteminfo";// SQL语句
			pt = con.prepareStatement(sql);// 把sql语句传入数据库（等待具体数值，预编译）
			rs = pt.executeQuery();// 执行SQL查询，得到数据结果集，最初，光标定位在第一行之前
			if (rs != null) {
				while (rs.next()) {
					Iteminfo iteminfo = new Iteminfo();
					iteminfo.setNo(rs.getInt("no"));
					iteminfo.setName(rs.getString("name"));
					iteminfo.setPicture(rs.getString("picture"));
					list.add(iteminfo);// 把一个商品加入集合
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			// 释放数据集对象
			// 释放语句对象
			if (pt != null)
				try {
					pt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			// 关闭连接
			if (con != null)
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return list;
	}

	public int getNum() {
		int i = 0;
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select no from iteminfo";// SQL语句
			pt = con.prepareStatement(sql);// 把sql语句传入数据库（等待具体数值，预编译）
			rs = pt.executeQuery();// 执行SQL查询，得到数据结果集，最初，光标定位在第一行之前
			if (rs != null) {
				while (rs.next()) {
					i++;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		} finally {
			// 释放数据集对象
			// 释放语句对象
			if (pt != null)
				try {
					pt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			// 关闭连接
			if (con != null)
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return i;
	}

	public List<String> getAllItemHref() {
		// DBConn conn=new DBConn();
		String href = "";
		List<String> list = new ArrayList<String>();
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		// List<Heroinfo> list = new ArrayList<Heroinfo>(); // 英雄信息集合
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select href from iteminfo";// SQL语句
			pt = con.prepareStatement(sql);// 把sql语句传入数据库（等待具体数值，预编译）
			rs = pt.executeQuery();// 执行SQL查询，得到数据结果集，最初，光标定位在第一行之前
			if (rs != null) {
				while (rs.next()) {
					href = rs.getString("href");
					list.add(href);// 把全部英雄路径加入集合
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			// 释放数据集对象
			// 释放语句对象
			if (pt != null)
				try {
					pt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			// 关闭连接
			if (con != null)
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return list;
	}

	public List<String> getAllItemName() {
		// DBConn conn=new DBConn();
		String name = "";
		List<String> list = new ArrayList<String>();
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		// List<Heroinfo> list = new ArrayList<Heroinfo>(); // 英雄信息集合
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select name from iteminfo";// SQL语句
			pt = con.prepareStatement(sql);// 把sql语句传入数据库（等待具体数值，预编译）
			rs = pt.executeQuery();// 执行SQL查询，得到数据结果集，最初，光标定位在第一行之前
			if (rs != null) {
				while (rs.next()) {
					name = rs.getString("name");
					list.add(name);// 把全部英雄路径加入集合
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			// 释放数据集对象
			// 释放语句对象
			if (pt != null)
				try {
					pt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			// 关闭连接
			if (con != null)
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return list;
	}

	public List<String> getAllItemPath() {
		// DBConn conn=new DBConn();
		String path = "";
		List<String> list = new ArrayList<String>();
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		// List<Heroinfo> list = new ArrayList<Heroinfo>(); // 英雄信息集合
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select picture from iteminfo";// SQL语句
			pt = con.prepareStatement(sql);// 把sql语句传入数据库（等待具体数值，预编译）
			rs = pt.executeQuery();// 执行SQL查询，得到数据结果集，最初，光标定位在第一行之前
			if (rs != null) {
				while (rs.next()) {
					path = rs.getString("picture");
					list.add(path);// 把全部英雄路径加入集合
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			// 释放数据集对象
			// 释放语句对象
			if (pt != null)
				try {
					pt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			// 关闭连接
			if (con != null)
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return list;
	}

	public String getItemPathByNo(int no) {
		String path = "";
		List<String> list = getAllItemPath();
		int i = 1;
		for (String l : list) {
			if (i == no) {
				path = l;
			}
			i++;
		}
		return path;
	}

	public String getItemHrefByNo(int no) {
		String href = "";
		List<String> list = getAllItemHref();
		int i = 1;
		for (String l : list) {
			if (i == no) {
				href = l;
			}
			i++;
		}
		return href;
	}

	public String getItemNameByNo(int no) {
		String name = "";
		List<String> list = getAllItemName();
		int i = 1;
		for (String l : list) {
			if (i == no) {
				name = l;
			}
			i++;
		}
		return name;
	}

	public List<Integer> getAllItemType() {
		int type = 0;
		List<Integer> list = new ArrayList<Integer>();
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		// List<Heroinfo> list = new ArrayList<Heroinfo>(); // 英雄信息集合
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select type from iteminfo";// SQL语句
			pt = con.prepareStatement(sql);// 把sql语句传入数据库（等待具体数值，预编译）
			rs = pt.executeQuery();// 执行SQL查询，得到数据结果集，最初，光标定位在第一行之前
			if (rs != null) {
				while (rs.next()) {
					type = rs.getInt("type");
					list.add(type);// 把全部英雄路径加入集合
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			// 释放数据集对象
			// 释放语句对象
			if (pt != null)
				try {
					pt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			// 关闭连接
			if (con != null)
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return list;
	}

	public int getTypeByNo(int no) {
		int type = 0;
		List<Integer> list = getAllItemType();
		int i = 1;
		for (int l : list) {
			if (i == no) {
				type = l;
			}
			i++;
		}
		return type;
	}

	// public static void main(String[] args) {
	// ItemDAO item = new ItemDAO();
	// for (int i = 1; i <= item.getNum(); i++) {
	// int p = item.getTypeByNo(i);
	// System.out.println(p);
	// }
	// }

	public Iteminfo getIteminfoById(int id) {
		// DBConn conn=new DBConn();
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		Iteminfo iteminfo = null;
		try {
			con = DBManager.getConn();
			String sql = "select * from iteminfo where no=?;"; // SQL语句
			pt = con.prepareStatement(sql);
			pt.setInt(1, id);
			rs = pt.executeQuery();
			if (rs != null) {
				if (rs.next()) {
					iteminfo = new Iteminfo();
					iteminfo.setNo(rs.getInt("no"));
					iteminfo.setName(rs.getString("name"));
					iteminfo.setPicture(rs.getString("picture"));
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
		return iteminfo;
	}
	public int  insertintoitem(Iteminfo it) {//添加物品的方法
		// DBConn conn=new DBConn();
		int result =0;
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		try {
			con = DBManager.getConn();
			String sql = "insert into iteminfo(no,name,picture) values(1,?,?)"; // SQL语句
			pt = con.prepareStatement(sql);
			pt.setString(1, it.getName());
			pt.setString(2, it.getPicture());
			result = pt.executeUpdate();
			
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
		return result;
	}
	public void  deletetintoitem(String name) {//删除物品的方法

		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		try {
			con = DBManager.getConn();
			String sql = "delete from iteminfo where name like "+ "'"+name+"'"; // SQL语句
			pt = con.prepareStatement(sql);
			pt.executeUpdate();
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
	}
	public boolean update(Iteminfo it,String name) {
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		boolean flag = false;
		try {
			con = DBManager.getConn();
			String sql = "update iteminfo set name=?,picture=? where name like "
					+ "'" + name + "'";
			pt = con.prepareStatement(sql);
			pt.setString(1, it.getName());
			pt.setString(2, it.getPicture());
			flag = pt.executeUpdate() > 0;
			System.out.println(flag);
		} catch (Exception e) {
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
		return flag;
	}
}
