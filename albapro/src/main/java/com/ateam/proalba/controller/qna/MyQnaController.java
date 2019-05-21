package com.ateam.proalba.controller.qna;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.PageMaker;
import com.ateam.proalba.domain.QnAVO;
import com.ateam.proalba.service.qna.QnAService;

@Controller
public class MyQnaController {
	private static final Logger logger = LoggerFactory.getLogger(MyQnaController.class);

	@Autowired
	QnAService qnaService;
	
	@RequestMapping(value = "/qnalist", method = RequestMethod.GET)
	public String pservice(HttpServletRequest request,@ModelAttribute("criteria") Criteria criteria, @RequestParam("m_code") String m_code) throws Exception {
		PageMaker pageMaker = new PageMaker();
		criteria.setM_code(m_code); // m_code´Ï±ñ ¾Õ¿¡ pºÙ¿©Áà¾ßÇÔ.
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
	
	@RequestMapping(value = "/adminQnalist", method = RequestMethod.GET)
	public String adminService(HttpServletRequest request,@ModelAttribute("criteria") Criteria criteria) throws Exception {
		PageMaker pageMaker = new PageMaker();
		
	    pageMaker.setCriteria(criteria);
	    pageMaker.setTotalCount(qnaService.count_all_qna());

	    request.setAttribute("qnas", qnaService.adminListCriteria(criteria));
	    request.setAttribute("pageMaker", pageMaker);
	    List<QnAVO> qna = qnaService.adminListCriteria(criteria);
	    logger.info(qna.get(0).toString());
	    request.setAttribute("pageMaker", pageMaker);
		logger.info(Integer.toString(criteria.getPageStart()));
		logger.info(Integer.toString(criteria.getPerPageNum()));
		return "qna/myQna";
	}
	
	@RequestMapping(value= "/viewQnA", method = RequestMethod.GET)
	public String viewQnA(HttpServletRequest request,@RequestParam("cs_code") String cs_code) throws Exception {
		
		request.setAttribute("viewQnA", qnaService.select_qna(cs_code));
		
		return "/qna/viewQnA";
	}
	
	@RequestMapping(value= "/responseQnA", method = RequestMethod.POST)
	public String viewQnA(String content,String cs_code) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("content", content);
		map.put("cs_code", cs_code);
		
		qnaService.response_qna(map);
		
		return "/qna/viewQnA";
	}
}

