package com.diet.domain;

import java.util.Date;

public class UserVO {
	private Integer userno;
	private String dtid;
	private String pw;
	private String name;
	private Integer tall;
	private Integer weight;
	private String address;
	private String email;
	private String phone;
	private Date joindate;
	private Integer grade;
	private String gradeimage;
	private Integer point;
	public Integer getUserno() {
		return userno;
	}
	public void setUserno(Integer userno) {
		this.userno = userno;
	}
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getTall() {
		return tall;
	}
	public void setTall(Integer tall) {
		this.tall = tall;
	}
	public Integer getWeight() {
		return weight;
	}
	public void setWeight(Integer weight) {
		this.weight = weight;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getJoindate() {
		return joindate;
	}
	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}
	public Integer getGrade() {
		return grade;
	}
	public void setGrade(Integer grade) {
		this.grade = grade;
	}
	public String getGradeimage() {
		return gradeimage;
	}
	public void setGradeimage(String gradeimage) {
		this.gradeimage = gradeimage;
	}
	public Integer getPoint() {
		return point;
	}
	public void setPoint(Integer point) {
		this.point = point;
	}
	@Override
	public String toString() {
		return "UserVO [userno=" + userno + ", dtid=" + dtid + ", pw=" + pw + ", name=" + name + ", tall=" + tall
				+ ", weight=" + weight + ", address=" + address + ", email=" + email + ", phone=" + phone
				+ ", joindate=" + joindate + ", grade=" + grade + ", gradeimage=" + gradeimage + ", point=" + point
				+ "]";
	}
	
	

}
