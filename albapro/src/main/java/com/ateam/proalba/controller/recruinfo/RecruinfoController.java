package com.ateam.proalba.controller.recruinfo;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ateam.proalba.domain.CareerVO;
import com.ateam.proalba.domain.NoticeVO;
import com.ateam.proalba.domain.ResumeVO;
import com.ateam.proalba.service.CareerService;
import com.ateam.proalba.service.ResumeService;
import com.ateam.proalba.service.recruinfo.RecruinfoService;

@Controller
public class RecruinfoController {
	private static final Logger logger = LoggerFactory.getLogger(RecruinfoController.class);
	
	@Autowired
	RecruinfoService recruinfoService;
	
	@Autowired
	ResumeService resumeService;
	
	@Autowired
	CareerService careerService;

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
	
	@RequestMapping("/recruinfoManage")
	public ModelAndView recruinfoManage(Model model)throws Exception {
		logger.info("Welcome recruinfoPage");
		List<NoticeVO> list=recruinfoService.get_notice_list();
		int nCot = recruinfoService.nCount();
		
		logger.info(list.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("recruinfo/recruinfoManage");
		mav.addObject("list", list);
		mav.addObject("nCot",nCot);
		return mav;
	}
	
	@ResponseBody
	@RequestMapping("/recruinfoDelete")
	public String recruinfoDelete(String[] deleteChedNo) throws Exception {
		logger.info("checked Notice : "+deleteChedNo);
		recruinfoService.deleteNotice(deleteChedNo);
		return "s";
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
	
	@RequestMapping("apply")
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
	
	@RequestMapping("applyResume")
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
	
	@RequestMapping("checkResume")
	public ModelAndView checkResume(Model model, @RequestParam("n_code") String n_code) throws Exception {
		logger.info("checkResume's n_code : " + n_code);
		List<ResumeVO> list = resumeService.checkResume(n_code);
		
		ResumeVO resumeVO = new ResumeVO();
		List<String> m_code = new ArrayList<String>();
		
		for(int i=0; i < list.size(); i++) {
			resumeVO = list.get(i);
			m_code.add(resumeVO.getM_code());
		}
		
		List<List<CareerVO>> careerList = new ArrayList<List<CareerVO>>();
		
		for(int i=0; i < m_code.size(); i++) {
			List<CareerVO> careerVO = careerService.selectCareers(m_code.get(i));
			careerList.add(careerVO);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("careerList", careerList);
		mav.setViewName("recruinfo/checkResume");
		return mav;
	}
	
	@RequestMapping("viewApplyResume")
	public String viewApplyResume(Model model, @RequestParam("r_code") String r_code, @RequestParam("id") String id) throws Exception {
		logger.info("Welcome wresumePage");
		
		List<CareerVO> careerVO = careerService.selectCareers("p"+id);
		
		model.addAttribute("careers", careerVO);
		
		ResumeVO resumeVO = resumeService.view_resume(r_code);
		ResumeVO late_status = resumeService.view_resume(r_code);
		
		model.addAttribute("resume", resumeVO);
		model.addAttribute("late_status", late_status);
		return "recruinfo/viewResume";
	}
}
