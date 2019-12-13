package com.diet.persistence;

import java.util.Date;

import com.diet.domain.UserVO;
import com.diet.dto.LoginDTO;

public interface UserDAO {

	public UserVO login(LoginDTO dto)throws Exception;

  public void keepLogin(String dtid, String sessionId, Date next);
  
  public UserVO checkUserWithSessionKey(String value);	
}



