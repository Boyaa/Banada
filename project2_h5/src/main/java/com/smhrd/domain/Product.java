package com.smhrd.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;

import javax.management.loading.PrivateClassLoader;

public class Product {
	
	 private BigDecimal pd_seq;
     private String pd_title;
     private String pd_content;
     private String pd_nick;
     private Timestamp pd_date; 
     private String pd_name;
     private BigDecimal pd_price;
     private String pd_cate;
     private String pd_option;
     private BigDecimal pd_like;
     private String pd_path;
	
     
     
     public Product(String pd_nick, String pd_name) {
		super();
		this.pd_nick = pd_nick;
		this.pd_name = pd_name;
	}




	public Product(BigDecimal pd_seq, String pd_title, String pd_content, String pd_nick, String pd_name, BigDecimal pd_price, String pd_cate,
			String pd_option, BigDecimal pd_like, String pd_path) {
		super();
		this.pd_seq = pd_seq;
		this.pd_title = pd_title;
		this.pd_content = pd_content;
		this.pd_nick = pd_nick;
		this.pd_name = pd_name;
		this.pd_price = pd_price;
		this.pd_cate = pd_cate;
		this.pd_option = pd_option;
		this.pd_like = pd_like;
		this.pd_path = pd_path;
	}




	public Product(String pd_title, String pd_content, String pd_nick, String pd_name, BigDecimal pd_price,
			String pd_cate, String pd_option, String pd_path) {
		super();
		this.pd_title = pd_title;
		this.pd_content = pd_content;
		this.pd_nick = pd_nick;
		this.pd_name = pd_name;
		this.pd_price = pd_price;
		this.pd_cate = pd_cate;
		this.pd_option = pd_option;
		this.pd_path = pd_path;
	}




	public Product(BigDecimal pd_seq, String pd_title, String pd_content, String pd_nick, Timestamp pd_date,
			String pd_name, BigDecimal pd_price, String pd_cate, String pd_option, BigDecimal pd_like, String pd_path) {
		super();
		this.pd_seq = pd_seq;
		this.pd_title = pd_title;
		this.pd_content = pd_content;
		this.pd_nick = pd_nick;
		this.pd_date = pd_date;
		this.pd_name = pd_name;
		this.pd_price = pd_price;
		this.pd_cate = pd_cate;
		this.pd_option = pd_option;
		this.pd_like = pd_like;
		this.pd_path = pd_path;
	}




	public Product(String pd_title, String pd_content, String pd_name, BigDecimal pd_price, String pd_cate, String pd_option) {
		super();
		this.pd_title = pd_title;
		this.pd_content = pd_content;
		this.pd_name = pd_name;
		this.pd_price = pd_price;
		this.pd_cate = pd_cate;
		this.pd_option = pd_option;
	}

   


	public Product(String pd_title, String pd_content, String pd_name, BigDecimal pd_price, String pd_cate, String pd_option,
			String pd_path) {
		super();
		this.pd_title = pd_title;
		this.pd_content = pd_content;
		this.pd_name = pd_name;
		this.pd_price = pd_price;
		this.pd_cate = pd_cate;
		this.pd_option = pd_option;
		this.pd_path = pd_path;
	}




	public BigDecimal getPd_seq() {
		return pd_seq;
	}


	public String getPd_title() {
		return pd_title;
	}


	public String getPd_nick() {
		return pd_nick;
	}


	public Timestamp getPd_date() {
		return pd_date;
	}
	
	public String getPd_name() {
		return pd_name;
	}


	public BigDecimal getPd_price() {
		return pd_price;
	}
	
	public String getPd_cate() {
		return pd_cate;
	}


	public String getPd_option() {
		return pd_option;
	}


	public BigDecimal getLike_num() {
		return pd_like;
	}




	public String getPd_content() {
		return pd_content;
	}




	public BigDecimal getPd_like() {
		return pd_like;
	}




	public String getPd_path() {
		return pd_path;
	} 
     
     

}
