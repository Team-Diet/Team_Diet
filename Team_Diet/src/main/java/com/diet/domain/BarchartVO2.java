package com.diet.domain;

import java.util.Date;

public class BarchartVO2 {
	private Integer userno;
	private Integer morning;
	private Integer aftenoon;
	private Integer evening;
	private Integer sncak;
	private Integer midnight;
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
	public Integer getAftenoon() {
		return aftenoon;
	}
	public void setAftenoon(Integer aftenoon) {
		this.aftenoon = aftenoon;
	}
	public Integer getEvening() {
		return evening;
	}
	public void setEvening(Integer evening) {
		this.evening = evening;
	}
	public Integer getSncak() {
		return sncak;
	}
	public void setSncak(Integer sncak) {
		this.sncak = sncak;
	}
	public Integer getMidnight() {
		return midnight;
	}
	public void setMidnight(Integer midnight) {
		this.midnight = midnight;
	}
	@Override
	public String toString() {
		return "BarchartVO2 [userno=" + userno + ", morning=" + morning + ", aftenoon=" + aftenoon + ", evening="
				+ evening + ", sncak=" + sncak + ", midnight=" + midnight + "]";
	}
	
	
	
	
	
	

}
