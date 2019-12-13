package com.diet.dto;

public class LoginDTO {
	
	private String mallid;
	private String pwd;
	private boolean useCookie;


	
	public String getMallid() {
		return mallid;
	}
	public void setMallid(String mallid) {
		this.mallid = mallid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public boolean isUseCookie() {
		return useCookie;
	}
	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}
	@Override
	public String toString() {
		return "LoginDTO [mallid=" + mallid + ", pwd=" + pwd + ", useCookie=" + useCookie + "]";
	}
	
	
	
	

}
