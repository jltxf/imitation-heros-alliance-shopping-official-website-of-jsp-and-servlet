package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import db.DBManager;

import model.UserInfo;

public class UserInfoDAO {

	/**
	 * 用户信息控制类
	 */

	/**
	 * 检测用户名和密码是否正确
	 */
	public int checkUser(UserInfo u) {
		int result = 0;
		Connection con = null;
		PreparedStatement pt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConn();// 获取数据库连接
			String sql = "select * from userinfo where username=? and password=?";

			pt = con.prepareStatement(sql);
			// u为传入的Userinfo类的一个对象
			pt.setString(1, u.getUsername());
			pt.setString(2, u.getPassword());
			rs = pt.executeQuery();// 执行SQL查询，得到数据结果集
			if (rs != null && rs.next()) {
				String username = rs.getString("username");
				String password = rs.getString("password");
				if (username.equals(u.getUsername())
						&& password.equals(u.getPassword())) {
					result = 1;
					System.out.println(result);

				} else {
					result = 2;
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

	/**
	 * 遍历所有用户数据
	 */
	public int findUser(UserInfo u) {
		int result = 0;
		Connection con = null;
		PreparedStatement pt = null;
		ResultSet rs = null;
		con = DBManager.getConn();
		String sql = "select * from userinfo where username =?";
		try {
			pt = con.prepareStatement(sql);
			pt.setString(1, u.getUsername());// 给username传String类型参数

			rs = pt.executeQuery();// 执行SQL查询，得到数据结果集

			if (rs != null && rs.next()) {
				String username = rs.getString("username");
				if (username.equals(u.getUsername())) {
					result = 1;
				} else {
					result = 2;
				}
			}
		} catch (SQLException e) {
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

	/**
	 * 检测用户数据，符合要求则保存到数据库
	 * 
	 * @param u
	 * @return
	 */
	// 新用户的信息添加到UserInfo表中
	public int insertUser(UserInfo u) {
		int result = 0;
		Connection con = null;
		PreparedStatement pt = null;
		ResultSet rs = null;
		con = DBManager.getConn();
		String sql = "insert into userinfo(username,password,telephone,email,sex) value (?,?,?,?,?)";
		try {
			pt = con.prepareStatement(sql);
			pt.setString(1, u.getUsername());
			pt.setString(2, u.getPassword());
			pt.setLong(3, u.getTelephone());
			pt.setString(4, u.getEmail());
			pt.setString(5, u.getSex());
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

	public int UpdateUser(UserInfo u) {
		int result = 0;
		Connection con = null;
		PreparedStatement pt = null;
		con = DBManager.getConn();
		String sql = "update userinfo set password=? where username=?";
		try {
			pt = con.prepareStatement(sql);
			pt.setString(1, u.getPassword());
			pt.setString(2, u.getUsername());
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

	/**
	 * 查询邮箱数据
	 */
	public int findUserEmail(UserInfo u) {
		int result = 0;
		Connection con = null;
		PreparedStatement pt = null;
		ResultSet rs = null;
		con = DBManager.getConn();
		String sql = "select email from userinfo where username=?";
		try {
			pt = con.prepareStatement(sql);
//			System.out.println(u.getUsername());
			pt.setString(1, u.getUsername());
			rs = pt.executeQuery();// 执行SQL查询，得到数据结果集
			if (rs != null && rs.next()) {
				String email = rs.getString("email");
				if (email.equals(u.getEmail())) {
					result = 1;
					System.out.println(result);

				} else {
					result = 2;
				}
			}
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
 
	public UserInfo findByusername(String username){
		UserInfo u=null;
		Connection con=null;
		PreparedStatement pt=null;
		ResultSet rs=null;
		try {
			con = DBManager.getConn();//获取数据库连接			
			String sql="select * from UserInfo";  //?为占位符
			if (username!=null &&username.trim().length()!=0)
				sql+=" where "+ " username " + " = " + username;
			pt=con.prepareStatement(sql);
			rs=pt.executeQuery();	
			if (rs!=null){
				while (rs.next()){
					u=new UserInfo();
					u.setUsername(username);
					u.setTelephone(rs.getLong("telephone"));
					u.setEmail(rs.getString("email"));
					u.setSex(rs.getString("sex"));
				}
			}
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
		return u;		
	}	
}
