package model;

public class Commodity {
	private int id;
	private String name;
	private float price;
	private int number;
	private int cell;
	private int evaluation;
	private int collect;
	private String picture1;
	private String picture2;
	private String classify;
	private String classify1;

	public Commodity() {
		super();
	}

	
	public Commodity(int id, String name, float price, int number,
			String picture1, String picture2, String classify, String classify1) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.number = number;
		this.picture1 = picture1;
		this.picture2 = picture2;
		this.classify = classify;
		this.classify1 = classify1;
	}


	public Commodity(int id, String name, float price, int number, int cell,
			int evaluation, int collect, String picture1, String picture2,
			 String classify,
			String classify1) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.number = number;
		this.cell = cell;
		this.evaluation = evaluation;
		this.collect = collect;
		this.picture1 = picture1;
		this.picture2 = picture2;
		this.classify = classify;
		this.classify1 = classify1;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public int getCell() {
		return cell;
	}

	public void setCell(int cell) {
		this.cell = cell;
	}

	public int getEvaluation() {
		return evaluation;
	}

	public void setEvaluation(int evaluation) {
		this.evaluation = evaluation;
	}

	public int getCollect() {
		return collect;
	}

	public void setCollect(int collect) {
		this.collect = collect;
	}

	public String getPicture1() {
		return picture1;
	}

	public void setPicture1(String picture1) {
		this.picture1 = picture1;
	}

	public String getPicture2() {
		return picture2;
	}

	public void setPicture2(String picture2) {
		this.picture2 = picture2;
	}

	public String getClassify() {
		return classify;
	}

	public void setClassify(String classify) {
		this.classify = classify;
	}

	public String getClassify1() {
		return classify1;
	}

	public void setClassify1(String classify1) {
		this.classify1 = classify1;
	}

	
}
