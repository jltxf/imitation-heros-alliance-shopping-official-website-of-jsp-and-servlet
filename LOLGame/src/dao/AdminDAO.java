package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import db.DBManager;

public class AdminDAO {
	public List<String> getAllAdminName() {
		String name = "";
		// String pwd = "";
		List<String> list = new ArrayList<String>();
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		// List<Heroinfo> list = new ArrayList<Heroinfo>(); // 英雄信息集合
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select adminName,AdminPwd from admin";// SQL语句
			pt = con.prepareStatement(sql);// 把sql语句传入数据库（等待具体数值，预编译）
			rs = pt.executeQuery();// 执行SQL查询，得到数据结果集，最初，光标定位在第一行之前
			if (rs != null) {
				while (rs.next()) {
					name = rs.getString("adminName");
					// pwd = rs.getString("AdminPwd");
					list.add(name);// 把全部英雄路径加入集合
					// list.add(pwd);
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

	public boolean getAdminName(String strName) {
		List<String> str = getAllAdminName();
		for (String n : str) {
			if (n.equals(strName)) {
				return true;
			}
		}
		return false;
	}

	public List<String> getAllAdminPwd() {
		// String name = "";
		String pwd = "";
		List<String> list = new ArrayList<String>();
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		// List<Heroinfo> list = new ArrayList<Heroinfo>(); // 英雄信息集合
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select adminName,AdminPwd from admin";// SQL语句
			pt = con.prepareStatement(sql);// 把sql语句传入数据库（等待具体数值，预编译）
			rs = pt.executeQuery();// 执行SQL查询，得到数据结果集，最初，光标定位在第一行之前
			if (rs != null) {
				while (rs.next()) {
					// name = rs.getString("adminName");
					pwd = rs.getString("AdminPwd");
					// list.add(name);// 把全部英雄路径加入集合
					list.add(pwd);
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

	public boolean getAdminPwd(String strName) {
		List<String> str = getAllAdminPwd();
		for (String n : str) {
			if (n.equals(strName)) {
				return true;
			}
		}
		return false;
	}
}
