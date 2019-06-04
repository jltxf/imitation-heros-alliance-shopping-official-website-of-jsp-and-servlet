package model;

public class Iteminfo {

	private String name, picture;

	public Iteminfo(String name, String picture) {
		super();
		this.name = name;
		this.picture = picture;
	}

	private int no;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public Iteminfo() {
		// TODO Auto-generated constructor stub
	}

}
