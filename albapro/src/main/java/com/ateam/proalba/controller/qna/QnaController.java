package com.ateam.proalba.controller.qna;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ateam.proalba.controller.pservice.PserviceController;

@Controller
public class QnaController {
	private static final Logger logger = LoggerFactory.getLogger(QnaController.class);

	@RequestMapping("/qna")
	public String pservice(Model model) {
		logger.info("Welcome qna");
		return "qna/onlineQnA";
	}
}
