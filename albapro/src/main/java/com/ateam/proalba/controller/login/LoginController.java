package com.ateam.proalba.controller.login;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.MemberVO;
import com.ateam.proalba.service.MemberService;
@Controller
public class LoginController {
private final MemberService memberService;
	
private static final Logger logger = LoggerFactory.getLogger(MemberService.class);


	@Inject
	public LoginController(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginGET(@ModelAttribute("loginDTO") LoginDTO loginDTO) {
		return "login/login";
	}
	
	
	
	  @RequestMapping(value = "/login/MyinfoModify", method = RequestMethod.GET)
	  public String loginGET (HttpSession httpSession, Model model) { 
			String user_id = (String) httpSession.getAttribute("id"); 
			
			model.addAttribute("message", user_id);
			return "login/MyinfoModify"; 

	  }
	 
	  @RequestMapping(value = "/login/MyinfoModify", method = RequestMethod.POST)
	  public String PasswordGET (@RequestParam String password, HttpSession httpSession, Model model) throws Exception { 
		  LoginDTO lVo = new LoginDTO();
		  String id = (String) httpSession.getAttribute("id");
		  lVo.setId(id);
		  MemberVO list = memberService.login(lVo);
		  logger.info("pwd: "+list.getPassword());
		  logger.info("input_pwd  "+password);
		  
		
		  if( list.getPassword().equals(password) ) {
			  
			  
			  return "redirect:../"; 
		  }else {
			  System.out.println("다시입력하세요");
			  return "redirect:MyinfoModify";
		  } 

	  }	
	
    // �α��� ó��
    @RequestMapping(value = "/login/loginPost", method = RequestMethod.POST)
    public void loginPOST(LoginDTO loginDTO, HttpSession httpSession, Model model) throws Exception {
		logger.info("loginPOST");
        MemberVO memberVO = memberService.login(loginDTO);

        if (memberVO == null) {
            return;
        }

        model.addAttribute("member", memberVO);
        
    }
}
