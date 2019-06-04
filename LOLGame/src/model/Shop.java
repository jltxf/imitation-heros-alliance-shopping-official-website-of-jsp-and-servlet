package model;

import java.util.Date;

public class Shop {
	private int id;
	private String username;
	private String name;
	private int num;
	private String time;
	

	public Shop(int id, String username, String name, int num, String time) {
		super();
		this.id = id;
		this.username = username;
		this.name = name;
		this.num = num;
		this.time = time;
	}

	public Shop() {
		
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}

	
	
}
