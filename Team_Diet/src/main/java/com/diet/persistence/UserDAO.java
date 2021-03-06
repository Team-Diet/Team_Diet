package com.diet.persistence;

import java.util.Date;

import com.diet.domain.ChartVO;
import com.diet.domain.UserVO;
import com.diet.dto.LoginDTO;

public interface UserDAO {

	public UserVO login(LoginDTO dto)throws Exception;
	
	public ChartVO chart(UserVO vo)throws Exception;

  public void keepLogin(String id, String sessionId, Date next);
  
  public UserVO checkUserWithSessionKey(String value);	
}



