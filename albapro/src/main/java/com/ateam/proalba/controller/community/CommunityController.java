package com.ateam.proalba.controller.community;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ateam.proalba.domain.PostVO;
import com.ateam.proalba.service.post.Pager;
import com.ateam.proalba.service.post.PostService;

@Controller
public class CommunityController {
	private static final Logger logger = LoggerFactory.getLogger(CommunityController.class);

	@Autowired
	PostService postService;	
	
	@RequestMapping("comm")
	public ModelAndView list(@RequestParam(defaultValue = "title") String searchOption,
			@RequestParam(defaultValue = "") String keyword, @RequestParam(defaultValue = "1") int curPage)
			throws Exception {
		int count = postService.countArticle(searchOption, keyword);	
		Pager Pager = new Pager(count, curPage);
		int start = Pager.getPageBegin();
		int end = Pager.getPageEnd();
		
		List<PostVO> list = postService.listAll(start, end, searchOption, keyword);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("community/community"); 
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list",list);
		map.put("count",count);
		map.put("searchOption", searchOption); 
		map.put("keyword", keyword); 
		map.put("boardPager", Pager);
		mav.addObject("map", map); 
		return mav; 
	}
	
	@RequestMapping(value="commview", method=RequestMethod.GET)
	public ModelAndView view(@RequestParam int p_code, @RequestParam int curPage, @RequestParam String searchOption, 
			@RequestParam String keyword, HttpSession session, ServletRequest request) throws Exception {
		postService.increaseViewcnt(p_code, session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("community/view");
		mav.addObject("attvo", postService.listAttach(p_code));
		logger.info("attvo: "+postService.listAttach(p_code));
		String uploadPath = request.getServletContext().getRealPath("/resources/upload");
		//logger.info("ViewUploadPath : "+uploadPath);
		
		mav.addObject("img", uploadPath);
		mav.addObject("vo", postService.read(p_code));
		mav.addObject("curPage", curPage);
		mav.addObject("searchOption", searchOption);
		mav.addObject("keyword", keyword);
		return mav;
	}
	
	@RequestMapping("commwrite")
	public String write() {
		return "community/write";
	}
	
	@RequestMapping("comminsert.do")
	public String insert(@ModelAttribute PostVO vo, HttpSession session) throws Exception {
		logger.info("insert Controller.....");
		String id = vo.getId();
		logger.info("id: "+id);
		String mCode = postService.getMcode(id);
		vo.setM_code(mCode);
		logger.info(vo.toString());
		postService.create(vo);
		return "redirect:/comm";
	}
	
	@RequestMapping(value = "commupdate", method=RequestMethod.POST)
	public ModelAndView update(int p_code, String[] fullname) throws Exception {
		logger.info("update P_code" + p_code);	
		ModelAndView mav = new ModelAndView();
		mav.setViewName("community/update");
		mav.addObject("attvo", postService.listAttach(p_code));
		logger.info("attvo: "+postService.listAttach(p_code));
		mav.addObject("vo", postService.read(p_code));
		return mav;
	}
	
	@RequestMapping(value = "commupdate.do", method=RequestMethod.POST)
	public String update(@ModelAttribute PostVO vo) throws Exception {
		postService.update(vo);
		return "redirect:/comm";
	}
	
	@RequestMapping("commdelete.do")
	public String delete(int p_code, String[] fullname, ServletRequest request) throws Exception {
		logger.info("delete Controller.....p_code: " + p_code + " , fullname : " + fullname);
		String uploadPath = request.getServletContext().getRealPath("/resources");

		postService.delete(p_code);
		
		if(fullname != null && !fullname.equals("")) {
		for(String path : fullname) {
			//logger.info("paths : "+uploadPath + path.replace('/', File.separatorChar));
			String filePath = uploadPath + path.replace('/', File.separatorChar);
			if(new File(filePath).exists()) {
				new File(filePath).delete();
			}else
				logger.info("x");
		}
		}
		return "redirect:/comm";
	}
	
}
