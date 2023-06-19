package edu.global.friend.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import edu.global.friend.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AdminController {

	@GetMapping("/admin/board")
	public void adminBoard(Model model, HttpSession session) {
		log.info("admin board ... ");

		UserVO user = (UserVO) session.getAttribute("admin");
	}
	
	
	@GetMapping("/admin/payment")
	public void adminPayment(Model model, HttpSession session) {
		log.info("admin payment ... ");

		UserVO user = (UserVO) session.getAttribute("admin");
	}
	
	
}