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
import com.ateam.proalba.domain.WorkManageVO;
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
	public ModelAndView recruinfoDetail(Model model, String n_code)throws Exception  {
		
		logger.info("n_code:"+ n_code);
		 List<NoticeVO> list=recruinfoService.get_noticeDe_list(n_code); 
		 
			logger.info(list.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("recruinfo/recruinfoDetail");
		mav.addObject("list", list); 
		return mav;
	}
}
