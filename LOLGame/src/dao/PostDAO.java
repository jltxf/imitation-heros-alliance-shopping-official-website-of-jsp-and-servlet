package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import model.Postinfo;
import db.DBManager;

public class PostDAO {

	Postinfo postinfo = new Postinfo();

	public List<Postinfo> getAllPostinfo() {
		// DBConn conn=new DBConn();
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		List<Postinfo> list = new ArrayList<Postinfo>(); // 商品集合
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select * from postinfo";// SQL语句
			pt = con.prepareStatement(sql);// 把sql语句传入数据库（等待具体数值，预编译）
			rs = pt.executeQuery();// 执行SQL查询，得到数据结果集，最初，光标定位在第一行之前
			if (rs != null) {
				while (rs.next()) {
					Postinfo postinfo = new Postinfo();
					postinfo.setNo(rs.getInt("no"));
					postinfo.setName(rs.getString("name"));
					postinfo.setPost(rs.getString("post"));
					postinfo.setContent(rs.getString("content"));
					postinfo.setTimestamp(rs.getTimestamp("timestamp"));
					list.add(postinfo);// 把一个商品加入集合
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
			String sql = "select no from postinfo";// SQL语句
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

	public int getNo(int no) {
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		int i = 1;
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select no from postinfo where no = ?";// SQL语句
			pt = con.prepareStatement(sql);// 把sql语句传入数据库（等待具体数值，预编译）
			pt.setInt(1, no);
			rs = pt.executeQuery();// 执行SQL查询，得到数据结果集，最初，光标定位在第一行之前
			if (rs != null) {
				while (rs.next()) {
					i = rs.getInt("no");
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return i;
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

	public List<String> getAllPostName() {
		String name = "";
		List<String> list = new ArrayList<String>();
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select name from postinfo";// SQL语句
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

	public String getPostNameByNo(int no) {
		String name = "";
		List<String> list = getAllPostName();
		int i = 1;
		for (String l : list) {
			if (i == no) {
				name = l;
			}
			i++;
		}
		return name;
	}

	public List<String> getAllPostPost() {
		String post = "";
		List<String> list = new ArrayList<String>();
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select post from postinfo";// SQL语句
			pt = con.prepareStatement(sql);// 把sql语句传入数据库（等待具体数值，预编译）
			rs = pt.executeQuery();// 执行SQL查询，得到数据结果集，最初，光标定位在第一行之前
			if (rs != null) {
				while (rs.next()) {
					post = rs.getString("post");
					list.add(post);
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

	public String getPostPostByNo(int no) {
		String name = "";
		List<String> list = getAllPostPost();
		int i = 1;
		for (String l : list) {
			if (i == no) {
				name = l;
			}
			i++;
		}
		return name;
	}

	public List<Timestamp> getAllPostTime() {
		Timestamp time = null;
		List<Timestamp> list = new ArrayList<Timestamp>();
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select time from postinfo";// SQL语句
			pt = con.prepareStatement(sql);// 把sql语句传入数据库（等待具体数值，预编译）
			rs = pt.executeQuery();// 执行SQL查询，得到数据结果集，最初，光标定位在第一行之前
			if (rs != null) {
				while (rs.next()) {
					time = rs.getTimestamp("time");
					list.add(time);
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

	public Timestamp getPostTimeByNo(int no) {
		Timestamp name = null;
		List<Timestamp> list = getAllPostTime();
		int i = 1;
		for (Timestamp l : list) {
			if (i == no) {
				name = l;
			}
			i++;
		}
		return name;
	}

	public List<String> getAllPostCont() {
		String cont = "";
		List<String> list = new ArrayList<String>();
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select content from postinfo";// SQL语句
			pt = con.prepareStatement(sql);// 把sql语句传入数据库（等待具体数值，预编译）
			rs = pt.executeQuery();// 执行SQL查询，得到数据结果集，最初，光标定位在第一行之前
			if (rs != null) {
				while (rs.next()) {
					cont = rs.getString("content");
					list.add(cont);
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

	public String getPostContByNo(int no) {
		String cont = "";
		List<String> list = getAllPostCont();
		int i = 1;
		for (String l : list) {
			if (i == no) {
				cont = l;
			}
			i++;
		}
		return cont;
	}

	public List<Integer> getAllPostNo() {
		int cont = 0;
		;
		List<Integer> list = new ArrayList<Integer>();
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select no from postinfo";// SQL语句
			pt = con.prepareStatement(sql);// 把sql语句传入数据库（等待具体数值，预编译）
			rs = pt.executeQuery();// 执行SQL查询，得到数据结果集，最初，光标定位在第一行之前
			if (rs != null) {
				while (rs.next()) {
					cont = rs.getInt("no");
					list.add(cont);
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

	public int getNoContByNo(int no) {
		int cont = 0;
		List<Integer> list = getAllPostNo();
		int i = 1;
		for (int l : list) {
			if (i == no) {
				cont = l;
			}
			i++;
		}
		return cont;
	}

	public boolean deletePost(int no) {
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		boolean rs = false;
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "delete from postinfo where no=" + no;// SQL语句
			pt = con.prepareStatement(sql);// 把sql语句传入数据库（等待具体数值，预编译）
			rs = pt.execute(); // 执行SQL查询，得到数据结果集，最初，光标定位在第一行之前
		} catch (SQLException e) {
			e.printStackTrace();
			return rs;
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
		return rs;
	}

	public int insertPost(Postinfo p) {
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		int rs = 0;
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "insert into postinfo(name,post,content) value(?,?,?)";// SQL语句
			pt = con.prepareStatement(sql);// 把sql语句传入数据库（等待具体数值，预编译）
			pt.setString(1, p.getName());
			pt.setString(2, p.getPost());
			pt.setString(3, p.getContent());
			rs = pt.executeUpdate();// 执行SQL查询，得到数据结果集，最初，光标定位在第一行之前
			// System.out.println(rs);
		} catch (SQLException e) {
			e.printStackTrace();
			return rs;
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
		return rs;
	}

	public int alterPost(long i, Postinfo p) {
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		int rs = 0;
		try {
			if (p.getName() == null && p.getPost() != null
					&& p.getContent() != null) {
				con = DBManager.getConn();// 获取数据库连接 author, post, content
				String sql = "update postinfo set name = ? , post = ? , content = ? where no="
						+ i;// SQL语句
				pt = con.prepareStatement(sql);// 把sql语句传入数据库（等待具体数值，预编译）
				pt.setString(1, p.getName());
				pt.setString(2, p.getPost());
				pt.setString(3, p.getContent());
				rs = pt.executeUpdate();// 执行SQL查询，得到数据结果集，最初，光标定位在第一行之前
				System.out.println(rs);
			} else if (p.getPost() != null && p.getContent() != null) {
				con = DBManager.getConn();// 获取数据库连接 author, post, content
				String sql = "update postinfo set post = ? , content = ? where no="
						+ i;// SQL语句
				pt = con.prepareStatement(sql);// 把sql语句传入数据库（等待具体数值，预编译）
				pt.setString(1, p.getPost());
				pt.setString(2, p.getContent());
				rs = pt.executeUpdate();
			} else if (p.getContent() != null) {
				con = DBManager.getConn();// 获取数据库连接 author, post, content
				String sql = "update postinfo set content = ? where no=" + i;// SQL语句
				pt = con.prepareStatement(sql);// 把sql语句传入数据库（等待具体数值，预编译）
				pt.setString(1, p.getContent());
				rs = pt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return rs;
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
		return rs;
	}

	public List<String> getAllPostPostUser(String username) {
		List<String> list = new ArrayList<String>();
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		int i = 0;
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select * from postinfo where name=?";// SQL语句
			pt = con.prepareStatement(sql);// 把sql语句传入数据库（等待具体数值，预编译）
			pt.setString(1, username);
			rs = pt.executeQuery();// 执行SQL查询，得到数据结果集，最初，光标定位在第一行之前
			// System.out.println(rs);
			if (rs != null) {
				while (rs.next()) {
					Postinfo p = new Postinfo();
					p.setPost(rs.getString("post"));
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

	public static void main(String[] args) {
		// if (DBManager.getConn() != null) {
		// System.out.println("111");
		// }
		PostDAO post = new PostDAO();
		String author = "来";
		String post1 = "来";
		String content = "来";
		// System.out.println(author);
		// System.out.println(post);
		// System.out.println(content);
		Postinfo postinfo = new Postinfo(author, post1, content);
		int flag = post.insertPost(postinfo);
		System.out.println(flag);
	}
}
