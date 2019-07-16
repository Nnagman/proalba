package com.ateam.proalba.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

//import com.ateam.proalba.controller.login.Requestmapping;
import com.ateam.proalba.domain.MemberVO;
import com.ateam.proalba.service.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class SignUpController {
	
	private static final Logger logger = LoggerFactory.getLogger(SignUpController.class);
	
	private final MemberService memberService;
	
	@Inject
	public SignUpController(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerGET() {
		return "login/sel_register";
	}
	
	@RequestMapping(value = "/selNaverRegister", method = RequestMethod.GET)
	public String selNaverRegister() {
		
		return "login/naverRegister";
	}
	
	@RequestMapping(value = "/apiRegister", method = RequestMethod.GET)
	public String naverRegisterGET(@RequestParam("email") String email, HttpSession httpSession, Model model) throws Exception {
		MemberVO memberVO = new MemberVO();
		memberVO.setEmail(email);
		
		MemberVO emailChk = memberService.apiIdcheck(email);
		
		if(emailChk != null) {
			model.addAttribute("status", "1");
    		return "redirect:/login";
		}
		
		httpSession.setAttribute("memberVO", memberVO);
		
		return "login/register";
	}
	
	@RequestMapping(value = "/pregister", method = RequestMethod.GET)
	public String pregisterGET() {
		return "redirect:/login";
	}
	
	@RequestMapping(value = "/cregister", method = RequestMethod.GET)
	public String cregisterGET() {
		return "login/com_register";
	}
	@RequestMapping(value = "/articles", method = RequestMethod.GET)
	public String articlesGET(Model model) throws Exception {
		model.addAttribute("articles",memberService.getArticles());
		return "login/articles";
	}
	
	@RequestMapping(value = "/pdata", method = RequestMethod.GET)
	public String pdataGET(Model model) {
		model.addAttribute("pdata",memberService.getPdata());
		return "login/pdata";
	}
    @RequestMapping(value = "/pregister", method = RequestMethod.POST)
    public String pregisterPOST(MemberVO memberVO) throws Exception {
    	
    	logger.info(memberVO.getPhone());
    	logger.info(memberVO.getEmail());
        memberService.pregister(memberVO);

        return "/login/login";  
    }
    
    @RequestMapping(value = "/pregisterModify", method = RequestMethod.POST)
    public String pregisterModifyPOST(MemberVO memberVO, RedirectAttributes redirectAttributes) throws Exception {
    	logger.info(memberVO.getId());
    	memberService.pregisterModify(memberVO);
    	
    	return "login/pMyinfo";
    }
    
    @RequestMapping(value = "/cregisterModify", method = RequestMethod.POST)
    public String cregisterModifyPOST(MemberVO memberVO, RedirectAttributes redirectAttributes) throws Exception {
    	logger.info(memberVO.getId());
    	memberService.cregisterModify(memberVO);
    	 
    	return "login/cMyinfo";
    }
    
  
    @RequestMapping(value = "/cregister", method = RequestMethod.POST)
    public String cregisterPOST(MemberVO memberVO, RedirectAttributes redirectAttributes) throws Exception {
    	
    	logger.info(memberVO.getPhone());
    	logger.info(memberVO.getB_number());
    	logger.info(memberVO.toString());
//        String hashedPassword = BCrypt.hashpw(memberVO.getPassword(), BCrypt.gensalt());
//        memberVO.setPassword(hashedPassword);
//        logger.info(hashedPassword);
        memberService.cregister(memberVO);
        redirectAttributes.addFlashAttribute("msg", "REISTERED");

        return "login/login";
    }
    
    @RequestMapping(value = "/idcheck", method = RequestMethod.POST)
    @ResponseBody
	public Map<Object, Object> idcheck(@RequestBody String id) throws Exception {
    	
    	int count = 0;
    	Map<Object, Object> map = new HashMap<Object, Object>();
    	
    	count = memberService.idcheck(id);
    	System.out.println(count);
    	map.put("cnt", count);
		return map;		
	}
    
    
}
