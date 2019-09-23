package com.ateam.proalba.controller.cservice;

import java.io.File;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.NoticeVO;
import com.ateam.proalba.service.AddJobOpeningService;
import com.ateam.proalba.service.MemberService;
import com.ateam.proalba.service.recruinfo.RecruinfoService;
import com.ateam.proalba.util.UploadFileUtils;

@Controller
public class CserviceController {
	private static final Logger logger = LoggerFactory.getLogger(CserviceController.class);
	private static final String NOTICE = "notices";
	private final AddJobOpeningService addJobOpeningService;
	private final MemberService memberService;

	@Inject
	public CserviceController(AddJobOpeningService addJobOpeningService,MemberService memberService) {
		this.addJobOpeningService = addJobOpeningService;
		this.memberService = memberService;
	}
	
	@Autowired
	RecruinfoService recruinfoService;

	// PDF파일 업로드할때 쓰임
	MappingJackson2JsonView jsonView;

	
	  @RequestMapping(value ="/cserAddJobopening_free", method = RequestMethod.GET)
	  public String addjobopeningfreeGET(Model model) throws Exception {
	  logger.info("Welcome CserviceController"); model.addAttribute("message", "");
	  
		model.addAttribute("hourWage", memberService.gethourWage());

		return "cservicepage/cserAddJobopening_free";
	  
	 }
	 
	  @ResponseBody
	  @RequestMapping(value = "/get_addjobopening_free_manage_delete", method = RequestMethod.POST)
	  public String get_addjobopening_free_manage_delete(String delete_n_code) throws Exception {
		  recruinfoService.get_addjobopening_free_manage_delete(delete_n_code);
		  return " ";
	  }
	 

	@RequestMapping(value = "/cserAddJobopening_free", method = RequestMethod.POST)
	public String addjobopeningfreePOST(Model model, NoticeVO noticeVO) throws Exception {
		logger.info(noticeVO.toString());
		addJobOpeningService.addJobOpening(noticeVO);

		String m_code = noticeVO.getM_code();
		String id = m_code.substring(1);
		return "redirect:/cserAddJobopening_free_manage?id="+id;


	}
	
	
	/* 채용공고 관리 */
	@RequestMapping("/cserAddJobopening_free_manage")
	public ModelAndView cserAddJobopening_free_manage(String id, Model model)throws Exception {
		logger.info("Welcome recruinfoPage");
		List<NoticeVO> list=recruinfoService.get_addjobopening_free_manage_list(id);
		
		logger.info(list.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cservicepage/cserAddJobopening_free_manage");
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping("/cserAddJobopening_free_update")
	public ModelAndView cserAddJobopening_free_update(String n_code, Model model) throws Exception {
		List<NoticeVO> list=recruinfoService.get_noticeDe_list(n_code);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cservicepage/cserAddJobopening_free_update");
		mav.addObject("list", list); 
		return mav;
	}

	@ResponseBody
	@RequestMapping(value = "/addjob/upload", method = RequestMethod.POST, consumes = "multipart/form-data", produces = "text/plain;charset=utf-8")
	public ResponseEntity<String> uploadFile(MultipartFile file, ServletRequest request) throws Exception {
		logger.info("uploadAjax Cont");

		logger.info("originalName : " + file.getOriginalFilename());
		logger.info("size : " + file.getSize());
		logger.info("contentType : " + file.getContentType());
		String folderName = "comLogo"; // 회사로고 폴더 이름 설정

		String uploadPath = request.getServletContext().getRealPath("/resources");
		logger.info("uploadFolder : " + uploadPath);

		return new ResponseEntity<String>(
				UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes(), folderName),
				HttpStatus.OK);
	}

	// 게시글 작성 시 이미지 삭제(서버)
	@ResponseBody // view가 아닌 데이터 리턴
	@RequestMapping(value = "/addjob/deleteServerFile", method = RequestMethod.POST)
	public ResponseEntity<String> deleteServerFile(String fileName, ServletRequest request) {
		String uploadPath = request.getServletContext().getRealPath("/resources");
		logger.info("delete File" + fileName);
		// 원본 파일 삭제
		new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();

		// 레코드 삭제
		// boardService.deleteFile(fileName);

		// 데이터와 http 상태 코드 전송
		return new ResponseEntity<String>("deleted", HttpStatus.OK);
	}

}
