package com.treehole.vo;

public class Article {
	
	
	private int id;
	private String name;
	private String sex;
	private String content;
	private int is_anonymous ;
	private String send_time;
	private String ip;
	private String qq;
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
	
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getIs_anonymous() {
		return is_anonymous;
	}
	public void setIs_anonymous(int is_anonymous) {
		this.is_anonymous = is_anonymous;
	}
	public String getSend_time() {
		return send_time;
	}
	public void setSend_time(String send_time) {
		this.send_time = send_time;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	
	@Override
	public String toString() {
		return "Article [id=" + id + ", name=" + name + ", sex=" + sex
				+ ", content=" + content + ", is_anonymous=" + is_anonymous + ",send_time="+send_time+",ip="+ip+",qq="+qq+"]";
	}
	public Article(int id, String name, String sex,String content,int is_anonymous,String send_time,String ip,String qq) {
		super();
		this.id = id;
		this.name = name;
		this.sex = sex;
		this.content = content;
		this.is_anonymous =is_anonymous;
		this.send_time = send_time;
		this.ip = ip;
		this.qq = qq;
		
	}
	
	public Article() {
		// TODO Auto-generated constructor stub
		super();
	}
	
	

	
	
	
	
}
