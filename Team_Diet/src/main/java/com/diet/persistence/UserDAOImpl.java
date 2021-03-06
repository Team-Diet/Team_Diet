package com.diet.persistence;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.diet.domain.ChartVO;
import com.diet.domain.UserVO;
import com.diet.dto.LoginDTO;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace ="com.diet.mapper.UserMapper";	

	@Override
	public UserVO login(LoginDTO dto) throws Exception {
		return session.selectOne(namespace +".login", dto);
	}
	
	@Override
	public ChartVO chart(UserVO vo) throws Exception {
		return session.selectOne(namespace +".chart", vo);
	}
	
  @Override
  public void keepLogin(String id, String sessionId, Date next) {

    Map<String, Object> paramMap = new HashMap<String, Object>();
    paramMap.put("dtid", id);
    paramMap.put("sessionId", sessionId);
    paramMap.put("next", next);
    
    session.update(namespace+".keepLogin", paramMap);
    
  }

  @Override
  public UserVO checkUserWithSessionKey(String value) {

    return session.selectOne(namespace +".checkUserWithSessionKey", value);
  }	
}
