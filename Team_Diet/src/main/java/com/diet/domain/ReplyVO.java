package com.diet.domain;

import java.util.Date;

public class ReplyVO {

  private Integer replyNo;
  private Integer boardNo;
  private String replyText;
  private String replyer;

  private Date writeDate;
  private Date updateDate;

  public Integer getReplyNo() {
    return replyNo;
  }

  public void setReplyNo(Integer replyNo) {
    this.replyNo = replyNo;
  }

  public Integer getBoardNo() {
    return boardNo;
  }

  public void setBoardNo(Integer boardNo) {
    this.boardNo = boardNo;
  }

  public String getReplyText() {
    return replyText;
  }

  public void setReplyText(String replyText) {
    this.replyText = replyText;
  }

  public String getReplyer() {
    return replyer;
  }

  public void setReplyer(String replyer) {
    this.replyer = replyer;
  }

  public Date getWriteDate() {
    return writeDate;
  }

  public void setWriteDate(Date writeDate) {
    this.writeDate = writeDate;
  }

  public Date getUpdateDate() {
    return updateDate;
  }

  public void setUpdateDate(Date updateDate) {
    this.updateDate = updateDate;
  }

  @Override
  public String toString() {
    return "ReplyVO [replyNo=" + replyNo + ", boardNo=" + boardNo + ", replyText=" + replyText + ", replyer=" + replyer + ", writeDate="
        + writeDate + ", updateDate=" + updateDate + "]";
  }
}
