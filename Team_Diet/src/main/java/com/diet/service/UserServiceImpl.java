package com.diet.service;

import java.util.Date;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import com.diet.domain.UserVO;
import com.diet.dto.LoginDTO;
import com.diet.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService {

  @Inject
  private UserDAO dao;

  @Override
  public UserVO login(LoginDTO dto) throws Exception {

    return dao.login(dto);
  }
  
  @Override
  public void keepLogin(String dtid, String sessionId, Date next)
      throws Exception {
    
    dao.keepLogin(dtid, sessionId, next);
    
  }

  @Override
  public UserVO checkLoginBefore(String value) {
    
    return dao.checkUserWithSessionKey(value);
  }
}
