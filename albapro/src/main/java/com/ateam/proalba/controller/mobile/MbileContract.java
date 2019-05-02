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
	 

	   // 테이블 형식 레이아웃 메인페이지
	   @ResponseBody
	   @RequestMapping(value = "m.tableBoardMain", method = RequestMethod.GET)
	   @CrossOrigin(origins = "*", allowedHeaders = "*")
	   public JSON tableBoardMain(Model model, HttpServletRequest request) {
	      String board_code = request.getParameter("board_code");

//	      Criteria criteria = new Criteria();
//
//	      int pagenum = Integer.parseInt(request.getParameter("pagenum"));
//	      criteria.setTotalcount(postService.postCount(board_code)); // 전체 게시글 개수를 지정
//	      criteria.setContentnum(9);
//	      criteria.setPagenum(pagenum); // 현재 페이지를 페이지 객체에 지정
//	      criteria.setStartnum(pagenum); // 컨텐츠 시작 번호 지정
//	      criteria.setEndnum(pagenum); // 컨텐츠 끈 번호 지정
//	      criteria.setCurrentblock(pagenum); // 현재 페이지 블록이 몇번인지 현재 페이지 번호 통해 지정
//	      criteria.setLastblock(criteria.getTotalcount()); // 마지막 블록 번호를 전체 게시글 수를 통해 정함
//	      criteria.prevnext(pagenum); // 현재 페이지 번호로 화살표를 나타낼지 정함
//	      criteria.setStartPage(criteria.getCurrentblock()); // 시작 페이지를 페이지 블록번호로 정함
//	      criteria.setEndPage(criteria.getLastblock(), criteria.getCurrentblock()); // 마지막 페이지를 마지막 페이지 블록과 현재 페이지 블록으로 정함
//
//	      ArrayList<PostVO> posts = mobileService.getPosts(criteria.getStartnum(), criteria.getEndnum(), board_code);
//
//	      // 불러온 포스트 중의 컨텐츠에서 첫번째 img 태그에서 썸네일을 추출
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
//	      // 저장된 포스트를 posts 에 저장
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
