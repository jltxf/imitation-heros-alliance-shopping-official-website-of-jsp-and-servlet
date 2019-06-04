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
		Connection con = null; // �����ݿ�����Ӷ���
		PreparedStatement pt = null;
		ResultSet rs = null;
		// List<Heroinfo> list = new ArrayList<Heroinfo>(); // Ӣ����Ϣ����
		try {
			con = DBManager.getConn();// ��ȡ���ݿ�����
			String sql = "select adminName,AdminPwd from admin";// SQL���
			pt = con.prepareStatement(sql);// ��sql��䴫�����ݿ⣨�ȴ�������ֵ��Ԥ���룩
			rs = pt.executeQuery();// ִ��SQL��ѯ���õ����ݽ�������������궨λ�ڵ�һ��֮ǰ
			if (rs != null) {
				while (rs.next()) {
					name = rs.getString("adminName");
					// pwd = rs.getString("AdminPwd");
					list.add(name);// ��ȫ��Ӣ��·�����뼯��
					// list.add(pwd);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			// �ͷ����ݼ�����
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
		Connection con = null; // �����ݿ�����Ӷ���
		PreparedStatement pt = null;
		ResultSet rs = null;
		// List<Heroinfo> list = new ArrayList<Heroinfo>(); // Ӣ����Ϣ����
		try {
			con = DBManager.getConn();// ��ȡ���ݿ�����
			String sql = "select adminName,AdminPwd from admin";// SQL���
			pt = con.prepareStatement(sql);// ��sql��䴫�����ݿ⣨�ȴ�������ֵ��Ԥ���룩
			rs = pt.executeQuery();// ִ��SQL��ѯ���õ����ݽ�������������궨λ�ڵ�һ��֮ǰ
			if (rs != null) {
				while (rs.next()) {
					// name = rs.getString("adminName");
					pwd = rs.getString("AdminPwd");
					// list.add(name);// ��ȫ��Ӣ��·�����뼯��
					list.add(pwd);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			// �ͷ����ݼ�����
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
