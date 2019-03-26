package com.ateam.proalba.controller.login;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.MemberVO;
import com.ateam.proalba.service.MemberService;
@Controller
public class LoginController {
private final MemberService memberService;
	
	@Inject
	public LoginController(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@RequestMapping(value = "/login/login", method = RequestMethod.GET)
	public String loginGET(@ModelAttribute("loginDTO") LoginDTO loginDTO) {
		return "login";
	}
	
    // 로그인 처리
    @RequestMapping(value = "/login/loginPost", method = RequestMethod.POST)
    public void loginPOST(LoginDTO loginDTO, HttpSession httpSession, Model model) throws Exception {

        MemberVO memberVO = memberService.login(loginDTO);

        if (memberVO == null || !BCrypt.checkpw(loginDTO.getI_Pw(), memberVO.getI_Pw())) {
            return;
        }

        model.addAttribute("member", memberVO);
        
    }
}
