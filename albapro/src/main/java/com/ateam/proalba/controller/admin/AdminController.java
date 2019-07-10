package com.ateam.proalba.controller.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ateam.proalba.domain.MemberVO;
import com.ateam.proalba.service.MemberService;

@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	MemberService memberService;	
	
	@RequestMapping(value = "/yakModify", method = RequestMethod.GET)
	public String yakModify(Model model) throws Exception {
		
		model.addAttribute("articles",memberService.getArticles());
		model.addAttribute("pdata",memberService.getPdata());
		
		return "login/yakModify";
	}
	
	@ResponseBody
	@RequestMapping(value = "/yakPdataModify", method = RequestMethod.POST)
	public String yakPdataModify(String pdata) throws Exception {
		memberService.modifyPdata(pdata);
		return "success";
	}
	
	@ResponseBody
	@RequestMapping(value = "/yakArticleModify", method = RequestMethod.POST)
	public String yakArticleModify(String articles) throws Exception {
		memberService.modifyArticle(articles);
		return "success";
	}
	
	@RequestMapping(value = "/hourWageModify", method = RequestMethod.GET)
	public String horeWageModify(Model model) {
		model.addAttribute("hourWage",memberService.gethourWage());
		model.addAttribute("ceoCount",memberService.ceoCount());
		model.addAttribute("perCount",memberService.perCount());
		model.addAttribute("contCount",memberService.contCount());

		return "login/hourWageModify";
	}
	
    @ResponseBody
    @RequestMapping(value = "/hwModify", method = RequestMethod.POST)
	public String hwModify(int hourWage) {
    	memberService.hwModify(hourWage);
    	return "success"; 			
	}
    
    @RequestMapping(value = "/mManage", method = RequestMethod.GET)
	public String mManage() {
    	return "login/mManage"; 			
	}
    
    @ResponseBody
    @RequestMapping(value = "/memDelete", method = RequestMethod.POST)
	public String memDelete(String memId) throws Exception {
    	String mcode = memberService.getMcode(memId);
    	logger.info(mcode);
    	
    	if(mcode != null) {
    		String sortCP = mcode.substring(0,1);
    		logger.info(sortCP);
    		if(sortCP.equals("p")) {
    			return "personal";
    		}else if(sortCP.equals("c")) {
    			return "ceo";
    		}
    	}
		return "none"; 			
	}

    @ResponseBody
    @RequestMapping(value = "/withdrawalPersonal", method = RequestMethod.POST)
	public String withdrawalPersonal(MemberVO memberVO) throws Exception {
    	String mcode = memberVO.getM_code() + memberVO.getId();
    	logger.info(mcode);
    	memberService.withdraw(mcode);
		return "success";		
	}

    @ResponseBody
    @RequestMapping(value = "/withdrawMan", method = RequestMethod.POST)
	public String withdrawMan(String mcode) throws Exception {
    	logger.info(mcode);
    	memberService.withdraw(mcode);
		return "success";		
	}
}
