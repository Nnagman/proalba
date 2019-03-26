package com.ateam.proalba.controller.community;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommunityController {
	private static final Logger logger = LoggerFactory.getLogger(CommunityController.class);

	@RequestMapping("/community")
	public String cservice(Model model) {
		logger.info("Welcome CommunityController");
		model.addAttribute("message", "커뮤니티 페이지 방문을 환영합니다");
		return "community/community";
	}
}
