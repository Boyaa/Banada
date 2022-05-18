package com.smhrd.domain;

import java.sql.Timestamp;

public class User {
	public String id;
	public String pw;
	public String nick;
	public String addr;
	public int manner;
	public Timestamp joinDate;
	public String type;
	public float latitude;
	public float longitude;
	
	
	public User(String id, String pw, String nick, String addr, int manner, Timestamp joinDate, String type,
			float latitude, float longitude) {
		super();
		this.id = id;
		this.pw = pw;
		this.nick = nick;
		this.addr = addr;
		this.manner = manner;
		this.joinDate = joinDate;
		this.type = type;
		this.latitude = latitude;
		this.longitude = longitude;
	}

	

	public User(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}



	public User(String id, String pw, String nick, String addr) {
		super();
		this.id = id;
		this.pw = pw;
		this.nick = nick;
		this.addr = addr;
	}



	public String getId() {
		return id;
	}


	public String getPw() {
		return pw;
	}


	public String getNick() {
		return nick;
	}


	public String getAddr() {
		return addr;
	}


	public int getManner() {
		return manner;
	}


	public Timestamp getjoinDate() {
		return joinDate;
	}


	public String getType() {
		return type;
	}


	public float getLatitude() {
		return latitude;
	}


	public float getLongitude() {
		return longitude;
	}
	
	
}
