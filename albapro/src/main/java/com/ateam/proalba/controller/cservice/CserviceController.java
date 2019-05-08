package com.ateam.proalba.controller.cservice;

import java.io.File;

import javax.inject.Inject;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.NoticeVO;
import com.ateam.proalba.service.AddJobOpeningService;
import com.ateam.proalba.util.UploadFileUtils;

@Controller
public class CserviceController {
	private static final Logger logger = LoggerFactory.getLogger(CserviceController.class);
	private static final String NOTICE = "notices";
	private final AddJobOpeningService addJobOpeningService;
	
	@Inject
	public CserviceController(AddJobOpeningService addJobOpeningService) {
		this.addJobOpeningService = addJobOpeningService;
	}
	
	//PDF파일 업로드할때 쓰임
	MappingJackson2JsonView jsonView;

	@RequestMapping(value = "/cservice", method = RequestMethod.GET)
	public String cserviceGET(Model model) throws Exception {
		logger.info("Welcome CserviceController");
		model.addAttribute("message", "");
		return "cservice/cservice";
	}
	
	@RequestMapping(value ="/addjobopening", method = RequestMethod.GET)
	public String addjobopeningGET(Model model) throws Exception {
		logger.info("Welcome CserviceController");
		model.addAttribute("message", "");
		return "cservice/addjobopening";
	}
	
	@RequestMapping(value ="/addjobopening_free", method = RequestMethod.POST)
	public String addjobopeningPOST(NoticeVO noticeVO, RedirectAttributes redirectAttributes) throws Exception {
		
		logger.info(noticeVO.toString());
		
		addJobOpeningService.addJobOpening(noticeVO);
		
		redirectAttributes.addFlashAttribute("msg", "POSTED");
		return "redirect:/addjobopening_free";
	}
	
	@RequestMapping(value ="/addjobopening_free", method = RequestMethod.GET)
	public String addjobopeningfreeGET(Model model) throws Exception {
		logger.info("Welcome CserviceController");
		model.addAttribute("message", "ê³ ê°�ì„¼í„° íŽ˜ì�´ì§€ ë°©ë¬¸ì�„ í™˜ì˜�í•©ë‹ˆë‹¤");
		return "cservice/addjobopening_free";
	}

	
	@RequestMapping(value = "/jobopeningmanage", method = RequestMethod.GET)
	public String jobopeningmanageGET(HttpServletRequest request, LoginDTO loginDTO, Model model) throws Exception {
		loginDTO.setId('c'+loginDTO.getId());
		HttpSession httpSession = request.getSession();
		logger.info("Welcome CserviceController");
		httpSession.setAttribute(NOTICE,addJobOpeningService.jobOpeningManage(loginDTO));
		return "cservice/jobopeningmanage";
	} 
	
	@ResponseBody
	@RequestMapping(value="/addjob/upload", method=RequestMethod.POST, consumes="multipart/form-data", produces="text/plain;charset=utf-8")
	public ResponseEntity<String> uploadFile(MultipartFile file, ServletRequest request) throws Exception {
		logger.info("uploadAjax Cont");


		logger.info("originalName : "+file.getOriginalFilename());
		logger.info("size : "+file.getSize());
		logger.info("contentType : "+file.getContentType());
		String folderName = "comLogo";	//회사로고 폴더 이름 설정 
		
		String uploadPath = request.getServletContext().getRealPath("/resources");
		logger.info("uploadFolder : "+uploadPath);
		
		return new ResponseEntity<String>(UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes(), folderName), HttpStatus.OK);	
	} 
	
	// 게시글 작성 시 이미지 삭제(서버) 
    @ResponseBody // view가 아닌 데이터 리턴
    @RequestMapping(value = "/addjob/deleteServerFile", method = RequestMethod.POST)
    public ResponseEntity<String> deleteServerFile(String fileName, ServletRequest request) {
    	String uploadPath = request.getServletContext().getRealPath("/resources");
    	logger.info("delete File"+fileName);
        // 원본 파일 삭제
        new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();
        
        // 레코드 삭제
        //boardService.deleteFile(fileName);
        
        // 데이터와 http 상태 코드 전송
        return new ResponseEntity<String>("deleted", HttpStatus.OK);
    }	
    
    
	@RequestMapping(value = "/kakao", method = RequestMethod.GET)
	public String kakaoGET(Model model) throws Exception {
		
		return "cservice/kakao";
	}

}