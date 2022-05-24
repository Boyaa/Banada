package com.smhrd.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class User {
	public String user_id;
	public String user_pw;
	public String user_nick;
	public String user_addr;
	public BigDecimal user_manner;
	public Timestamp user_joinDate;
	
	public String user_product;
	
	public String a; //임의의 값 선언
	public int b; //임의의 값 선언

	
	






	public User(String user_id, String user_pw, String user_nick, String user_addr, BigDecimal user_manner,
			Timestamp user_joinDate, String a) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_nick = user_nick;
		this.user_addr = user_addr;
		this.user_manner = user_manner;
		this.user_joinDate = user_joinDate;
	}



	public User(String user_id, String user_pw) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
	}



	public User(String user_nick) {
		super();
		this.user_nick = user_nick;
	}


	public User(String user_nick, String user_addr, String a) {
		super();
		this.user_nick = user_nick;
		this.user_addr = user_addr;
		//this.a = a; 얘도 꼭넣어줘야하나?? 
		
	}
	
	public User(String user_nick, String user_product, int b) {
		super();
		this.user_nick = user_nick;
		this.user_product = user_product;
		//this.b = b;
	}
	
	


	public User(String user_id, String user_pw, String user_nick, String user_addr) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_nick = user_nick;
		this.user_addr = user_addr;
	}





	public String getUser_id() {
		return user_id;
	}





	public String getUser_pw() {
		return user_pw;
	}





	public String getUser_nick() {
		return user_nick;
	}





	public String getUser_addr() {
		return user_addr;
	}





	public BigDecimal getUser_manner() {
		return user_manner;
	}





	public Timestamp getUser_joinDate() {
		return user_joinDate;
	}




	
}
