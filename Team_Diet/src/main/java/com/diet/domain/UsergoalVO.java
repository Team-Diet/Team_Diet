package com.diet.domain;

import java.util.Date;

public class UsergoalVO {
	private Integer userno;
	private Integer morning;
	private Integer afternoon;
	private Integer evening;
	private Integer snack;
	private Integer midnight;
	private Date today;
	public Integer getUserno() {
		return userno;
	}
	public void setUserno(Integer userno) {
		this.userno = userno;
	}
	public Integer getMorning() {
		return morning;
	}
	public void setMorning(Integer morning) {
		this.morning = morning;
	}
	public Integer getAfternoon() {
		return afternoon;
	}
	public void setAfternoon(Integer afternoon) {
		this.afternoon = afternoon;
	}
	public Integer getEvening() {
		return evening;
	}
	public void setEvening(Integer evening) {
		this.evening = evening;
	}
	public Integer getSnack() {
		return snack;
	}
	public void setSnack(Integer snack) {
		this.snack = snack;
	}
	public Integer getMidnight() {
		return midnight;
	}
	public void setMidnight(Integer midnight) {
		this.midnight = midnight;
	}
	public Date getToday() {
		return today;
	}
	public void setToday(Date today) {
		this.today = today;
	}
	@Override
	public String toString() {
		return "UsergoalVO [userno=" + userno + ", morning=" + morning + ", afternoon=" + afternoon + ", evening="
				+ evening + ", snack=" + snack + ", midnight=" + midnight + ", today=" + today + "]";
	}
	
	
	
	

}
