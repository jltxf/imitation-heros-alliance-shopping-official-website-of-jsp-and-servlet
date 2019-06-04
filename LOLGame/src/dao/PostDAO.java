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
		Connection con = null; // �����ݿ�����Ӷ���
		PreparedStatement pt = null;
		ResultSet rs = null;
		List<Postinfo> list = new ArrayList<Postinfo>(); // ��Ʒ����
		try {
			con = DBManager.getConn();// ��ȡ���ݿ�����
			String sql = "select * from postinfo";// SQL���
			pt = con.prepareStatement(sql);// ��sql��䴫�����ݿ⣨�ȴ�������ֵ��Ԥ���룩
			rs = pt.executeQuery();// ִ��SQL��ѯ���õ����ݽ�������������궨λ�ڵ�һ��֮ǰ
			if (rs != null) {
				while (rs.next()) {
					Postinfo postinfo = new Postinfo();
					postinfo.setNo(rs.getInt("no"));
					postinfo.setName(rs.getString("name"));
					postinfo.setPost(rs.getString("post"));
					postinfo.setContent(rs.getString("content"));
					postinfo.setTimestamp(rs.getTimestamp("timestamp"));
					list.add(postinfo);// ��һ����Ʒ���뼯��
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

	public int getNum() {
		int i = 0;
		Connection con = null; // �����ݿ�����Ӷ���
		PreparedStatement pt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConn();// ��ȡ���ݿ�����
			String sql = "select no from postinfo";// SQL���
			pt = con.prepareStatement(sql);// ��sql��䴫�����ݿ⣨�ȴ�������ֵ��Ԥ���룩
			rs = pt.executeQuery();// ִ��SQL��ѯ���õ����ݽ�������������궨λ�ڵ�һ��֮ǰ
			if (rs != null) {
				while (rs.next()) {
					i++;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
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
		return i;
	}

	public int getNo(int no) {
		Connection con = null; // �����ݿ�����Ӷ���
		PreparedStatement pt = null;
		ResultSet rs = null;
		int i = 1;
		try {
			con = DBManager.getConn();// ��ȡ���ݿ�����
			String sql = "select no from postinfo where no = ?";// SQL���
			pt = con.prepareStatement(sql);// ��sql��䴫�����ݿ⣨�ȴ�������ֵ��Ԥ���룩
			pt.setInt(1, no);
			rs = pt.executeQuery();// ִ��SQL��ѯ���õ����ݽ�������������궨λ�ڵ�һ��֮ǰ
			if (rs != null) {
				while (rs.next()) {
					i = rs.getInt("no");
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return i;
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
		return i;
	}

	public List<String> getAllPostName() {
		String name = "";
		List<String> list = new ArrayList<String>();
		Connection con = null; // �����ݿ�����Ӷ���
		PreparedStatement pt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConn();// ��ȡ���ݿ�����
			String sql = "select name from postinfo";// SQL���
			pt = con.prepareStatement(sql);// ��sql��䴫�����ݿ⣨�ȴ�������ֵ��Ԥ���룩
			rs = pt.executeQuery();// ִ��SQL��ѯ���õ����ݽ�������������궨λ�ڵ�һ��֮ǰ
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
		Connection con = null; // �����ݿ�����Ӷ���
		PreparedStatement pt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConn();// ��ȡ���ݿ�����
			String sql = "select post from postinfo";// SQL���
			pt = con.prepareStatement(sql);// ��sql��䴫�����ݿ⣨�ȴ�������ֵ��Ԥ���룩
			rs = pt.executeQuery();// ִ��SQL��ѯ���õ����ݽ�������������궨λ�ڵ�һ��֮ǰ
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
		Connection con = null; // �����ݿ�����Ӷ���
		PreparedStatement pt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConn();// ��ȡ���ݿ�����
			String sql = "select time from postinfo";// SQL���
			pt = con.prepareStatement(sql);// ��sql��䴫�����ݿ⣨�ȴ�������ֵ��Ԥ���룩
			rs = pt.executeQuery();// ִ��SQL��ѯ���õ����ݽ�������������궨λ�ڵ�һ��֮ǰ
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
		Connection con = null; // �����ݿ�����Ӷ���
		PreparedStatement pt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConn();// ��ȡ���ݿ�����
			String sql = "select content from postinfo";// SQL���
			pt = con.prepareStatement(sql);// ��sql��䴫�����ݿ⣨�ȴ�������ֵ��Ԥ���룩
			rs = pt.executeQuery();// ִ��SQL��ѯ���õ����ݽ�������������궨λ�ڵ�һ��֮ǰ
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
		Connection con = null; // �����ݿ�����Ӷ���
		PreparedStatement pt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConn();// ��ȡ���ݿ�����
			String sql = "select no from postinfo";// SQL���
			pt = con.prepareStatement(sql);// ��sql��䴫�����ݿ⣨�ȴ�������ֵ��Ԥ���룩
			rs = pt.executeQuery();// ִ��SQL��ѯ���õ����ݽ�������������궨λ�ڵ�һ��֮ǰ
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
		Connection con = null; // �����ݿ�����Ӷ���
		PreparedStatement pt = null;
		boolean rs = false;
		try {
			con = DBManager.getConn();// ��ȡ���ݿ�����
			String sql = "delete from postinfo where no=" + no;// SQL���
			pt = con.prepareStatement(sql);// ��sql��䴫�����ݿ⣨�ȴ�������ֵ��Ԥ���룩
			rs = pt.execute(); // ִ��SQL��ѯ���õ����ݽ�������������궨λ�ڵ�һ��֮ǰ
		} catch (SQLException e) {
			e.printStackTrace();
			return rs;
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
		return rs;
	}

	public int insertPost(Postinfo p) {
		Connection con = null; // �����ݿ�����Ӷ���
		PreparedStatement pt = null;
		int rs = 0;
		try {
			con = DBManager.getConn();// ��ȡ���ݿ�����
			String sql = "insert into postinfo(name,post,content) value(?,?,?)";// SQL���
			pt = con.prepareStatement(sql);// ��sql��䴫�����ݿ⣨�ȴ�������ֵ��Ԥ���룩
			pt.setString(1, p.getName());
			pt.setString(2, p.getPost());
			pt.setString(3, p.getContent());
			rs = pt.executeUpdate();// ִ��SQL��ѯ���õ����ݽ�������������궨λ�ڵ�һ��֮ǰ
			// System.out.println(rs);
		} catch (SQLException e) {
			e.printStackTrace();
			return rs;
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
		return rs;
	}

	public int alterPost(long i, Postinfo p) {
		Connection con = null; // �����ݿ�����Ӷ���
		PreparedStatement pt = null;
		int rs = 0;
		try {
			if (p.getName() == null && p.getPost() != null
					&& p.getContent() != null) {
				con = DBManager.getConn();// ��ȡ���ݿ����� author, post, content
				String sql = "update postinfo set name = ? , post = ? , content = ? where no="
						+ i;// SQL���
				pt = con.prepareStatement(sql);// ��sql��䴫�����ݿ⣨�ȴ�������ֵ��Ԥ���룩
				pt.setString(1, p.getName());
				pt.setString(2, p.getPost());
				pt.setString(3, p.getContent());
				rs = pt.executeUpdate();// ִ��SQL��ѯ���õ����ݽ�������������궨λ�ڵ�һ��֮ǰ
				System.out.println(rs);
			} else if (p.getPost() != null && p.getContent() != null) {
				con = DBManager.getConn();// ��ȡ���ݿ����� author, post, content
				String sql = "update postinfo set post = ? , content = ? where no="
						+ i;// SQL���
				pt = con.prepareStatement(sql);// ��sql��䴫�����ݿ⣨�ȴ�������ֵ��Ԥ���룩
				pt.setString(1, p.getPost());
				pt.setString(2, p.getContent());
				rs = pt.executeUpdate();
			} else if (p.getContent() != null) {
				con = DBManager.getConn();// ��ȡ���ݿ����� author, post, content
				String sql = "update postinfo set content = ? where no=" + i;// SQL���
				pt = con.prepareStatement(sql);// ��sql��䴫�����ݿ⣨�ȴ�������ֵ��Ԥ���룩
				pt.setString(1, p.getContent());
				rs = pt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return rs;
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
		return rs;
	}

	public List<String> getAllPostPostUser(String username) {
		List<String> list = new ArrayList<String>();
		Connection con = null; // �����ݿ�����Ӷ���
		PreparedStatement pt = null;
		ResultSet rs = null;
		int i = 0;
		try {
			con = DBManager.getConn();// ��ȡ���ݿ�����
			String sql = "select * from postinfo where name=?";// SQL���
			pt = con.prepareStatement(sql);// ��sql��䴫�����ݿ⣨�ȴ�������ֵ��Ԥ���룩
			pt.setString(1, username);
			rs = pt.executeQuery();// ִ��SQL��ѯ���õ����ݽ�������������궨λ�ڵ�һ��֮ǰ
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

	public static void main(String[] args) {
		// if (DBManager.getConn() != null) {
		// System.out.println("111");
		// }
		PostDAO post = new PostDAO();
		String author = "��";
		String post1 = "��";
		String content = "��";
		// System.out.println(author);
		// System.out.println(post);
		// System.out.println(content);
		Postinfo postinfo = new Postinfo(author, post1, content);
		int flag = post.insertPost(postinfo);
		System.out.println(flag);
	}
}
