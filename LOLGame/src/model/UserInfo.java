package model;

public class UserInfo {
	private String username;
	private String password;
	private long telephone;
	private String email;
	private String sex;
	
	public UserInfo(String username) {
		super();
		this.username = username;
	}
	public UserInfo(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	public UserInfo(String username, String password, long telephone, String email,String sex) {
		this.username = username;
		this.password = password;
		this.telephone = telephone;
		this.email = email;
		this.sex = sex;
	}
	public UserInfo() {
		super();
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public long getTelephone() {
		return telephone;
	}
	public void setTelephone(long telephone) {
		this.telephone = telephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	
}
