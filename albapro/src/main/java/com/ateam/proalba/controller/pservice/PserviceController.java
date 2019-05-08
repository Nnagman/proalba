package com.ateam.proalba.controller.pservice;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.PageMaker;
import com.ateam.proalba.service.CareerService;
import com.ateam.proalba.service.SalaryService;


@Controller
public class PserviceController {
	private static final Logger logger = LoggerFactory.getLogger(PserviceController.class);
	private final CareerService careerService;
	private final SalaryService salaryService;
	
	@Inject
	public PserviceController(CareerService careerService, SalaryService salaryService) {
		this.careerService = careerService;
		this.salaryService = salaryService;
	}

	@RequestMapping("/pservice")
	public String pservice(Model model) {
		logger.info("Welcome PservicePage");
		model.addAttribute("message", "");
		return "pservice/pservice";
	}
	
	@RequestMapping(value = "/writeResume", method = RequestMethod.GET)
	public String wresumeGET(Model model) throws Exception {
		logger.info("Welcome wresumePage");
		model.addAttribute("message", "wresumePage");
		return "pservice/writeResume";
	}
	
	@RequestMapping(value = "/maresume", method = RequestMethod.GET)
	public String maresumeGET(Model model) throws Exception {
		logger.info("Welcome maresumePage");
		model.addAttribute("message", "maresumePage");
		return "pservice/maresume";
	}
	
	@RequestMapping(value = "/ecertifi", method = RequestMethod.GET)
	public String ecertifiGET(Model model) throws Exception {
		logger.info("Welcome ecertifiPage");
		model.addAttribute("message", "ecertifiPage");
		return "pservice/ecertifi";
	}
	
//	@RequestMapping(value = "/pworkmanage", method = RequestMethod.GET)
//	public String workmanageGET(Model model) throws Exception {
//		logger.info("Welcome workmanagePage");
//		model.addAttribute("message", "workmanagePage");
//		return "pservice/pworkmanage";
//	}
	
	@RequestMapping(value = "/inqsalary", method = RequestMethod.GET)
	public String inqsalaryGET(Model model,@ModelAttribute("criteria") Criteria criteria, String p_id) throws Exception {
		logger.info("Welcome inqsalaryPage");
		
		PageMaker pageMaker = new PageMaker();
	    pageMaker.setCriteria(criteria);
	    pageMaker.setTotalCount(salaryService.countSalarys(criteria));
	    logger.info(p_id);
		model.addAttribute("message", "inqsalaryPage");
		model.addAttribute("salarys", salaryService.listCriteria(criteria, p_id));
		model.addAttribute("pageMaker", pageMaker);
		logger.info(Integer.toString(criteria.getPageStart()));
		logger.info(Integer.toString(criteria.getPerPageNum()));
		return "pservice/inqsalary";
	}
	@RequestMapping(value = "/psalarydetail", method= RequestMethod.GET)
	public String psalarydetailGET(Model model) throws Exception {
		logger.info("Welcome psalarydetail");
		model.addAttribute("message", "psalarydetail");
		return "pservice/psalarydetail";
	}
	
	@RequestMapping(value = "/inqcareer", method = RequestMethod.GET)
	public String inqcareerGET(Model model,@ModelAttribute("criteria") Criteria criteria, LoginDTO loginDTO) throws Exception {
		logger.info("Welcome inqcareerPage");
		
		PageMaker pageMaker = new PageMaker();
		loginDTO.setId('p'+ loginDTO.getId());
		criteria.setM_code(loginDTO.getId());
	    pageMaker.setCriteria(criteria);
	    pageMaker.setTotalCount(careerService.countCareers(loginDTO));
	    
		model.addAttribute("message", "inqcareerPage");
		model.addAttribute("careers", careerService.listCriteria(criteria));
		model.addAttribute("pageMaker", pageMaker);
		logger.info(Integer.toString(criteria.getPageStart()));
		logger.info(Integer.toString(criteria.getPerPageNum()));
		return "pservice/inqcareer";
	}
	

	@RequestMapping(value = "/employmentinfo", method = RequestMethod.GET)
	public String employmentinfoGET(Model model) throws Exception {
		logger.info("Welcome inqcareerPage");
		model.addAttribute("message", "inqcareerPage");
		return "pservice/employmentinfo";
	}
	@RequestMapping(value = "/contract", method = RequestMethod.GET)
	public String cservice(Model model) {
		logger.info("Welcome Contract");
		return "pservice/contract";

	}
	  @RequestMapping(value = "/pmypage", method = RequestMethod.GET)
	  public String ModifyGet (HttpSession httpSession, Model model) throws Exception {
		  logger.info("pmypage");

			return "pservice/pmypage"; 

	  }
	
}
