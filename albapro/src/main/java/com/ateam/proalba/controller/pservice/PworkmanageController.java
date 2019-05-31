package com.ateam.proalba.controller.pservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.ateam.proalba.domain.mobile.MobileAttendanceVO;
import com.ateam.proalba.service.mobile.MobileAttendanceService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
public class PworkmanageController {

	@Autowired
	MobileAttendanceService mobileAttendanceService;
	private static final Logger logger = LoggerFactory.getLogger(PworkmanageController.class);
	
	@RequestMapping(value = "/pworkmanage", method = RequestMethod.GET)
	public ModelAndView pservicepageGET(Model model,@RequestParam("id") String id) throws Exception {
	
//		model.addAttribute("message", "");
//		List<MobileAttendanceVO> list = mobileAttendanceService.mobileattendance(id);
//		logger.info("workManager:  "+list.toString());
//		logger.info(id);
//		
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("servicepage/pworkmanage"); // 酉곕�� list.jsp濡� �ㅼ��
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("list",list);
//		
//		mav.addObject("map", map); // 留듭�� ���λ�� �곗�댄�곕�� mav�� ����
//		return mav; // list.jsp濡� List媛� ���щ����.
		return null;
	}
	
}
	

