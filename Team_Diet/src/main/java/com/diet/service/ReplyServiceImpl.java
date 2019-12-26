package com.diet.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.diet.domain.Criteria;
import com.diet.domain.ReplyVO;
import com.diet.persistence.BoardDAO;
import com.diet.persistence.ReplyDAO;

@Service
public class ReplyServiceImpl implements ReplyService {

  @Inject
  private ReplyDAO dao;
  
  @Inject
  private BoardDAO boardDAO;


  @Transactional
  @Override
  public void addReply(ReplyVO vo) throws Exception {

	 dao.create(vo);
    boardDAO.updateReplyCnt(vo.getBoardNo(), 1);
  }
  

  @Override
  public List<ReplyVO> listReply(Integer boardNo) throws Exception {

    return dao.list(boardNo);
  }

  @Override
  public void modifyReply(ReplyVO vo) throws Exception {

    dao.update(vo);
  }

  @Transactional
  @Override
  public void removeReply(Integer replyNo) throws Exception {
  
    int boardNo = dao.getBoardNo(replyNo);
    dao.delete(replyNo);
    boardDAO.updateReplyCnt(boardNo, -1);
  }   


  @Override
  public List<ReplyVO> listReplyPage(Integer boardNo, Criteria cri) 
      throws Exception {

    return dao.listPage(boardNo, cri);
  }

  @Override
  public int count(Integer boardNo) throws Exception {

    return dao.count(boardNo);
  }
  

}
