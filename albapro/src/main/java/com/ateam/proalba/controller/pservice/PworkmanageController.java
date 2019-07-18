package com.ateam.proalba.controller.pservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ateam.proalba.domain.CareerVO;
import com.ateam.proalba.domain.WorkManageVO;
import com.ateam.proalba.domain.mobile.MobileAttendanceVO;
import com.ateam.proalba.service.CareerService;
import com.ateam.proalba.service.WorkManageService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
public class PworkmanageController {

	@Autowired
	WorkManageService workManageService;
	CareerService careerService;
	private static final Logger logger = LoggerFactory.getLogger(PworkmanageController.class);
	
	@RequestMapping(value = "/pworkmanage", method = RequestMethod.GET)
	public ModelAndView pservicepageGET(Model model,@RequestParam("id") String id, @RequestParam("work_place") String work_place) throws Exception {
		Map<String, String> id_work_place = new HashMap<String, String>();
		id_work_place.put("id", id);
		id_work_place.put("work_place", work_place);
		System.out.println(id_work_place);
		
		model.addAttribute("message", "");
		List<MobileAttendanceVO> list = workManageService.workRecord(id_work_place);
		//List<CareerVO> list2 = careerService.selectCareers("p"+id);
		List<CareerVO> list2 = workManageService.workPlace("p"+id);

		logger.info("workManager:  "+list.toString());
		logger.info("workPlace:  "+list2.toString());

		logger.info(id);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("servicepage/pworkmanage"); // 酉곕�� list.jsp濡� �ㅼ��
		Map<String, Object> map = new HashMap<String, Object>();
	
		map.put("list",list);
		map.put("list2",list2);
		
	
		
		mav.addObject("map", map); // 留듭�� ���λ�� �곗�댄�곕�� mav�� ����
	
		return mav; // list.jsp濡� List媛� ���щ����.
	}
}
	

