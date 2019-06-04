package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Heroinfo;

import db.DBManager;

/**
 * 英雄信息逻辑类
 * 
 * @author Administrator
 * 
 */

public class HeroDAO {
	Heroinfo hero = new Heroinfo();

	public List<Heroinfo> getAllHeroinfo() {
		// DBConn conn=new DBConn();
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		List<Heroinfo> list = new ArrayList<Heroinfo>(); // 商品集合
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select * from heroinfo";// SQL语句
			pt = con.prepareStatement(sql);// 把sql语句传入数据库（等待具体数值，预编译）
			rs = pt.executeQuery();// 执行SQL查询，得到数据结果集，最初，光标定位在第一行之前
			if (rs != null) {
				while (rs.next()) {
					Heroinfo Heroinfo = new Heroinfo();
					Heroinfo.setNo(rs.getInt("no"));
					Heroinfo.setName(rs.getString("name"));
					Heroinfo.setPicture(rs.getString("picture"));
					list.add(Heroinfo);// 把一个商品加入集合
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
		// List<Heroinfo> list = new ArrayList<Heroinfo>(); // 英雄信息集合
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select no from heroinfo";// SQL语句
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

	public List<String> getAllHeroHref() {
		// DBConn conn=new DBConn();
		String href = "";
		List<String> list = new ArrayList<String>();
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		// List<Heroinfo> list = new ArrayList<Heroinfo>(); // 英雄信息集合
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select href from heroinfo";// SQL语句
			pt = con.prepareStatement(sql);// 把sql语句传入数据库（等待具体数值，预编译）
			rs = pt.executeQuery();// 执行SQL查询，得到数据结果集，最初，光标定位在第一行之前
			if (rs != null) {
				while (rs.next()) {
					href = rs.getString("href");
					// Heroinfo Heroinfo = new Heroinfo();
					// Heroinfo.setHno(rs.getString("hno"));
					// Heroinfo.setHname(rs.getString("hname"));
					// Heroinfo.setHpicture(rs.getString("hpicture"));
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

	public List<String> getAllHeroPath() {
		// DBConn conn=new DBConn();
		String path = "";
		List<String> list = new ArrayList<String>();
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		// List<Heroinfo> list = new ArrayList<Heroinfo>(); // 英雄信息集合
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select picture from heroinfo";// SQL语句
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

	public List<Integer> getAllHeroType() {
		// DBConn conn=new DBConn();
		int type = 0;
		List<Integer> list = new ArrayList<Integer>();
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		// List<Heroinfo> list = new ArrayList<Heroinfo>(); // 英雄信息集合
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select type from heroinfo";// SQL语句
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
		List<Integer> list = getAllHeroType();
		int i = 1;
		for (int l : list) {
			if (i == no) {
				type = l;
			}
			i++;
		}
		return type;
	}

	public String getHeroPathByNo(int no) {
		String path = "";
		List<String> list = getAllHeroPath();
		int i = 1;
		for (String l : list) {
			if (i == no) {
				path = l;
			}
			i++;
		}
		return path;
	}

	public String getHeroHrefByNo(int no) {
		String href = "";
		List<String> list = getAllHeroHref();
		int i = 1;
		for (String l : list) {
			if (i == no) {
				href = l;
			}
			i++;
		}
		return href;
	}

	public List<String> getAllHeroName() {
		// DBConn conn=new DBConn();
		String name = "";
		List<String> list = new ArrayList<String>();
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		// List<Heroinfo> list = new ArrayList<Heroinfo>(); // 英雄信息集合
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select name from heroinfo";// SQL语句
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

	public String getHeroNameByNo(int no) {
		String name = "";
		List<String> list = getAllHeroName();
		int i = 1;
		for (String l : list) {
			if (i == no) {
				name = l;
			}
			i++;
		}
		return name;
	}

	public static void main(String[] args) {
		HeroDAO heroDao = new HeroDAO();
		for (int i = 1; i <= heroDao.getNum(); i++) {
			int p = heroDao.getTypeByNo(i);
			System.out.println(p);
		}
	}

	public Heroinfo getHeroinfoById(int id) {
		// DBConn conn=new DBConn();
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		Heroinfo Heroinfo = null;
		try {
			con = DBManager.getConn();
			String sql = "select * from Heroinfo where no=?;"; // SQL语句
			pt = con.prepareStatement(sql);
			pt.setInt(1, id);
			rs = pt.executeQuery();
			if (rs != null) {
				if (rs.next()) {
					Heroinfo = new Heroinfo();
					Heroinfo.setNo(rs.getInt("no"));
					Heroinfo.setName(rs.getString("name"));
					Heroinfo.setPicture(rs.getString("picture"));
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
		return Heroinfo;
	}

	public int insertintoHeroinfo(Heroinfo hf) {// 添加英雄的方法
		// DBConn conn=new DBConn();
		int result = 0;
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		try {
			con = DBManager.getConn();
			String sql = "insert into heroinfo(name,no,picture,type) values(?,1,?,?)"; // SQL语句
			pt = con.prepareStatement(sql);
			pt.setString(1, hf.getName());
			pt.setString(2, hf.getPicture());
			pt.setInt(3, hf.getType());
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

	public void deleteHeroinfo(String name) {// 删除英雄的方法

		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		try {
			con = DBManager.getConn();
			String sql = "delete from heroinfo where name like " + "'" + name
					+ "'"; // SQL语句
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

	public boolean update(Heroinfo hf,String name) {
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		boolean flag = false;
		try {
			con = DBManager.getConn();
			String sql = "update heroinfo set name=?, picture=?,type=? where name like "
					+ "'" + name + "'";
			pt = con.prepareStatement(sql);
			pt.setString(1,hf.getName());
			pt.setString(2, hf.getPicture());
			pt.setInt(3, hf.getType());
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
