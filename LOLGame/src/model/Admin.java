package model;

public class Admin {
	private int adminID,AdminType;
	private String adminName,adminPwd;
	private String lastLoginTime;
	public int getAdminID() {
		return adminID;
	}
	public void setAdminID(int adminID) {
		this.adminID = adminID;
	}
	public int getAdminType() {
		return AdminType;
	}
	public void setAdminType(int adminType) {
		AdminType = adminType;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminPwd() {
		return adminPwd;
	}
	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}
	public String getLastLoginTime() {
		return lastLoginTime;
	}
	public void setLastLoginTime(String lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}
	
	public Admin() {
		// TODO Auto-generated constructor stub
	}

	public Admin(int adminID, int adminType, String adminName, String adminPwd,
			String lastLoginTime) {
		super();
		this.adminID = adminID;
		AdminType = adminType;
		this.adminName = adminName;
		this.adminPwd = adminPwd;
		this.lastLoginTime = lastLoginTime;
	}
	
}
