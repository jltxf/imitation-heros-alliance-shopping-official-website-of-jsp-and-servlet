package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Iteminfo;
import model.Spellinfo;
import db.DBManager;

/**
 * Ӣ����Ϣ�߼���
 * 
 * @author Administrator
 * 
 */

public class SpellDAO{

	Spellinfo spellinfo = new Spellinfo();
	
	public List<Spellinfo> getAllSpellinfo() {
		// DBConn conn=new DBConn();
		Connection con = null; // ����ݿ�����Ӷ���
		PreparedStatement pt = null;
		ResultSet rs = null;
		List<Spellinfo> list = new ArrayList<Spellinfo>(); // ��Ʒ����
		try {
			con = DBManager.getConn();// ��ȡ��ݿ�����
			String sql = "select * from spellinfo";// SQL���
			pt = con.prepareStatement(sql);// ��sql��䴫����ݿ⣨�ȴ������ֵ��Ԥ���룩
			rs = pt.executeQuery();// ִ��SQL��ѯ���õ���ݽ���������궨λ�ڵ�һ��֮ǰ
			if (rs != null) {
				while (rs.next()) {
					Spellinfo spellinfo = new Spellinfo();
					spellinfo.setNo(rs.getInt("no"));
					spellinfo.setName(rs.getString("name"));
					spellinfo.setPicture(rs.getString("picture"));
					list.add(spellinfo);// ��һ����Ʒ���뼯��
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			// �ͷ���ݼ�����
			// �ͷ�������
			if (pt != null)
				try {
					pt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			// �ر�����
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
		Connection con = null; // ����ݿ�����Ӷ���
		PreparedStatement pt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConn();// ��ȡ��ݿ�����
			String sql = "select no from spellinfo";// SQL���
			pt = con.prepareStatement(sql);// ��sql��䴫����ݿ⣨�ȴ������ֵ��Ԥ���룩
			rs = pt.executeQuery();// ִ��SQL��ѯ���õ���ݽ���������궨λ�ڵ�һ��֮ǰ
			if (rs != null) {
				while (rs.next()) {
					i++;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		} finally {
			// �ͷ���ݼ�����
			// �ͷ�������
			if (pt != null)
				try {
					pt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			// �ر�����
			if (con != null)
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return i;
	}

	public List<String> getAllSpellHref() {
		// DBConn conn=new DBConn();
		String href = "";
		List<String> list = new ArrayList<String>();
		Connection con = null; // ����ݿ�����Ӷ���
		PreparedStatement pt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConn();// ��ȡ��ݿ�����
			String sql = "select href from spellinfo";// SQL���
			pt = con.prepareStatement(sql);// ��sql��䴫����ݿ⣨�ȴ������ֵ��Ԥ���룩
			rs = pt.executeQuery();// ִ��SQL��ѯ���õ���ݽ���������궨λ�ڵ�һ��֮ǰ
			if (rs != null) {
				while (rs.next()) {
					href = rs.getString("href");
					list.add(href);// ��ȫ��Ӣ��·�����뼯��
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			// �ͷ���ݼ�����
			// �ͷ�������
			if (pt != null)
				try {
					pt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			// �ر�����
			if (con != null)
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return list;
	}

	public List<String> getAllSpellName() {
		// DBConn conn=new DBConn();
		String name = "";
		List<String> list = new ArrayList<String>();
		Connection con = null; // ����ݿ�����Ӷ���
		PreparedStatement pt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConn();// ��ȡ��ݿ�����
			String sql = "select name from spellinfo";// SQL���
			pt = con.prepareStatement(sql);// ��sql��䴫����ݿ⣨�ȴ������ֵ��Ԥ���룩
			rs = pt.executeQuery();// ִ��SQL��ѯ���õ���ݽ���������궨λ�ڵ�һ��֮ǰ
			if (rs != null) {
				while (rs.next()) {
					name = rs.getString("name");
					list.add(name);// ��ȫ��Ӣ��·�����뼯��
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			// �ͷ���ݼ�����
			// �ͷ�������
			if (pt != null)
				try {
					pt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			// �ر�����
			if (con != null)
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return list;
	}

	public List<String> getAllSpellPath() {
		// DBConn conn=new DBConn();
		String path = "";
		List<String> list = new ArrayList<String>();
		Connection con = null; // ����ݿ�����Ӷ���
		PreparedStatement pt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConn();// ��ȡ��ݿ�����
			String sql = "select picture from spellinfo";// SQL���
			pt = con.prepareStatement(sql);// ��sql��䴫����ݿ⣨�ȴ������ֵ��Ԥ���룩
			rs = pt.executeQuery();// ִ��SQL��ѯ���õ���ݽ���������궨λ�ڵ�һ��֮ǰ
			if (rs != null) {
				while (rs.next()) {
					path = rs.getString("picture");
					list.add(path);// ��ȫ��Ӣ��·�����뼯��
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			// �ͷ���ݼ�����
			// �ͷ�������
			if (pt != null)
				try {
					pt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			// �ر�����
			if (con != null)
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return list;
	}

	public String getSpellPathByNo(int no) {
		String path = "";
		List<String> list = getAllSpellPath();
		int i = 1;
		for (String l : list) {
			if (i == no) {
				path = l;
			}
			i++;
		}
		return path;
	}

	public String getSpellHrefByNo(int no) {
		String href = "";
		List<String> list = getAllSpellHref();
		int i = 1;
		for (String l : list) {
			if (i == no) {
				href = l;
			}
			i++;
		}
		return href;
	}

	public String getSpellNameByNo(int no) {
		String name = "";
		List<String> list = getAllSpellName();
		int i = 1;
		for (String l : list) {
			if (i == no) {
				name = l;
			}
			i++;
		}
		return name;
	}

	// public static void main(String[] args) {
	// HeroDAO heroDao = new HeroDAO();
	// for (int i = 1; i <= getNum(); i++) {
	// String p = heroDao.getHeroHrefByNo(i);
	// System.out.println(p);
	// }
	// }

	public Spellinfo getSpellinfoById(int id) {
		// DBConn conn=new DBConn();
		Connection con = null; // ����ݿ�����Ӷ���
		PreparedStatement pt = null;
		ResultSet rs = null;
		Spellinfo spellinfo = null;
		try {
			con = DBManager.getConn();
			String sql = "select * from spellinfo where no=?;"; // SQL���
			pt = con.prepareStatement(sql);
			pt.setInt(1, id);
			rs = pt.executeQuery();
			if (rs != null) {
				if (rs.next()) {
					spellinfo = new Spellinfo();
					spellinfo.setNo(rs.getInt("no"));
					spellinfo.setName(rs.getString("name"));
					spellinfo.setPicture(rs.getString("picture"));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// ����ر���Դ
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
		return spellinfo;
	}
	public int  insertintospell(Spellinfo sp) {//添加天赋的方法
		// DBConn conn=new DBConn();
		int result =0;
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		try {
			con = DBManager.getConn();
			String sql = "insert into spellinfo(no,name,picture) values(1,?,?)"; // SQL语句
			pt = con.prepareStatement(sql);
			pt.setString(1, sp.getName());
			pt.setString(2, sp.getPicture());
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
	public void  deletetintospell(String name) {//删除天赋的方法

		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		try {
			con = DBManager.getConn();
			String sql = "delete from spellinfo where name like "+ "'"+name+"'"; // SQL语句
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
	public boolean update(Spellinfo sp,String name) {
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		boolean flag = false;
		try {
			con = DBManager.getConn();
			String sql = "update spellinfo set name=?,picture=? where name like "
					+ "'" + name + "'";
			pt = con.prepareStatement(sql);
			pt.setString(1, sp.getName());
			pt.setString(2, sp.getPicture());
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
