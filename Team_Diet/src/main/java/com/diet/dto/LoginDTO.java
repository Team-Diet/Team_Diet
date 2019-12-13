package com.diet.dto;

public class LoginDTO {
	
	private String dtid;
	private String pw;
	private boolean useCookie;

	
	public String getDtid() {
		return dtid;
	}
	public void setDtid(String dtid) {
		this.dtid = dtid;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public boolean isUseCookie() {
		return useCookie;
	}
	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}
	@Override
	public String toString() {
		return "LoginDTO [dtid=" + dtid + ", pw=" + pw + ", useCookie=" + useCookie + "]";
	}

	
	
	
	

}
