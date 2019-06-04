package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import model.Commodity;
import model.UserInfo;
import db.DBManager;

public class CommodityDAO {
	public List<Commodity> getAllCommodity() {
		List<Commodity> list = new ArrayList<Commodity>();
		Commodity c = null;
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select * from commodity";
			pt = con.prepareStatement(sql);
			rs = pt.executeQuery();
			if (rs != null) {
				while (rs.next()) {
					c = new Commodity();
					c.setId(rs.getInt("id"));
					c.setName(rs.getString("name"));
					c.setPrice(rs.getFloat("price"));
					c.setNumber(rs.getInt("number"));
					c.setCell(rs.getInt("cell"));
					c.setEvaluation(rs.getInt("evaluation"));
					c.setCollect(rs.getInt("collect"));
					c.setPicture1(rs.getString("picture1"));
					c.setPicture2(rs.getString("picture2"));
					c.setClassify(rs.getString("classify"));
					c.setClassify1(rs.getString("classify1"));
					list.add(c);
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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

	public List<Commodity> findByClause(String clause) {
		List<Commodity> list = new ArrayList<Commodity>();
		Connection con = null;
		PreparedStatement pt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select * from commodity";
			if (clause != null && clause.trim().length() != 0)
				sql += " where" + clause;
			pt = con.prepareStatement(sql);
			rs = pt.executeQuery();
			if (rs != null) {// 在数据库有正常返回的情况下
				while (rs.next()) {// 游标移向下一条记录，若存在此记录
					Commodity c = new Commodity();
					c.setId(rs.getInt("id"));
					c.setName(rs.getString("name"));
					c.setPrice(rs.getFloat("price"));
					c.setNumber(rs.getInt("number"));
					c.setCell(rs.getInt("cell"));
					c.setEvaluation(rs.getInt("evaluation"));
					c.setCollect(rs.getInt("collect"));
					c.setPicture1(rs.getString("picture1"));
					c.setPicture2(rs.getString("picture2"));
					c.setClassify(rs.getString("classify"));
					c.setClassify1(rs.getString("classify1"));
					list.add(c);
				}

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 逆序关闭资源
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
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
		return list;
	}

	public Commodity getCommodityById(int id) {
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		Commodity c = null;
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select * from commodity where id=?;"; // SQL语句
			pt = con.prepareStatement(sql);
			pt.setInt(1, id);
			rs = pt.executeQuery();
			if (rs != null) {
				if (rs.next()) {
					c = new Commodity();
					c.setId(rs.getInt("id"));
					c.setName(rs.getString("name"));
					c.setPrice(rs.getFloat("price"));
					c.setNumber(rs.getInt("number"));
					c.setCell(rs.getInt("cell"));
					c.setEvaluation(rs.getInt("evaluation"));
					c.setCollect(rs.getInt("collect"));
					c.setPicture1(rs.getString("picture1"));
					c.setPicture2(rs.getString("picture2"));
					c.setClassify(rs.getString("classify"));
					c.setClassify1(rs.getString("classify1"));
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

	public Commodity getCommodityByName(String name) {
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		Commodity c = null;
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select * from commodity where name=?;"; // SQL语句
			pt = con.prepareStatement(sql);
			pt.setString(1, name);
			rs = pt.executeQuery();
			if (rs != null) {
				if (rs.next()) {
					c = new Commodity();
					c.setId(rs.getInt("id"));
					c.setName(rs.getString("name"));
					c.setPrice(rs.getFloat("price"));
					c.setNumber(rs.getInt("number"));
					c.setCell(rs.getInt("cell"));
					c.setEvaluation(rs.getInt("evaluation"));
					c.setCollect(rs.getInt("collect"));
					c.setPicture1(rs.getString("picture1"));
					c.setPicture2(rs.getString("picture2"));
					c.setClassify(rs.getString("classify"));
					c.setClassify1(rs.getString("classify1"));
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
	
	
	// 获取最近浏览的前五条商品信息
	public ArrayList<Commodity> getViewList(String list) {
		ArrayList<Commodity> listone = new ArrayList<Commodity>();
		int iCount = 5; // 每次返回前五条记录
		if (list != null && list.length() > 0) {
			String[] arr = list.split(",");
			System.out.println("arr.length=" + arr.length);
			// 如果商品记录大于等于5条
			if (arr.length >= 5) {
				for (int i = arr.length - 1; i >= arr.length - iCount; i--) {
					listone.add(getCommodityById(Integer.parseInt(arr[i])));
				}
			} else {
				for (int i = arr.length - 1; i >= 0; i--) {
					listone.add(getCommodityById(Integer.parseInt(arr[i])));
				}
			}
			return listone;
		} else {
			return null;
		}
	}

	// 获取对应分类的具体分类
	public Map<String, String> getClassify1List(String str) {
		Map<String, String> map = new HashMap<String, String>();
		String classify1 = "";
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select classify1 from commodity where classify=?;"; // SQL语句
			pt = con.prepareStatement(sql);
			pt.setString(1, str);
			rs = pt.executeQuery();
			if (rs != null) {
				while (rs.next()) {
					classify1 = rs.getString("classify1");
					map.put(classify1, "123");
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
		return map;
	}

	public List<String> getClassify1(String str) {
		CommodityDAO c = new CommodityDAO();
		List<String> list = new ArrayList<String>();
		Map<String, String> l = c.getClassify1List(str);
		Set<String> set = l.keySet();
		for (String p : set) {
			list.add(p);
		}
		return list;
	}

	// 获取不同分类的list长度
	public int getSizeCommodity(String classify, String classify1) {
		List<Commodity> list = new ArrayList<Commodity>();
		Commodity c = null;
		Connection con = null; // 与数据库的连接对象
		PreparedStatement pt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select * from commodity";
			pt = con.prepareStatement(sql);
			rs = pt.executeQuery();
			if (rs != null) {
				if (classify == null || classify.equals("")) {
					while (rs.next()) {

						c = new Commodity();
						c.setClassify(rs.getString("classify"));
						c.setClassify1(rs.getString("classify1"));
						list.add(c);
					}
				} else {
					while (rs.next()) {
						if (classify.equals(rs.getString("classify"))) {
							if (classify1 != null
									&& classify1.equals(rs
											.getString("classify1"))) {
								c = new Commodity();
								c.setClassify(rs.getString("classify"));
								c.setClassify1(rs.getString("classify1"));
								list.add(c);
							} else if (classify1 == null
									|| classify1.equals("")) {
								c = new Commodity();
								c.setClassify(rs.getString("classify"));
								c.setClassify1(rs.getString("classify1"));
								list.add(c);
							}
						} else {
							if (classify1 != null) {
								while (rs.next()) {
									if (classify.equals(rs
											.getString("classify"))) {
										if (classify1.equals(rs
												.getString("classify1"))) {
											c = new Commodity();
											c.setClassify(rs
													.getString("classify"));
											c.setClassify1(rs
													.getString("classify1"));
											list.add(c);
										}
									}
								}
							}
						}
					}
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
		return list.size();
	}
	public int insertCommdity(Commodity com) {
		int result = 0;
		Connection con = null;
		PreparedStatement pt = null;
		ResultSet rs = null;
		con = DBManager.getConn();
		String sql = "insert into commodity(id,name,price,number,cell,evaluation,collect,picture1,picture2,classify,classify1) value (?,?,?,?,?,?,?,?,?,?,?)";
		try {
			pt = con.prepareStatement(sql);
			pt.setInt(1, com.getId());
			pt.setString(2, com.getName());
			pt.setFloat(3, com.getPrice());
			pt.setInt(4, com.getNumber());
			pt.setInt(5, com.getCell());
			pt.setInt(6, com.getEvaluation());
			pt.setInt(7, com.getCollect());
			pt.setString(8, com.getPicture1());
			pt.setString(9, com.getPicture2());
			pt.setString(10, com.getClassify());
			pt.setString(11, com.getClassify1());
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

public int updateCommodity(Commodity com){	
		int result=0; //执行SQL语句后受影响的记录行数
		Connection con=null;
		PreparedStatement pt=null;
		try {
			con = DBManager.getConn();  //获取数据库连接
			String sql="update commodity set name=?,price=?,number=?,picture1=?,picture2=?,classify=?,classify1=? where id=?"; 
			pt = con.prepareStatement(sql);
			pt.setString(1, com.getName());
			pt.setFloat(2, com.getPrice());
			pt.setInt(3, com.getNumber());
			pt.setString(4, com.getPicture1());
			pt.setString(5, com.getPicture2());
			pt.setString(6, com.getClassify());
			pt.setString(7, com.getClassify1());
			pt.setInt(8, com.getId());
			result = pt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			//逆序关闭资源
			if (pt!=null)
				try {
					pt.close();
				} catch (SQLException e) {					
					e.printStackTrace();
				}
			if (con!=null)
				try {
					con.close();
				} catch (SQLException e) {					
					e.printStackTrace();
				}
		}
		return result;				
	}

public int updateCommodityById(int id,int num){	
	int result=0; //执行SQL语句后受影响的记录行数
	Connection con=null;
	PreparedStatement pt=null;
	try {
		con = DBManager.getConn();  //获取数据库连接
		String sql="update commodity set number=? where id=?"; 
		pt = con.prepareStatement(sql);
		pt.setInt(1,num);
		pt.setInt(2,id);
		result = pt.executeUpdate();
	} catch (SQLException e) {
		e.printStackTrace();
	}finally{
		//逆序关闭资源
		if (pt!=null)
			try {
				pt.close();
			} catch (SQLException e) {					
				e.printStackTrace();
			}
		if (con!=null)
			try {
				con.close();
			} catch (SQLException e) {					
				e.printStackTrace();
			}
	}
	return result;				
}


	public int deleteCommdity(int id) {
		int result = 0;
		Connection con = null;
		PreparedStatement pt = null;
		con = DBManager.getConn();
		String sql = "delete from commodity where id=?";
		
		try {
			pt = con.prepareStatement(sql);
			pt.setInt(1,id);
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

	
	public static void main(String[] args) {
//		CommodityDAO c = new CommodityDAO();
//		int i = c.getSizeCommodity("", "");// "T恤"
//		System.out.println(i);
	}
}