package com.diet.service;

import java.util.List;

import com.diet.domain.Criteria;
import com.diet.domain.ReplyVO;

public interface ReplyService {

  public void addReply(ReplyVO vo) throws Exception;

  public List<ReplyVO> listReply(Integer boardNo) throws Exception;

  public void modifyReply(ReplyVO vo) throws Exception;

  public void removeReply(Integer replyNo) throws Exception;

  public List<ReplyVO> listReplyPage(Integer boardNo, Criteria cri) 
      throws Exception;

  public int count(Integer boardNo) throws Exception;
 

}
