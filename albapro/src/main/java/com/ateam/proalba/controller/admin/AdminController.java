package com.ateam.proalba.controller.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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

}
