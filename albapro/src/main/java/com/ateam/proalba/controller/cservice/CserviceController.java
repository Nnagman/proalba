package com.ateam.proalba.controller.cservice;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.NoticeVO;
import com.ateam.proalba.domain.PageMaker;
import com.ateam.proalba.service.AddJobOpeningService;
import com.ateam.proalba.service.CareerService;

@Controller
public class CserviceController {
	private static final Logger logger = LoggerFactory.getLogger(CserviceController.class);
	private static final String NOTICE = "notices";
	private final AddJobOpeningService addJobOpeningService;
	private final CareerService careerService;
	
	@Inject
	public CserviceController(AddJobOpeningService addJobOpeningService, CareerService careerService) {
		this.addJobOpeningService = addJobOpeningService;
		this.careerService = careerService;
	}

	@RequestMapping(value = "/cservice", method = RequestMethod.GET)
	public String cserviceGET(Model model) throws Exception {
		logger.info("Welcome CserviceController");
		model.addAttribute("message", "ê³ ê°�ì„¼í„° íŽ˜ì�´ì§€ ë°©ë¬¸ì�„ í™˜ì˜�í•©ë‹ˆë‹¤");
		return "cservice/cservice";
	}
	
	@RequestMapping(value ="/addjobopening", method = RequestMethod.GET)
	public String addjobopeningGET(Model model) throws Exception {
		logger.info("Welcome CserviceController");
		model.addAttribute("message", "ê³ ê°�ì„¼í„° íŽ˜ì�´ì§€ ë°©ë¬¸ì�„ í™˜ì˜�í•©ë‹ˆë‹¤");
		return "cservice/addjobopening";
	}
	
	@RequestMapping(value ="/addjobopening_free", method = RequestMethod.POST)
	public String addjobopeningPOST(NoticeVO noticeVO, RedirectAttributes redirectAttributes) throws Exception {
		
		logger.info(noticeVO.toString());
		
		addJobOpeningService.addJobOpening(noticeVO);
		
		redirectAttributes.addFlashAttribute("msg", "POSTED");
		return "cservice/jobopeningmanage";
	}
	
	@RequestMapping(value ="/addjobopening_free", method = RequestMethod.GET)
	public String addjobopeningfreeGET(Model model) throws Exception {
		logger.info("Welcome CserviceController");
		model.addAttribute("message", "ê³ ê°�ì„¼í„° íŽ˜ì�´ì§€ ë°©ë¬¸ì�„ í™˜ì˜�í•©ë‹ˆë‹¤");
		return "cservice/addjobopening_free";
	}
	
	@RequestMapping(value ="/cworkmanage", method = RequestMethod.GET)
	public String cworkmanageGET(Model model) throws Exception {
		logger.info("Welcome CserviceController");
		model.addAttribute("message", "기업 근태기록입니다.");
		return "cservice/cworkmanage";
	}
	
	@RequestMapping(value = "/jobopeningmanage", method = RequestMethod.GET)
	public String jobopeningmanageGET(HttpServletRequest request, LoginDTO loginDTO, Model model) throws Exception {
		loginDTO.setId('c'+loginDTO.getId());
		HttpSession httpSession = request.getSession();
		logger.info("Welcome CserviceController");
		httpSession.setAttribute(NOTICE,addJobOpeningService.jobOpeningManage(loginDTO));
		return "cservice/jobopeningmanage";
	}
	
	@RequestMapping(value = "/ccontract", method = RequestMethod.GET)
	public String ccontractGET(Model model,@ModelAttribute("criteria") Criteria criteria) throws Exception {
		PageMaker pageMaker = new PageMaker();
	    pageMaker.setCriteria(criteria);
	    pageMaker.setTotalCount(careerService.countCareers(criteria));
	    
		model.addAttribute("message", "inqcareerPage");
		model.addAttribute("careers", careerService.listCriteria(criteria));
		model.addAttribute("pageMaker", pageMaker);
		logger.info(Integer.toString(criteria.getPageStart()));
		logger.info(Integer.toString(criteria.getPerPageNum()));
		return "contract/ccontract";
	}
	
	@RequestMapping(value = "/kakao", method = RequestMethod.GET)
	public String kakaoGET(Model model) throws Exception {
	return "cservice/kakao";
	}

}
