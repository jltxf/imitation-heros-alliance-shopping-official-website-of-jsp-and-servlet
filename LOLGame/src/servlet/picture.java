package servlet;

import db.DBManager;

public class picture {
	public static void main(String[] args) {
		
		if (DBManager.getConf() != null) {
			System.out.println("连接成功！");
		}
		
	}
}
