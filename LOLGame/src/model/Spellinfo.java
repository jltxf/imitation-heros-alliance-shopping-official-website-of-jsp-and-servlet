package model;

public class Spellinfo {

	private String name, picture;
	private int no;

	public Spellinfo(String name, String picture, int no) {
		super();
		this.name = name;
		this.picture = picture;
		this.no = no;
	}

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

	public Spellinfo() {
	}

}
