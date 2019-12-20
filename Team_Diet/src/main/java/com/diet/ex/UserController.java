package com.diet.ex;

import java.util.Date;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.WebUtils;
import com.diet.domain.UserVO;
import com.diet.dto.LoginDTO;
import com.diet.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

  @Inject
  private UserService service;

  @RequestMapping(value = "/mypage", method = RequestMethod.GET)
  public void myPAGE(@ModelAttribute("dto") LoginDTO dto) {

  }
  
  @RequestMapping(value = "/login", method = RequestMethod.GET)
  public void loginGET(@ModelAttribute("dto") LoginDTO dto) {
	  System.out.println("checking2");
  }

   @RequestMapping(value = "/loginPost", method = RequestMethod.POST)
   public void loginPOST(LoginDTO dto, HttpSession session, Model model)
   throws Exception {
	   System.out.println("checking3");
	   System.out.println(dto);
   UserVO vo = service.login(dto);
   System.out.println(vo.getDtid());
   if (vo == null) {
   return;
   }
   System.out.println(vo.getDtid());
  
   model.addAttribute("userVO", vo);
  
   
   if (dto.isUseCookie()) {
	   
	   int amount = 60 * 60 * 24 * 7;

	   Date sessionLimit = new Date(System.currentTimeMillis() + (1000 * amount));

	   service.keepLogin(vo.getDtid(), session.getId(), sessionLimit);
	   }
}


  @RequestMapping(value = "/logout", method = RequestMethod.GET)
  public String logout(HttpServletRequest request, 
      HttpServletResponse response, HttpSession session) throws Exception {
	System.out.println(session.getAttribute("naverId"));
    Object obj = session.getAttribute("login");
    Object naver = session.getAttribute("naverId");
    System.out.println(naver);
    if(naver!=null) {
    	session.invalidate();
    }
    if (obj != null) {
      UserVO vo = (UserVO) obj;

      session.removeAttribute("login");
      session.invalidate();

      Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");

      if (loginCookie != null) {
        loginCookie.setPath("/");
        loginCookie.setMaxAge(0);
        response.addCookie(loginCookie);
        service.keepLogin(vo.getDtid(), session.getId(), new Date());
      }
    }
    return "index";
  }

}
