package com.diet.service;

import java.util.Date;

import com.diet.domain.UserVO;
import com.diet.dto.LoginDTO;

public interface UserService {

  public UserVO login(LoginDTO dto) throws Exception;

  public void keepLogin(String dtid, String sessionId, Date next)throws Exception;
  
  public UserVO checkLoginBefore(String value);  
}
