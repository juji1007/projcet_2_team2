package com.project2.review.vo;

import java.sql.Date;

public class ReviewVO {
	private int rv_no;
	private int mv_no;
	private int no;
	private String rv_nick;
	private String rv_title;
	private String rv_content;
	private Date rv_date;
	private int rv_rec;
	
	public int getRv_no() {
		return rv_no;
	}
	public void setRv_no(int rv_no) {
		this.rv_no = rv_no;
	}
	public int getMv_no() {
		return mv_no;
	}
	public void setMv_no(int mv_no) {
		this.mv_no = mv_no;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getRv_nick() {
		return rv_nick;
	}
	public void setRv_nick(String rv_nick) {
		this.rv_nick = rv_nick;
	}
	public String getRv_title() {
		return rv_title;
	}
	public void setRv_title(String rv_title) {
		this.rv_title = rv_title;
	}
	public String getRv_content() {
		return rv_content;
	}
	public void setRv_content(String rv_content) {
		this.rv_content = rv_content;
	}
	public Date getRv_date() {
		return rv_date;
	}
	public void setRv_date(Date rv_date) {
		this.rv_date = rv_date;
	}
	public int getRv_rec() {
		return rv_rec;
	}
	public void setRv_rec(int rv_rec) {
		this.rv_rec = rv_rec;
	}
	
	@Override
	public String toString() {
		return "ReviewVO [rv_no=" + rv_no + ", mv_no=" + mv_no + ", no=" + no + ", rv_nick=" + rv_nick + ", rv_title="
				+ rv_title + ", rv_content=" + rv_content + ", rv_date=" + rv_date + ", rv_rec=" + rv_rec + "]";
	}
	
}
