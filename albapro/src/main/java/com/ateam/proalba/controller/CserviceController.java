package com.ateam.proalba.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CserviceController {
	private static final Logger logger = LoggerFactory.getLogger(CserviceController.class);

	@RequestMapping("/cservice")
	public String cservice(Model model) {
		logger.info("Welcome CserviceController");
		model.addAttribute("message", "고객센터 페이지 방문을 환영합니다");
		return "cservice/cservice";
	}
}
