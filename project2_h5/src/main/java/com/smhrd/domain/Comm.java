package com.smhrd.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class Comm {
//댓글 VO 클래스
	
	private BigDecimal comm_seq;	//댓글번호
	private BigDecimal h_seq;  //게시물번호
	private String comm_content; //댓글실제컨텐츠
	
	private Timestamp comm_date;
	private String comm_nick;
	
	
	public Comm(BigDecimal comm_seq, BigDecimal h_seq, String comm_content, Timestamp comm_date, String comm_nick) {
		super();
		this.comm_seq = comm_seq;
		this.h_seq = h_seq;
		this.comm_content = comm_content;
		this.comm_date = comm_date;
		this.comm_nick = comm_nick;
	}

	// 이 3개를 묶어서 다닐수있도록 VO클래스로 만들어줌	
												//bigdecimal쓰는이유 - 그냥 int하나를 받아오는게아니고 객체자체를 파라미터값으로 받아오면 객체안에있는 숫자형태들이 int형태로 못오고 bigdecimal형태로 오게끔 되어있음.
												//select에서 결과값을 가지고올때 객체형태로받느냐 int형으로 받느냐에 따라 달라짐 
//	public Comm(BigDecimal comm_seq, BigDecimal f_seq, String comm_content) {
//		super();
//		this.comm_seq = comm_seq;
//		this.f_seq = f_seq;
//		this.comm_content = comm_content;
//정훈	}

	


//	public Comm(BigDecimal f_seq, String comm_content) {
//		super();
//		this.f_seq = f_seq;
//		this.comm_content = comm_content;
//정훈	}

	public Comm(BigDecimal h_seq, String comm_content, String comm_nick) {
		super();
		this.h_seq = h_seq;
		this.comm_content = comm_content;
		this.comm_nick = comm_nick;
	}
	
	public BigDecimal getComm_seq() {
		return comm_seq;
	}

	


	public BigDecimal getBoardNum() {
		return h_seq;
	}

	public String getComm_content() {
		return comm_content;
	}
	
	public Timestamp getComm_date() {
		return comm_date;
	}

	public String getComm_nick() {
		return comm_nick;
	}

	
	
	
}
