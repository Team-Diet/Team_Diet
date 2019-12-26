package com.diet.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.diet.domain.Criteria;
import com.diet.domain.ReplyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO {

  @Inject
  private SqlSession session;

  private static String namespace = "com.diet.mapper.ReplyMapper";

  @Override
  public List<ReplyVO> list(Integer boardNo) throws Exception {

    return session.selectList(namespace + ".list", boardNo);
  }

  @Override
  public void create(ReplyVO vo) throws Exception {

    session.insert(namespace + ".create", vo);
  }

  @Override
  public void update(ReplyVO vo) throws Exception {

    session.update(namespace + ".update", vo);
  }

  @Override
  public void delete(Integer replyNo) throws Exception {

    session.update(namespace + ".delete", replyNo);
  }

  @Override
  public List<ReplyVO> listPage(Integer boardNo, Criteria cri)
      throws Exception {

    Map<String, Object> paramMap = new HashMap<>();

    paramMap.put("boardNo", boardNo);
    paramMap.put("cri", cri);

    return session.selectList(namespace + ".listPage", paramMap);
  }

  @Override
  public int count(Integer boardNo) throws Exception {

    return session.selectOne(namespace + ".count", boardNo);
  }
  @Override
  public int getBoardNo(Integer replyNo) throws Exception {

    return session.selectOne(namespace + ".getboardNo", replyNo);
  }
  
}
