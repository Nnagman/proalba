package com.ateam.proalba.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RecruinfoController {
	private static final Logger logger = LoggerFactory.getLogger(RecruinfoController.class);

	@RequestMapping("/recruinfo")
	public String recruinfo(Model model) {
		logger.info("Welcome recruinfoPage");
		model.addAttribute("message", "채용정보 페이지 방문을 환영합니다");
		return "recruinfo/recruinfo";
	}
}
