package model;

import java.sql.Timestamp;

public class Postinfo {
	private int no;
	private String name, post, content;
	private Timestamp timestamp;

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}

	public Postinfo(int no, String name, String post, String content,
			Timestamp timestamp) {
		super();
		this.no = no;
		this.name = name;
		this.post = post;
		this.content = content;
		this.timestamp = timestamp;
	}

	public Postinfo(String name, String post, String content,
			Timestamp timestamp) {
		super();
		this.name = name;
		this.post = post;
		this.content = content;
		this.timestamp = timestamp;
	}

	public Postinfo(String name, String post, String content) {
		super();
		this.name = name;
		this.post = post;
		this.content = content;
	}

	public Postinfo(String post, String content) {
		super();
		this.post = post;
		this.content = content;
	}

	public Postinfo(String post) {
		super();
		this.post = post;
	}

	public Postinfo() {
		// TODO Auto-generated constructor stub
	}

}
