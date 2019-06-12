package com.ateam.proalba.controller.recruinfo;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ateam.proalba.domain.NoticeVO;
import com.ateam.proalba.service.recruinfo.RecruinfoService;

@Controller
public class RecruinfoController {
	private static final Logger logger = LoggerFactory.getLogger(RecruinfoController.class);
	
	@Autowired
	RecruinfoService recruinfoService;

	@RequestMapping("/recruinfo")
	public ModelAndView recruinfo(Model model)throws Exception {
		logger.info("Welcome recruinfoPage");
		List<NoticeVO> list=recruinfoService.get_notice_list();
		
		logger.info(list.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("recruinfo/recruinfo");
		mav.addObject("list", list);
		return mav;
	}
	
	
	@RequestMapping("/recruinfoDetail")
	public String recruinfoDetail(Model model)  {
		logger.info("Welcome recruinfoPage");
		
		
		return "recruinfo/recruinfoDetail";
	}
}
