package com.ateam.proalba.controller.cservice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ateam.proalba.controller.pservice.PworkmanageController;
import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.PageMaker;
import com.ateam.proalba.domain.WorkManageVO;
import com.ateam.proalba.domain.mobile.MobileAttendanceVO;
import com.ateam.proalba.service.SalaryService;
import com.ateam.proalba.service.WorkManageService;
import com.ateam.proalba.service.mobile.MobileAttendanceService;

import net.sf.json.JSONArray;

@Controller
public class WorkmanageController {

	@Autowired
	WorkManageService workManage;
	@Autowired
	SalaryService salaryService;
	
	private static final Logger logger = LoggerFactory.getLogger(WorkmanageController.class);
	
	@RequestMapping(value ="/cserEmpManage", method = RequestMethod.GET)
	public ModelAndView cworkmanageGET(Model model, String id) throws Exception {
		
		logger.info("c id:  "+ id);
		logger.info("Welcome CserviceController");
		List<WorkManageVO> list = workManage.listAll(id);
		logger.info(list.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cservicepage/cserEmpManage");
		mav.addObject("list", list);
		return mav;
	}
	
	
	
	
	@Autowired
	MobileAttendanceService mobileAttendanceService;

	@RequestMapping(value = "/cserWorkmanagetable", method = RequestMethod.GET)
	public ModelAndView pservicepageGET(Model model,@RequestParam("id") String id) throws Exception {
	
		model.addAttribute("message", "");
		List<MobileAttendanceVO> list = mobileAttendanceService.mobileattendance(id);
		logger.info("workManager:  "+list.toString());
		logger.info(id);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cservicepage/cserWorkmanagetable"); // 酉곕�� list.jsp濡� �ㅼ��
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list",list);
		
		mav.addObject("map", map); // 留듭�� ���λ�� �곗�댄�곕�� mav�� ����
		return mav; // list.jsp濡� List媛� ���щ����.
		
		
	
		
		
	}
	
	
	
	@RequestMapping(value = "/cserSalary", method = RequestMethod.GET)
	public String inqsalaryGET(Model model,@ModelAttribute("criteria") Criteria criteria, String id) throws Exception {
	
	
		
		PageMaker pageMaker = new PageMaker();
	    pageMaker.setCriteria(criteria);
	    pageMaker.setTotalCount(salaryService.countSalarys(criteria));
	    logger.info(id);
	    model.addAttribute("salary_id", id);
		model.addAttribute("message", "inqsalaryPage");
		JSONArray pJson = JSONArray.fromObject(salaryService.listCriteria(criteria, id));
		model.addAttribute("salarys", pJson);
		model.addAttribute("pageMaker", pageMaker);
		logger.info(Integer.toString(criteria.getPageStart()));
		logger.info(Integer.toString(criteria.getPerPageNum()));
		logger.info(pJson.toString());
		return "cservicepage/cserSalary";
	}
	
	
	
}
