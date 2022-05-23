package com.smhrd.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class Product {
	
	 private BigDecimal pd_seq;
     private String pd_title;
     private String pd_content;
     private String pd_nick;
     private Timestamp pd_date; 
     private String pd_name;
     private int pd_price;
     private String pd_cate;
     private String pd_option;
     private int pd_like;
	
     public Product(String pd_title, String pd_content, String pd_name, int pd_price, String pd_cate, String pd_option) {
		super();
		this.pd_title = pd_title;
		this.pd_content = pd_content;
		this.pd_name = pd_name;
		this.pd_price = pd_price;
		this.pd_cate = pd_cate;
		this.pd_option = pd_option;
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


	public int getPd_price() {
		return pd_price;
	}
	
	public String getPd_cate() {
		return pd_cate;
	}


	public String getPd_option() {
		return pd_option;
	}


	public int getLike_num() {
		return pd_like;
	} 
     
     

}
