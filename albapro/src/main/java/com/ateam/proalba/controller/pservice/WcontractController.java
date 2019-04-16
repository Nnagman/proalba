package com.ateam.proalba.controller.pservice;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ateam.proalba.domain.WcontractVO;

@Controller
public class WcontractController {
	private static final Logger logger = LoggerFactory.getLogger(WcontractController.class);

	@RequestMapping(value = "/wcontract.do", method = RequestMethod.POST)
	public String wcontractPOST(@ModelAttribute WcontractVO wVo) throws Exception {
		logger.info("Welcome wcontractPage");
		logger.info("work getWork_place : " + wVo.getWork_place());
		return "redirect:/pservice/wcontract";
	}
}
