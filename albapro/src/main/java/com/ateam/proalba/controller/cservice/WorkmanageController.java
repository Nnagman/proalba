package com.ateam.proalba.controller.cservice;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ateam.proalba.domain.WorkManageVO;
import com.ateam.proalba.service.WorkManageService;

@Controller
public class WorkmanageController {

	@Autowired
	WorkManageService workManage;
	
	private static final Logger logger = LoggerFactory.getLogger(WorkmanageController.class);
	
	@RequestMapping(value ="/cworkmanage", method = RequestMethod.GET)
	public ModelAndView cworkmanageGET(Model model, String id) throws Exception {
		
		logger.info("c id:  "+ id);
		logger.info("Welcome CserviceController");
		List<WorkManageVO> list = workManage.listAll(id);
		logger.info(list.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cservice/cworkmanage");
		mav.addObject("list", list);
		return mav;
	}
}
