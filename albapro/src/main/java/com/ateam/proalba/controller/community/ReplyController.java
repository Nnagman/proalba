package com.ateam.proalba.controller.community;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ateam.proalba.domain.ReplyDTO;
import com.ateam.proalba.service.post.Pager;
import com.ateam.proalba.service.post.PostService;
import com.ateam.proalba.service.post.ReplyService;

@Controller
public class ReplyController {
	
	@Autowired
	ReplyService replyService;
	
	@Autowired
	PostService postService;
	
	private static final Logger logger = LoggerFactory.getLogger(ReplyController.class);

	@ResponseBody
	@RequestMapping("/reply/insert.do")
	public void insert(String id, ReplyDTO dto, HttpSession session) throws Exception {
		logger.info("this is replyController INSERT.DO!!");
		logger.info("id: "+id);
		String mCode = postService.getMcode(id);
		dto.setM_code(mCode);
		logger.info(dto.toString());
		replyService.create(dto);
	}
	
	@ResponseBody
	@RequestMapping("/reply/list.do")
	public ModelAndView list(int p_code, @RequestParam(defaultValue ="1") int curPage, ModelAndView mav, HttpSession session) {
		logger.info("this is replyController list.DO!!");
		int count = replyService.count(p_code);
		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		List<ReplyDTO> list = replyService.list(p_code, start, end);
		mav.setViewName("community/reply_list");
		mav.addObject("list", list);
		mav.addObject("pager", pager);
		return mav;
	}
	
	@ResponseBody
	@RequestMapping("/reply/reply_delete.do")
	public void reply_delete(String r_code, HttpSession session) {
		logger.info("this is replyController delete.DO!!");
		logger.info(r_code);
		replyService.deleteReply(r_code);
	}
}

