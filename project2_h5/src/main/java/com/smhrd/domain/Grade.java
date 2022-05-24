package com.smhrd.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class Grade {
	private BigDecimal g_seq;
	private String g_nick;
	private String user_nick;
	private String g_review;
	private Timestamp g_date;
	private String g_score;
	private String g_title;
	private BigDecimal g_grade;
	
	
	public Grade(String g_nick, String user_nick, String g_review, String g_score, String g_title) {
		super();
		this.g_nick = g_nick;
		this.user_nick = user_nick;
		this.g_review = g_review;
		this.g_score = g_score;
		this.g_title = g_title;
	}


	public Grade(BigDecimal g_seq, String g_nick, String user_nick, String g_review, Timestamp g_date, String g_score,
			String g_title) {
		super();
		this.g_seq = g_seq;
		this.g_nick = g_nick;
		this.user_nick = user_nick;
		this.g_review = g_review;
		this.g_date = g_date;
		this.g_score = g_score;
		this.g_title = g_title;
	}


	public Grade(String g_nick, String user_nick, String g_review) {
		super();
		this.g_nick = g_nick;
		this.user_nick = user_nick;
		this.g_review = g_review;
	}


	
	
	public BigDecimal getG_seq() {
		return g_seq;
	}


	public String getG_nick() {
		return g_nick;
	}


	public String getUser_nick() {
		return user_nick;
	}


	public String getG_review() {
		return g_review;
	}


	public Timestamp getG_date() {
		return g_date;
	}
	
	
	public String getG_score() {
		return g_score;
	}
	
	public String getG_title() {
		return g_title;
	}
	
	public BigDecimal getG_grade() {
		return g_grade;
	}
	
	
}
