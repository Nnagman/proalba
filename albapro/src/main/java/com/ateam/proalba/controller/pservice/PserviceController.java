package com.ateam.proalba.controller.pservice;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PserviceController {
	private static final Logger logger = LoggerFactory.getLogger(PserviceController.class);

	@RequestMapping("/pservice")
	public String pservice(Model model) {
		logger.info("Welcome PservicePage");
		model.addAttribute("message", "媛쒖씤�꽌鍮꾩뒪 �럹�씠吏� 諛⑸Ц�쓣 �솚�쁺�빀�땲�떎");
		return "pservice/pservice";
	}
	
	@RequestMapping(value = "/wresume", method = RequestMethod.GET)
	public String wresumeGET(Model model) throws Exception {
		logger.info("Welcome wresumePage");
		model.addAttribute("message", "wresumePage �럹�씠吏� 諛⑸Ц�쓣 �솚�쁺�빀�땲�떎");
		return "pservice/wresume";
	}
	
	@RequestMapping(value = "/maresume", method = RequestMethod.GET)
	public String maresumeGET(Model model) throws Exception {
		logger.info("Welcome maresumePage");
		model.addAttribute("message", "maresumePage �럹�씠吏� 諛⑸Ц�쓣 �솚�쁺�빀�땲�떎");
		return "pservice/maresume";
	}
	
	@RequestMapping(value = "/wcontract", method = RequestMethod.GET)
	public String wcontractGET(Model model) throws Exception {
		logger.info("Welcome wcontractPage");
		model.addAttribute("message", "wcontractPage �럹�씠吏� 諛⑸Ц�쓣 �솚�쁺�빀�땲�떎");
		return "pservice/wcontract";
	}
	
	@RequestMapping(value = "/ecertifi", method = RequestMethod.GET)
	public String ecertifiGET(Model model) throws Exception {
		logger.info("Welcome ecertifiPage");
		model.addAttribute("message", "ecertifiPage �럹�씠吏� 諛⑸Ц�쓣 �솚�쁺�빀�땲�떎");
		return "pservice/ecertifi";
	}
	
	@RequestMapping(value = "/workmanage", method = RequestMethod.GET)
	public String workmanageGET(Model model) throws Exception {
		logger.info("Welcome workmanagePage");
		model.addAttribute("message", "workmanagePage �럹�씠吏� 諛⑸Ц�쓣 �솚�쁺�빀�땲�떎");
		return "pservice/workmanage";
	}
	
	@RequestMapping(value = "/inqsalary", method = RequestMethod.GET)
	public String inqsalaryGET(Model model) throws Exception {
		logger.info("Welcome inqsalaryPage");
		model.addAttribute("message", "inqsalaryPage �럹�씠吏� 諛⑸Ц�쓣 �솚�쁺�빀�땲�떎");
		return "pservice/inqsalary";
	}
	
	@RequestMapping(value = "/inqcareer", method = RequestMethod.GET)
	public String inqcareerGET(Model model) throws Exception {
		logger.info("Welcome inqcareerPage");
		model.addAttribute("message", "inqcareerPage �럹�씠吏� 諛⑸Ц�쓣 �솚�쁺�빀�땲�떎");
		return "pservice/inqcareer";
	}
	
	@RequestMapping(value = "/contract", method = RequestMethod.GET)
	public String cservice(Model model) {
		logger.info("Welcome Contract");
		return "pservice/contract";
	}
}
