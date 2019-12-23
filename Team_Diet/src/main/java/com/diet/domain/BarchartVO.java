package com.diet.domain;

import java.util.Date;

public class BarchartVO {
	private Integer userno;
	private String category;
	private String food;
	private Integer cal;
	public Integer getUserno() {
		return userno;
	}
	public void setUserno(Integer userno) {
		this.userno = userno;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getFood() {
		return food;
	}
	public void setFood(String food) {
		this.food = food;
	}
	public Integer getCal() {
		return cal;
	}
	public void setCal(Integer cal) {
		this.cal = cal;
	}
	@Override
	public String toString() {
		return "BarchartVO [userno=" + userno + ", category=" + category + ", food=" + food + ", cal=" + cal + "]";
	}
	
	
	
	

}
