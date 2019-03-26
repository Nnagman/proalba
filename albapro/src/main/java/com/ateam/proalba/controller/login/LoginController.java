package com.ateam.proalba.controller.login;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@RequestMapping("/login")
	public String login(Model model) {
		logger.info("Welcome Loginpage");
		model.addAttribute("message", "로그인 페이지 방문을 환영합니다");
		return "login/login";
	}
	
	@RequestMapping("/login/register")
	public String register(Model model) {
		logger.info("Welcome RegisterPage");
		model.addAttribute("message", "회원가입 페이지 방문을 환영합니다");
		return "login/register";
	}
}
