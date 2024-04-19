package com.project2.vo;

import java.sql.Date;

public class MovieVO {
	
	private int mvNo;
	private String mvTitle;
	private String mvDirect;
	private String mvActor;
	private String mvGenre;
	private int mvRate;
	private String mvAudience;
	private String mvGrade;
	private Date mvDate;
	private String mv_poster;
	
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
	public String getMvDirect() {
		return mvDirect;
	}
	public void setMvDirect(String mvDirect) {
		this.mvDirect = mvDirect;
	}
	public String getMvActor() {
		return mvActor;
	}
	public void setMvActor(String mvActor) {
		this.mvActor = mvActor;
	}
	public String getMvGenre() {
		return mvGenre;
	}
	public void setMvGenre(String mvGenre) {
		this.mvGenre = mvGenre;
	}
	public int getMvRate() {
		return mvRate;
	}
	public void setMvRate(int mvRate) {
		this.mvRate = mvRate;
	}
	public String getMvAudience() {
		return mvAudience;
	}
	public void setMvAudience(String mvAudience) {
		this.mvAudience = mvAudience;
	}
	public String getMvGrade() {
		return mvGrade;
	}
	public void setMvGrade(String mvGrade) {
		this.mvGrade = mvGrade;
	}
	public Date getMvDate() {
		return mvDate;
	}
	public void setMvDate(Date mvDate) {
		this.mvDate = mvDate;
	}
	public String getMv_poster() {
		return mv_poster;
	}
	public void setMv_poster(String mv_poster) {
		this.mv_poster = mv_poster;
	}
	
	@Override
	public String toString() {
		return "MovieVO [mvNo=" + mvNo + ", mvTitle=" + mvTitle + ", mvDirect=" + mvDirect + ", mvActor=" + mvActor
				+ ", mvGenre=" + mvGenre + ", mvRate=" + mvRate + ", mvAudience=" + mvAudience + ", mvGrade=" + mvGrade
				+ ", mvDate=" + mvDate + ", mv_poster=" + mv_poster + "]";
	}
	
}
