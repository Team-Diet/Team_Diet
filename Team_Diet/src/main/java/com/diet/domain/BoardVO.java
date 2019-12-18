package com.diet.domain;

import java.util.Date;

public class BoardVO {
//		create table diet_board(
//		    userno references diet_member(userno),
//		    boardno number(10) primary key,
//		    title varchar2(100) not null, 
//		    writer varchar2(40) not null,
//		    content varchar2(1000) not null,
//		    bhit number(4) default 0,
//		    bgroup number(4),
//		    bstep number(4),
//		    bindent number(4),
//		    writedate Date default sysdate
//		);
	private Integer userNo;
	private Integer boardNo;
	private String title;
	private String writer;
	private String content;
	private Integer bHit;
	private Integer bGroup;
	private Integer bStep;
	private Integer bIndent;
	private Date writeDate;
	
	public Integer getUserNo() {
		return userNo;
	}
	public void setUserNo(Integer userNo) {
		this.userNo = userNo;
	}
	public Integer getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(Integer boardNo) {
		this.boardNo = boardNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getbHit() {
		return bHit;
	}
	public void setbHit(Integer bHit) {
		this.bHit = bHit;
	}
	public Integer getbGroup() {
		return bGroup;
	}
	public void setbGroup(Integer bGroup) {
		this.bGroup = bGroup;
	}
	public Integer getbStep() {
		return bStep;
	}
	public void setbStep(Integer bStep) {
		this.bStep = bStep;
	}
	public Integer getbIndent() {
		return bIndent;
	}
	public void setbIndent(Integer bIndent) {
		this.bIndent = bIndent;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	
	@Override
	public String toString() {
		return "BoardVO [userNo=" + userNo + ", boardNo=" + boardNo + ", title=" + title + ", writer=" + writer
				+ ", content=" + content + ", bHit=" + bHit + ", bGroup=" + bGroup + ", bStep=" + bStep + ", bIndent="
				+ bIndent + ", writeDate=" + writeDate + "]";
	}

}
