package com.ateam.proalba.controller.mobile;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.service.MobileService;

import lombok.AllArgsConstructor;
import net.sf.json.JSON;

@Controller
@AllArgsConstructor
public class MbileContract {
	
	   private MobileService mobileService;
	 

	   // ���̺� ���� ���̾ƿ� ����������
	   @ResponseBody
	   @RequestMapping(value = "m.tableBoardMain", method = RequestMethod.GET)
	   @CrossOrigin(origins = "*", allowedHeaders = "*")
	   public JSON tableBoardMain(Model model, HttpServletRequest request) {
	      String board_code = request.getParameter("board_code");

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
	      return null;
   }

}
