package com.ateam.proalba.controller.qna;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.PageMaker;
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
	public String add_qnaPOST(HttpServletRequest request,@ModelAttribute("criteria") Criteria criteria, QnAVO qnaVO) throws Exception {
		logger.info(qnaVO.toString());
		qnaService.add_qna(qnaVO);
		
		String m_code = qnaVO.getM_code();
		
		PageMaker pageMaker = new PageMaker();
		criteria.setM_code(m_code);
		logger.info(m_code);
		
	    pageMaker.setCriteria(criteria);
	    pageMaker.setTotalCount(qnaService.count_qna(m_code));
	    
	    criteria.setId(m_code);
	    
	    request.setAttribute("message", "contractPage");
	    request.setAttribute("qnas", qnaService.listCriteria(criteria));
	    request.setAttribute("pageMaker", pageMaker);
	    request.setAttribute("pageMaker", pageMaker);
		logger.info(Integer.toString(criteria.getPageStart()));
		logger.info(Integer.toString(criteria.getPerPageNum()));
		return "qna/myQna";
	}
}
