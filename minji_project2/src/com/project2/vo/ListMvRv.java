package com.project2.vo;

import java.sql.Date;

public class ListMvRv {
	
	private int rvNo;
	private int mvNo;
	private String mvTitle;
	private String mvPoster;
	private String rvTitle;
	private String rvNick;
	private Date rvDate;
	private int rvRec;
	
	public ListMvRv(int rvNo, int mvNo, String mvTitle, String mvPoster) {
		
	}

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

	public String getMvTitle() {
		return mvTitle;
	}

	public void setMvTitle(String mvTitle) {
		this.mvTitle = mvTitle;
	}

	public String getMvPoster() {
		return mvPoster;
	}

	public void setMvPoster(String mvPoster) {
		this.mvPoster = mvPoster;
	}

	public String getRvTitle() {
		return rvTitle;
	}

	public void setRvTitle(String rvTitle) {
		this.rvTitle = rvTitle;
	}

	public String getRvNick() {
		return rvNick;
	}

	public void setRvNick(String rvNick) {
		this.rvNick = rvNick;
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
		return "ListMvRv [rvNo=" + rvNo + ", mvNo=" + mvNo + ", mvTitle=" + mvTitle + ", mvPoster=" + mvPoster
				+ ", rvTitle=" + rvTitle + ", rvNick=" + rvNick + ", rvDate=" + rvDate + ", rvRec=" + rvRec + "]";
	}
	
}
