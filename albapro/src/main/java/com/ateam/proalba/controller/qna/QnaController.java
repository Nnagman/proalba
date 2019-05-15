package com.ateam.proalba.controller.qna;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ateam.proalba.domain.QnAVO;
import com.ateam.proalba.service.qna.QnAService;

@Controller
public class QnaController {
	private static final Logger logger = LoggerFactory.getLogger(QnaController.class);

	@Autowired
	QnAService qnaService;
	
	@RequestMapping(value = "/onlineQnA", method = RequestMethod.GET)
	public String add_qnaGET() {
		return "qna/onlineQnA";
	}
	
	@RequestMapping(value = "/onlineQnA", method = RequestMethod.POST)
	public String add_qnaPOST(QnAVO qnaVO) throws Exception {
		logger.info(qnaVO.toString());
		qnaService.add_qna(qnaVO);
		return "qna/onlineQnA";
	}
}
