package com.project2.movie.vo;

import java.sql.Date;

public class MovieVO {
	private int mv_no;
	private String mv_title;
	private String mv_direct;
	private String mv_actor;
	private String mv_genre;
	private double mv_rate;
	private String mv_audience;
	private String mv_grade;
	private Date mv_date;
	private String mv_poster;
	
	public int getMv_no() {
		return mv_no;
	}
	public void setMv_no(int mv_no) {
		this.mv_no = mv_no;
	}
	public String getMv_title() {
		return mv_title;
	}
	public void setMv_title(String mv_title) {
		this.mv_title = mv_title;
	}
	public String getMv_direct() {
		return mv_direct;
	}
	public void setMv_direct(String mv_direct) {
		this.mv_direct = mv_direct;
	}
	public String getMv_actor() {
		return mv_actor;
	}
	public void setMv_actor(String mv_actor) {
		this.mv_actor = mv_actor;
	}
	public String getMv_genre() {
		return mv_genre;
	}
	public void setMv_genre(String mv_genre) {
		this.mv_genre = mv_genre;
	}
	public double getMv_rate() {
		return mv_rate;
	}
	public void setMv_rate(double mv_rate) {
		this.mv_rate = mv_rate;
	}
	public String getMv_audience() {
		return mv_audience;
	}
	public void setMv_audience(String mv_audience) {
		this.mv_audience = mv_audience;
	}
	public String getMv_grade() {
		return mv_grade;
	}
	public void setMv_grade(String mv_grade) {
		this.mv_grade = mv_grade;
	}
	public Date getMv_date() {
		return mv_date;
	}
	public void setMv_date(Date mv_date) {
		this.mv_date = mv_date;
	}
	public String getMv_poster() {
		return mv_poster;
	}
	public void setMv_poster(String mv_poster) {
		this.mv_poster = mv_poster;
	}
	
	@Override
	public String toString() {
		return "MovieVO [mv_no=" + mv_no + ", mv_title=" + mv_title + ", mv_direct=" + mv_direct + ", mv_actor="
				+ mv_actor + ", mv_genre=" + mv_genre + ", mv_rate=" + mv_rate + ", mv_audience=" + mv_audience
				+ ", mv_grade=" + mv_grade + ", mv_date=" + mv_date + ", mv_poster=" + mv_poster + "]";
	} 
	
}
