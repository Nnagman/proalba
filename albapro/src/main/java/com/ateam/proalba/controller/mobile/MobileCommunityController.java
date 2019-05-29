package com.ateam.proalba.controller.mobile;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ateam.proalba.domain.PostVO;
import com.ateam.proalba.service.post.Pager;
import com.ateam.proalba.service.post.PostService;

import lombok.AllArgsConstructor;
import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;


@Controller
@AllArgsConstructor
public class MobileCommunityController {
	private static final Logger logger = LoggerFactory.getLogger(MobileCommunityController.class);

	@Autowired
	PostService postService;
	
	@ResponseBody
	@RequestMapping(value = "m.comm", method = RequestMethod.GET)
	public JSON list(@RequestParam(defaultValue = "title") String searchOption,
			@RequestParam(defaultValue = "") String keyword, @RequestParam(defaultValue = "1") int curPage)
			throws Exception {
		System.out.println("curPage: "+curPage);
		logger.info("this is listController...");
		int count = postService.countArticle(searchOption, keyword);	
		Pager Pager = new Pager(count, curPage);
		int start = Pager.getPageBegin();
		int end = Pager.getPageEnd();
		
		List<PostVO> list = postService.listAll(start, end, searchOption, keyword);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list",list);
		map.put("count",count);
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("boardPager", Pager);
		JSONObject json = JSONObject.fromObject(map);
		return json;
	}
	
	@ResponseBody
	@RequestMapping(value="m.comm/view", method=RequestMethod.POST)
	public JSON view(@RequestBody JSONObject jsonObj,HttpSession session, HttpServletRequest request) throws Exception {
		JSONArray arrJson = jsonObj.getJSONArray("post");
		System.out.println(arrJson.getJSONObject(0));
		
		int p_code = Integer.parseInt(arrJson.getJSONObject(0).optString("p_code"));
		int curPage = 1;
		if(arrJson.getJSONObject(0).optString("curPage") != "undefined") { logger.info("이거 언디파인드에유"); }
		String searchOption = arrJson.getJSONObject(0).optString("searchOption");
		String keyword = arrJson.getJSONObject(0).optString("keyword");
		
		postService.increaseViewcnt(p_code, session);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("attvo", postService.listAttach(p_code));
		logger.info("attvo: "+postService.listAttach(p_code));
		String uploadPath = request.getServletContext().getRealPath("/resources/upload");
		
		map.put("img", uploadPath);
		map.put("vo", postService.read(p_code));
		map.put("curPage", curPage);
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		JSONObject json = JSONObject.fromObject(map);
		System.out.println(json);
		return json;
	}
	
	@ResponseBody
	@RequestMapping("m.comm/write")
	public String write() {
		return "community/write";
	}
	
	@ResponseBody
	@RequestMapping("m.comm/insert.do")
	public String insert(@ModelAttribute PostVO vo, HttpSession session) throws Exception {
		logger.info("insert Controller.....");
		String id = vo.getId();
		logger.info("id: "+id);
		String mCode = postService.getMcode(id);
		vo.setM_code(mCode);
		logger.info(vo.toString());
		postService.create(vo);
		return "redirect:/comm.html";
	}
	
	@ResponseBody
	@RequestMapping(value = "m.comm/update", method=RequestMethod.POST)
	public ModelAndView update(int p_code, String[] fullname) throws Exception {
		logger.info("update P_code" + p_code);	
		ModelAndView mav = new ModelAndView();
		mav.setViewName("community/update");
		mav.addObject("attvo", postService.listAttach(p_code));
		logger.info("attvo: "+postService.listAttach(p_code));
		mav.addObject("vo", postService.read(p_code));
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value = "m.comm/update.do", method=RequestMethod.POST)
	public String update(@ModelAttribute PostVO vo) throws Exception {
		postService.update(vo);
		return "redirect:/comm.html";
	}
	
	@ResponseBody
	@RequestMapping("m.comm/delete.do")
	public String delete(int p_code, String[] fullname, ServletRequest request) throws Exception {
		logger.info("delete Controller.....p_code: " + p_code + " , fullname : " + fullname);
		String uploadPath = request.getServletContext().getRealPath("/resources");

		postService.delete(p_code);
		
		if(fullname != null && !fullname.equals("")) {
		for(String path : fullname) {
			String filePath = uploadPath + path.replace('/', File.separatorChar);
			if(new File(filePath).exists()) {
				logger.info("삭제중");
				new File(filePath).delete();
				logger.info("삭제완료 ");
			}else
				logger.info("삭제실패");
		}
		}
		return "redirect:/comm.html";
	}
	
	@ResponseBody
	@RequestMapping(value = "/m.displayImg", method = RequestMethod.GET)
	public ResponseEntity<byte[]> displayContract(@RequestParam("name") String fileName, HttpServletRequest request) throws Exception{
		logger.info("display Contract start");
		String contractPath = request.getServletContext().getRealPath("/resources")+fileName;
		logger.info(contractPath);
		InputStream in = null;
		ResponseEntity<byte[]> entity = null;
		try {
//			String formatName = pngPath.substring(pngPath.lastIndexOf(".")+1);
			HttpHeaders headers = new HttpHeaders();
			MediaType mType = MediaType.IMAGE_PNG;
			headers.setContentType(mType);
			
			in = new FileInputStream(contractPath);
			
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.CREATED);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		}finally {
			in.close();
		}
		logger.info("success");
		return entity;
	}
}
