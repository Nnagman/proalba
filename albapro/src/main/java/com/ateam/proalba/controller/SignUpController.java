package com.ateam.proalba.controller;

import javax.inject.Inject;

import org.mindrot.jbcrypt.BCrypt;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ateam.proalba.domain.MemberVO;
import com.ateam.proalba.service.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class SignUpController {
	
	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	private final MemberService memberService;
	
	@Inject
	public SignUpController(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@RequestMapping(value = "/login/register", method = RequestMethod.GET)
	public String registerGET() {
		return "login/register";
	}
	
    // 회원가입 처리
    @RequestMapping(value = "/login/register", method = RequestMethod.POST)
    public String registerPOST(MemberVO memberVO, RedirectAttributes redirectAttributes) throws Exception {
    	
    	
    	
    	logger.info(Integer.toString(memberVO.getP_Number()));
        String hashedPw = BCrypt.hashpw(memberVO.getI_Pw(), BCrypt.gensalt());
        memberVO.setI_Pw(hashedPw);
        logger.info(hashedPw);
        memberService.register(memberVO);
        redirectAttributes.addFlashAttribute("msg", "REGISTERED");

        return "redirect:/";
    }
	
}
