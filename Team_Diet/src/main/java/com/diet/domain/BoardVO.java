package com.diet.domain;

import java.util.Date;

public class BoardVO {

	private Integer userNo;
	private Integer boardNo;
	private String title;
	private String writer;
	private String content;
	private Integer viewCnt;
	private Integer bGroup;
	private Integer step;
	private Integer indent;
	private Date writeDate;
	private Integer replyCnt;
	
	public Integer getReplyCnt() {
		return replyCnt;
	}
	public void setReplyCnt(Integer replyCnt) {
		this.replyCnt = replyCnt;
	}
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
	public Integer getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(Integer viewCnt) {
		this.viewCnt = viewCnt;
	}
	public Integer getbGroup() {
		return bGroup;
	}
	public void setbGroup(Integer bGroup) {
		this.bGroup = bGroup;
	}
	public Integer getStep() {
		return step;
	}
	public void setStep(Integer step) {
		this.step = step;
	}
	public Integer getIndent() {
		return indent;
	}
	public void setIndent(Integer indent) {
		this.indent = indent;
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
				+ ", content=" + content + ", viewCnt=" + viewCnt + ", bGroup=" + bGroup + ", step=" + step
				+ ", indent=" + indent + ", writeDate=" + writeDate + ", replyCnt=" + replyCnt + "]";
	}

}
