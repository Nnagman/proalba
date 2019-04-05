package com.ateam.proalba.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.mindrot.jbcrypt.BCrypt;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

//import com.ateam.proalba.controller.login.Requestmapping;
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
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerGET() {
		return "login/sel_register";
	}
	
	@RequestMapping(value = "/pregister", method = RequestMethod.GET)
	public String pregisterGET() {
		return "login/register";
	}
	
	@RequestMapping(value = "/cregister", method = RequestMethod.GET)
	public String cregisterGET() {
		return "login/com_register";
	}
	
    // ȸ������ ó��
    @RequestMapping(value = "/pregister", method = RequestMethod.POST)
    public String pregisterPOST(MemberVO memberVO, RedirectAttributes redirectAttributes) throws Exception {
    	
    	
    	
    	
    	logger.info(memberVO.getPhone());
//        String hashedPassword = BCrypt.hashpw(memberVO.getId(), BCrypt.gensalt());
//        memberVO.setPassword(hashedPassword);
//        logger.info(hashedPassword);
        memberService.pregister(memberVO);
        redirectAttributes.addFlashAttribute("msg", "REGISTERED");

        return "redirect:/";
    }
    
    @RequestMapping(value = "/pregisterModify", method = RequestMethod.POST)
    public String pregisterModifyPOST(MemberVO memberVO, RedirectAttributes redirectAttributes) throws Exception {
    	logger.info(memberVO.getId());
    	memberService.pregisterModify(memberVO);
    	
    	return "redirect:../";
    }
    
    
  
    
    @RequestMapping(value = "/cregister", method = RequestMethod.POST)
    public String cregisterPOST(MemberVO memberVO, RedirectAttributes redirectAttributes) throws Exception {
    	
    	
    	
    	logger.info(memberVO.getPhone());
//        String hashedPassword = BCrypt.hashpw(memberVO.getPassword(), BCrypt.gensalt());
//        memberVO.setPassword(hashedPassword);
//        logger.info(hashedPassword);
        memberService.cregister(memberVO);
        redirectAttributes.addFlashAttribute("msg", "REGISTERED");

        return "redirect:/";
    }
    
    @RequestMapping(value = "/idcheck", method = RequestMethod.POST)
    @ResponseBody
	public Map<Object, Object> idcheck(@RequestBody String id) throws Exception {
    	
    	int count = 0;
    	Map<Object, Object> map = new HashMap<Object, Object>();
    	
    	count = memberService.idcheck(id);
    	map.put("cnt", count);
    	
		return map;
	}
	
}
