package com.gxa.model;
/**
 * 用户实体类
 * @author mabaoyun
 *
 */
public class User {

	private int user_id;
	private int role_id;
	private int area_id;
	private String username;
	private String password;
	private String userrealname;
	private String phone;
	private String last_login_time;
	private int login_count;
	private String eamil;
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getRole_id() {
		return role_id;
	}
	public void setRole_id(int role_id) {
		this.role_id = role_id;
	}
	public int getArea_id() {
		return area_id;
	}
	public void setArea_id(int area_id) {
		this.area_id = area_id;
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
	public String getUserealname() {
		return userrealname;
	}
	public void setUserealname(String userrealname) {
		this.userrealname = userrealname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getLast_login_time() {
		return last_login_time;
	}
	public void setLast_login_time(String last_login_time) {
		this.last_login_time = last_login_time;
	}
	public int getLogin_count() {
		return login_count;
	}
	public void setLogin_count(int login_count) {
		this.login_count = login_count;
	}
	public String getEamil() {
		return eamil;
	}
	public void setEamil(String eamil) {
		this.eamil = eamil;
	}
	
	
}
