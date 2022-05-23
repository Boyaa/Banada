package com.smhrd.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class Hobby {
	

	 private BigDecimal h_seq;
	 private String h_title;
     private String h_nick;
     private String h_cate;
     private String h_content; 
     private Timestamp h_date; 
     private int h_maxpeople;
     private int h_like;
	 
     

	public Hobby(BigDecimal h_seq, String h_title, String h_nick, String h_content, int h_maxpeople, int h_like) {
		super();
		this.h_seq = h_seq;
		this.h_title = h_title;
		this.h_nick = h_nick;
		this.h_content = h_content;
		this.h_maxpeople = h_maxpeople;
		this.h_like = h_like;
	}


	public Hobby(String h_title, String h_nick, Timestamp h_date) {
		super();
		this.h_title = h_title;
		this.h_nick = h_nick;
		this.h_date = h_date;
	}


	public Hobby(String h_title, String h_content, String h_cate, int h_maxpeople) {
		super();
		this.h_title = h_title;
		this.h_content = h_content;
		this.h_cate = h_cate;
		this.h_maxpeople = h_maxpeople;
	}
     
     
     
     public Hobby(BigDecimal h_seq, String h_title, String h_nick, String h_cate, String h_content, 
			int h_maxpeople) {
		super();
		this.h_seq = h_seq;
		this.h_title = h_title;
		this.h_nick = h_nick;
		this.h_cate = h_cate;
		this.h_content = h_content;
		this.h_maxpeople = h_maxpeople;
	}


	public Hobby(String h_title, String h_nick, String h_cate, String h_content, int h_maxpeople,
			int h_like) {
		super();
		this.h_title = h_title;
		this.h_nick = h_nick;
		this.h_cate = h_cate;
		this.h_content = h_content;
		this.h_maxpeople = h_maxpeople;
		this.h_like = h_like;
	}
     
 

	public Hobby(BigDecimal h_seq) {
    	 this.h_seq = h_seq;
     }


	public BigDecimal getH_seq() {
		return h_seq;
	}


	public String getH_title() {
		return h_title;
	}


	public String getH_content() {
		return h_content;
	}


	public String getH_nick() {
		return h_nick;
	}


	public Timestamp getH_date() {
		return h_date;
	}


	public String getH_cate() {
		return h_cate;
	}


	public int getH_maxpeople() {
		return h_maxpeople;
	}


	public int getH_like() {
		return h_like;
	}
     
	
     

}
