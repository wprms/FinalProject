package edu.global.friend.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import edu.global.friend.vo.UserVO;

@Controller
public class UserController {

	 private HttpSession httpSession;

	    @Autowired
	    public UserController(HttpSession httpSession) {
	        this.httpSession = httpSession;
	    }

	    @ModelAttribute("User")
	    public UserVO getCurrentUser(HttpSession httpSession) {
	        return (UserVO) httpSession.getAttribute("user");
	    }

	    // 로그인한 사용자 정보를 세션에 저장
	    public void loginUser(UserVO user) {
	        httpSession.setAttribute("user", user);
	    }

	    // 로그아웃 시 세션에서 사용자 정보 제거
	    public void logoutUser() {
	        httpSession.removeAttribute("user");
	    }
}
