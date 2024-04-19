package com.project2.vo;

import java.sql.Date;

public class ReviewVO {
	
	private int rvNo;
	private int mvNo;
	private int no;
	private String rvNick;
	private String rvTitle;
	private String rvContent;
	private Date rvDate;
	private int rvRec;
	
	public int getRvNo() {
		return rvNo;
	}
	public void setRvNo(int rvNo) {
		this.rvNo = rvNo;
	}
	public int getMvNo() {
		return mvNo;
	}
	public void setMvNo(int mvNo) {
		this.mvNo = mvNo;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getRvNick() {
		return rvNick;
	}
	public void setRvNick(String rvNick) {
		this.rvNick = rvNick;
	}
	public String getRvTitle() {
		return rvTitle;
	}
	public void setRvTitle(String rvTitle) {
		this.rvTitle = rvTitle;
	}
	public String getRvContent() {
		return rvContent;
	}
	public void setRvContent(String rvContent) {
		this.rvContent = rvContent;
	}
	public Date getRvDate() {
		return rvDate;
	}
	public void setRvDate(Date rvDate) {
		this.rvDate = rvDate;
	}
	public int getRvRec() {
		return rvRec;
	}
	public void setRvRec(int rvRec) {
		this.rvRec = rvRec;
	}
	
	@Override
	public String toString() {
		return "MovieVO [rvNo=" + rvNo + ", mvNo=" + mvNo + ", no=" + no + ", rvNick=" + rvNick + ", rvTitle=" + rvTitle
				+ ", rvContent=" + rvContent + ", rvDate=" + rvDate + ", rvRec=" + rvRec + "]";
	}
}
