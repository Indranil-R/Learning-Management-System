package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Announcement {
@Id
private int id;
@Column
private String  announcement;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getAnnouncement() {
	return announcement;
}
public void setAnnouncement(String announcement) {
	this.announcement = announcement;
}
public Announcement(int id, String announcement) {
	super();
	this.id = id;
	this.announcement = announcement;
}
public Announcement() {
	super();
	// TODO Auto-generated constructor stub
}



}
