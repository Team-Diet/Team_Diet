package com.diet.service;

import java.util.Date;

import com.diet.domain.ChartVO;
import com.diet.domain.UserVO;
import com.diet.dto.LoginDTO;

public interface UserService {

  public UserVO login(LoginDTO dto) throws Exception;

  public ChartVO chart(UserVO vo) throws Exception;
  
  public void keepLogin(String id, String sessionId, Date next)throws Exception;
  
  public UserVO checkLoginBefore(String value);  
}
