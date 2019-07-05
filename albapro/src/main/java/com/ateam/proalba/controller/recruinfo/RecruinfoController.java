package com.ateam.proalba.controller.recruinfo;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ateam.proalba.domain.NoticeVO;
import com.ateam.proalba.domain.ResumeVO;
import com.ateam.proalba.service.ResumeService;
import com.ateam.proalba.service.recruinfo.RecruinfoService;

@Controller
public class RecruinfoController {
	private static final Logger logger = LoggerFactory.getLogger(RecruinfoController.class);
	
	@Autowired
	RecruinfoService recruinfoService;
	
	@Autowired
	ResumeService resumeService;

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
	
	@RequestMapping(value = "apply", method = RequestMethod.GET)
	public ModelAndView apply(Model model, @RequestParam("id") String id, @RequestParam("n_code") String n_code) throws Exception {
		logger.info(id);
		
		List<ResumeVO> list = resumeService.list_resume(id);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list",list);
		map.put("n_code", n_code);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("recruinfo/apply");
		mav.addObject("map", map);
		return mav;
	}
	
	@RequestMapping(value = "applyResume", method = RequestMethod.GET)
	public ModelAndView applyResum(Model model, @RequestParam("r_code") String r_code, @RequestParam("n_code") String n_code) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("r_code", r_code);
		map.put("n_code", n_code);
		
		resumeService.apply_resume(map);
		
		List<NoticeVO> list=recruinfoService.get_notice_list();
		
		logger.info(list.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("recruinfo/recruinfo");
		mav.addObject("list", list);
		return mav;
	}
}
