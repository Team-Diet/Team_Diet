package com.diet.domain;

import java.util.Date;

public class ChartVO {
	private Integer userno;
	private String exerciselist;
	private Integer totalex;
	private String foodlist;
	private Integer totalfood;
	private Date dtoday;
	public Integer getUserno() {
		return userno;
	}
	public void setUserno(Integer userno) {
		this.userno = userno;
	}
	public String getExerciselist() {
		return exerciselist;
	}
	public void setExerciselist(String exerciselist) {
		this.exerciselist = exerciselist;
	}
	public Integer getTotalex() {
		return totalex;
	}
	public void setTotalex(Integer totalex) {
		this.totalex = totalex;
	}
	public String getFoodlist() {
		return foodlist;
	}
	public void setFoodlist(String foodlist) {
		this.foodlist = foodlist;
	}
	public Integer getTotalfood() {
		return totalfood;
	}
	public void setTotalfood(Integer totalfood) {
		this.totalfood = totalfood;
	}
	public Date getDtoday() {
		return dtoday;
	}
	public void setDtoday(Date dtoday) {
		this.dtoday = dtoday;
	}
	@Override
	public String toString() {
		return "ChartVO [userno=" + userno + ", exerciselist=" + exerciselist + ", totalex=" + totalex + ", foodlist="
				+ foodlist + ", totalfood=" + totalfood + ", dtoday=" + dtoday + "]";
	}
	
	

}
