package bean;

public class Configuration {
	// 驱动
	private String driver;
	// JDBC的url
	private String url;
	// 数据库的用户名
	private String user;
	// 数据库的密码
	private String pwd;
	// 正在使用的数据库
	private String usingDB;

	// private String poPackage;
	// private String srcPath;

	// public String getSrcPath() {
	// return srcPath;
	// }
	//
	// public void setSrcPath(String srcPath) {
	// this.srcPath = srcPath;
	// }

	public Configuration(String driver, String url, String user, String pwd,
			String usingDB) {
		super();
		this.driver = driver;
		this.url = url;
		this.user = user;
		this.pwd = pwd;
		this.usingDB = usingDB;
		// this.poPackage = poPackage;
		// this.srcPath = srcPath;
	}

	// public String getPoPackage() {
	// return poPackage;
	// }
	//
	// public void setPoPackage(String poPackage) {
	// this.poPackage = poPackage;
	// }

	public Configuration() {

	}

	public String getDriver() {
		return driver;
	}

	public void setDriver(String driver) {
		this.driver = driver;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getUsingDB() {
		return usingDB;
	}

	public void setUsingDB(String usingDB) {
		this.usingDB = usingDB;
	}

}
