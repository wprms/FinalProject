package edu.global.friend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class SupportController {
	@GetMapping("/supportCenter")
	public void support_center() {
		log.info("support center");
	}

	@GetMapping("/userGuide")
	public void user_guide() {
		log.info("user guide");
	}

	@GetMapping("/faq")
	public void faq() {
		log.info("faq");
	}
	
	@GetMapping("/supportBoard")
	public void supportBoard() {
		log.info("supportBoard");
	}
	
	@GetMapping("/sitePolicy")
	public void site_policy() {
		log.info("site policy");
	}
	
	@GetMapping("/userPolicy")
	public void user_policy() {
		log.info("user policy");
	}
}
