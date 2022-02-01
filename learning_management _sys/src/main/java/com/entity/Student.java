package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table
public class Student {

	@Id
	private String username;
	@Column
	private String password;
	@Column
	private String name;
	@Column
	private Long mobile;
	@Column
	private String email;
	@Column
	private String city;

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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getMobile() {
		return mobile;
	}

	public void setMobile(Long mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public Student() {
		super();
	}

	public Student(String username, String password, String name, Long mobile, String email, String city) {
		super();
		this.username = username;
		this.password = password;
		this.name = name;
		this.mobile = mobile;
		this.email = email;
		this.city = city;
	}

	@Override
	public String toString() {
		return "Student [username=" + username + ", password=" + password + ", name=" + name + ", mobile=" + mobile
				+ ", email=" + email + ", city=" + city + "]";
	}

}
