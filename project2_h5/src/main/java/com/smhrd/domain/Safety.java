package com.smhrd.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class Safety {

	public BigDecimal safetyNum;
	public String safetyUser1;
	public String safetyUser2;
	public String safetyAddr;
	public String meetingTime;
	public String meetingTime2;
	public String safetyMemo;
	
	
	public Safety(BigDecimal safetyNum, String safetyUser1, String safetyUser2, String safetyAddr, String meetingTime,
			String meetingTime2, String safetyMemo) {
		super();
		this.safetyNum = safetyNum;
		this.safetyUser1 = safetyUser1;
		this.safetyUser2 = safetyUser2;
		this.safetyAddr = safetyAddr;
		this.meetingTime = meetingTime;
		this.meetingTime2 = meetingTime2;
		this.safetyMemo = safetyMemo;
	}


	

	public Safety(String safetyUser1, String safetyUser2, String safetyAddr, String meetingTime, String meetingTime2,
			String safetyMemo) {
		super();
		this.safetyUser1 = safetyUser1;
		this.safetyUser2 = safetyUser2;
		this.safetyAddr = safetyAddr;
		this.meetingTime = meetingTime;
		this.meetingTime2 = meetingTime2;
		this.safetyMemo = safetyMemo;
	}




	public BigDecimal getSafetyNum() {
		return safetyNum;
	}


	public String getSafetyUser1() {
		return safetyUser1;
	}


	public String getSafetyUser2() {
		return safetyUser2;
	}


	public String getSafetyAddr() {
		return safetyAddr;
	}


	public String getMeetingTime() {
		return meetingTime;
	}


	public String getMeetingTime2() {
		return meetingTime2;
	}


	public String getSafetyMemo() {
		return safetyMemo;
	}
	
	
	
	

	

	
	
}
