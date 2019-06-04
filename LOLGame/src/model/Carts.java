package model;

public class Carts {

	private int id;
	private String username;
	private String name;
	private int num;
	private float price;
	public Carts(String username, String name, int num) {
		super();
		this.username = username;
		this.name = name;
		this.num = num;
	}
	public Carts(int id, String username, String name, int num, float price) {
		super();
		this.id = id;
		this.username = username;
		this.name = name;
		this.num = num;
		this.price = price;
	}
	public Carts() {
		super();
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
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	
	
}
