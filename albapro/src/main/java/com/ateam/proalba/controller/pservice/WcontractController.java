package com.ateam.proalba.controller.pservice;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WcontractController {
	private static final Logger logger = LoggerFactory.getLogger(WcontractController.class);

	@RequestMapping(value = "/wcontract.do", method = RequestMethod.POST)
	public String wcontractGET(Model model) throws Exception {
		logger.info("Welcome wcontractPage");
		model.addAttribute("message", "wcontractPage �럹�씠吏� 諛⑸Ц�쓣 �솚�쁺�빀�땲�떎");
		return "pservice/wcontract";
	}
}
