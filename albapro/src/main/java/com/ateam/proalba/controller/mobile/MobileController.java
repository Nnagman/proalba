package com.ateam.proalba.controller.mobile;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ateam.proalba.controller.cservice.CserviceController;
import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.MobileWorkInfoVO;
import com.ateam.proalba.domain.MobileWorkPlaceVO;
import com.ateam.proalba.domain.PageMaker;
import com.ateam.proalba.service.MobileAttendanceService;
import com.ateam.proalba.service.MobileService;

import lombok.AllArgsConstructor;
import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@AllArgsConstructor
public class MobileController {
	private static final Logger logger = LoggerFactory.getLogger(MobileController.class);
	private MobileService mobileService;
	private MobileAttendanceService mobileAttendanceService; 


	// ���̺� ���� ���̾ƿ� ����������
	@ResponseBody
	@RequestMapping(value = "m.workinfo", method = RequestMethod.POST)
	//	   @CrossOrigin(origins = "*", allowedHeaders = "*")
	public JSON tableBoardMain(@ModelAttribute("criteria") Criteria criteria,Model model, HttpServletRequest request, @RequestBody String id) throws Exception {
		logger.info(id);
		criteria.setId("p"+id);
		PageMaker pageMaker = new PageMaker();
		//		   criteria.setM_code("p"+loginDTO.getId()); // m_code�ϱ� �տ� p�ٿ������.
		pageMaker.setCriteria(criteria);
		pageMaker.setTotalCount(mobileService.count_mobile_workplace_info("p"+id));
		System.out.println("mobileService.count_mobile_workplace_info(\"p\"+id) = "+mobileService.count_mobile_workplace_info("p"+id));
		
		model.addAttribute("message", "contractPage");
		model.addAttribute("contracts", mobileService.listCriteria(criteria));
		model.addAttribute("pageMaker", pageMaker);

		List<MobileWorkInfoVO> mobileWorkInfo;
		mobileWorkInfo = mobileService.listCriteria(criteria);
		JSONArray pJson = JSONArray.fromObject(mobileWorkInfo);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pList", pJson);
		map.put("criteria", criteria);
		JSONObject json = JSONObject.fromObject(map);
		return json;

		//		   String board_code = request.getParameter("board_code");
		//	      Criteria criteria = new Criteria();
		//
		//	      int pagenum = Integer.parseInt(request.getParameter("pagenum"));
		//	      criteria.setTotalcount(postService.postCount(board_code)); // ��ü �Խñ� ������ ����
		//	      criteria.setContentnum(9);
		//	      criteria.setPagenum(pagenum); // ���� �������� ������ ��ü�� ����
		//	      criteria.setStartnum(pagenum); // ������ ���� ��ȣ ����
		//	      criteria.setEndnum(pagenum); // ������ �� ��ȣ ����
		//	      criteria.setCurrentblock(pagenum); // ���� ������ ����� ������� ���� ������ ��ȣ ���� ����
		//	      criteria.setLastblock(criteria.getTotalcount()); // ������ ��� ��ȣ�� ��ü �Խñ� ���� ���� ����
		//	      criteria.prevnext(pagenum); // ���� ������ ��ȣ�� ȭ��ǥ�� ��Ÿ���� ����
		//	      criteria.setStartPage(criteria.getCurrentblock()); // ���� �������� ������ ��Ϲ�ȣ�� ����
		//	      criteria.setEndPage(criteria.getLastblock(), criteria.getCurrentblock()); // ������ �������� ������ ������ ��ϰ� ���� ������ ������� ����
		//
		//	      ArrayList<PostVO> posts = mobileService.getPosts(criteria.getStartnum(), criteria.getEndnum(), board_code);
		//
		//	      // �ҷ��� ����Ʈ ���� ���������� ù��° img �±׿��� ������� ����
		//	      Iterator<PostVO> it = posts.iterator();
		//	      ArrayList<ReplyVO> replys = new ArrayList<ReplyVO>();
		//	      PostVO postVO;
		//	      String content;
		//	      String thumbnail;
		//	      Element imageElement;
		//	      Document doc;
		//	      while (it.hasNext()) {
		//	         postVO = it.next();
		//	         replys = postService.getReplys(postVO.getPost_code());
		//	         postVO.setReply_count(replys.size());
		//	         content = postVO.getPost_content();
		//	         doc = Jsoup.parse(content);
		//	         imageElement = doc.select("img").first();
		//	         if (imageElement != null) {
		//	            thumbnail = imageElement.attr("src");
		//	         } else {
		//	            thumbnail = "resources/images/test2.jpg";
		//	         }
		//	         postVO.setPost_thumbnail(thumbnail);
		//	      }
		//
		//	      // ����� ����Ʈ�� posts �� ����
		//	      JSONArray pJson = JSONArray.fromObject(posts);
		//	      Map<String, Object> map = new HashMap<String, Object>();
		//	      map.put("pList", pJson);
		//	      map.put("criteria", criteria);
		//	      JSONObject json = JSONObject.fromObject(map);
		//
		//	      return json;

	}
	
	@ResponseBody
	@RequestMapping(value = "m.workManage", method = RequestMethod.POST)
	public JSON mobileWorkManageGET(String p_id) throws Exception {
		List<MobileWorkPlaceVO> mobileWorkPlaceVO;
		mobileWorkPlaceVO = mobileAttendanceService.mobileFoundWorkPlace(p_id);
		JSONArray pJson = JSONArray.fromObject(mobileWorkPlaceVO);
		return pJson;
	}
}
