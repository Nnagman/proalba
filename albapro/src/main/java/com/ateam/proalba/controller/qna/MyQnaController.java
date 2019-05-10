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
	    List<QnAVO> qna = qnaService.listCriteria(criteria);
	    logger.info(qna.get(0).toString());
	    request.setAttribute("pageMaker", pageMaker);
		logger.info(Integer.toString(criteria.getPageStart()));
		logger.info(Integer.toString(criteria.getPerPageNum()));
		return "qna/myQna";
	}
	
	@RequestMapping(value= "/viewQnA", method = RequestMethod.GET)
	public String viewQnA(HttpServletRequest request,@RequestParam("m_code") String m_code, @RequestParam("title") String title) throws Exception {
		String strs[] = {m_code, title};
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("m_code", m_code);
		map.put("title", title);
		
		request.setAttribute("viewQnA", qnaService.select_qna(map));
		
		return "/qna/viewQnA";
	}
}

