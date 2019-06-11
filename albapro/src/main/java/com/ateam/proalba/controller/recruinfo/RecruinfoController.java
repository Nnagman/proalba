package com.ateam.proalba.controller.recruinfo;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RecruinfoController {
	private static final Logger logger = LoggerFactory.getLogger(RecruinfoController.class);

	@RequestMapping("/recruinfo")
	public String recruinfo(Model model) {
		logger.info("Welcome recruinfoPage");
		return "recruinfo/recruinfo";
	}
	
	
	@RequestMapping("/recruinfoDetail")
	public String recruinfoDetail(Model model) {
		logger.info("Welcome recruinfoPage");
		return "recruinfo/recruinfoDetail";
	}
}
