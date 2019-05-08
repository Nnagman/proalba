	package com.ateam.proalba.controller.login;

import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.MemberVO;
import com.ateam.proalba.service.MemberService;

import net.sf.json.JSONObject;
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
	
	
	
	  @RequestMapping(value = "/MyinfoModify", method = RequestMethod.GET)
	  public String loginGET (HttpSession httpSession, Model model) { 
			return "login/MyinfoModify"; 

	  }
	 
	  @RequestMapping(value = "/MyinfoModify", method = RequestMethod.POST)
	  public String PasswordGET (LoginDTO loginDTO, HttpSession httpSession, Model model) throws Exception { 
		  MemberVO memberVO = memberService.login(loginDTO);
//		  logger.info("pwd: "+memberVO.getPassword());
//		  logger.info("input_pwd  "+loginDTO.getPassword());
		  		
		  if( memberVO != null ) {
			  return "login/pMyinfo";
		  }else {
			  System.out.println("�ㅼ�����ν���몄��");
			  return "redirect:MyinfoModify";
		  } 

	  }	
	  
	  @RequestMapping(value = "/pMyinfo", method = RequestMethod.GET)
	  public String ModifyGet (HttpSession httpSession, Model model) {
			return "login/pMyinfo"; 

	  }

    // 占싸깍옙占쏙옙 처占쏙옙
    @RequestMapping(value = "/login/loginPost", method = RequestMethod.POST)
    public void loginPOST(LoginDTO loginDTO, HttpSession httpSession, Model model) throws Exception {
		logger.info("loginPOST");
        MemberVO memberVO = memberService.login(loginDTO);
        
        if (memberVO == null) {
            return;
        }

        model.addAttribute("member", memberVO);
        
    }
    
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
	  public String logout (HttpServletRequest request, HttpServletResponse response) {
    	HttpSession httpSession = request.getSession();
        if (httpSession.getAttribute("login") != null) {
            logger.info("clear login data");
            httpSession.removeAttribute("login");
        }
			return "redirect:/"; 
	  }
    
    @RequestMapping(value = "/m.login", method = RequestMethod.POST)
	@ResponseBody
	@CrossOrigin(origins = "*")
	public String getCustomer(@RequestBody Map<String, Object> params) throws Exception { 
    	System.out.println("login called");
//    	System.out.println(id + " " + password);
    	System.out.println(params.get("id"));
    	MemberVO vo= new MemberVO();
    	LoginDTO loginDTO = new LoginDTO();
    	loginDTO.setId((String)params.get("id"));
    	loginDTO.setPassword((String)params.get("password"));
    	System.out.println(loginDTO.getId());
    	vo = memberService.login(loginDTO);
    	JSONObject a=new JSONObject();
    	

		return a.fromObject(vo).toString();
    }
}