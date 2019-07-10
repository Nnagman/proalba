package com.ateam.proalba.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.ServletRequest;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ateam.proalba.service.post.PostService;
import com.ateam.proalba.util.UploadFileUtils;

@Controller
public class UploadController {

	private static final Logger logger = LoggerFactory.getLogger(UploadController.class);
	
	@Autowired
	PostService postService;
	
	@RequestMapping(value="upload/uploadForm", method=RequestMethod.GET)
	public void uploadForm(Model model) {
	}
	
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value="upload/uploadForm", method=RequestMethod.POST) public
	 * ModelAndView uploadForm(MultipartFile file, ModelAndView mav) throws
	 * Exception { logger.info("íŒŒì�¼ì�´ë¦„: "+ file.getOriginalFilename()); String
	 * savedName = file.getOriginalFilename(); logger.info("íŒŒì�¼í�¬ê¸°: "+
	 * file.getSize()); logger.info("ì»¨í…�íŠ¸ íƒ€ìž…: "+ file.getContentType()); savedName =
	 * uploadFile(savedName, file.getBytes());
	 * mav.setViewName("upload/uploadResult"); mav.addObject("savedName",
	 * savedName); return mav; }
	 */
	
	/*
	 * private String uploadFile(String originalName, byte[] fileData) throws
	 * Exception { //uuid ìƒ�ì„± (Universal Unique IDentifier, ë²”ìš© ê³ ìœ  ì‹�ë³„ìž�) UUID uid =
	 * UUID.randomUUID(); String savedName = uid.toString() + "_" + originalName;
	 * File target = new File(uploadPath, savedName); //íŒŒì�¼ì�„ ì‹¤ì œë¡œ ì €ìž¥ //ìž„ì‹œ ë””ë ‰í† ë¦¬ì—� ì €ìž¥ë�œ
	 * ì—…ë¡œë“œ íŒŒì�¼ì�„ ì§€ì •ë�œ ë””ë ‰í† ë¦¬ë¡œ ë³µì‚¬ //FilecopyUtiles.copy(ë°”ì�´íŠ¸ë°°ì—´, íŒŒì�¼ê°�ì²´)
	 * FileCopyUtils.copy(fileData, target); return savedName; }
	 */
	
	/****************************** # ajax ë°©ì‹�ì�˜ ì—…ë¡œë“œ ì²˜ë¦¬  *********************************/
	
	// 4. Ajaxì—…ë¡œë“œ íŽ˜ì�´ì§€ ë§¤í•‘
	@RequestMapping(value="/upload/uploadAjax", method=RequestMethod.GET)
	public void uploadAjax(){
		// uploadAjax.jspë¡œ í�¬ì›Œë”©
	}

	// 5. Ajaxì—…ë¡œë“œ ì²˜ë¦¬ ë§¤í•‘
	// íŒŒì�¼ì�˜ í•œê¸€ì²˜ë¦¬ : produces="text/plain;charset=utf-8"
	@ResponseBody // viewê°€ ì•„ë‹Œ dataë¦¬í„´
	@RequestMapping(value="/upload/uploadAjax", method=RequestMethod.POST, produces="text/plain;charset=utf-8")
	public ResponseEntity<String> uploadAjax(MultipartFile file, ServletRequest request) throws Exception {
		logger.info("uploadAjax Cont");
		logger.info("originalName : "+file.getOriginalFilename());
		logger.info("size : "+file.getSize());
		logger.info("contentType : "+file.getContentType());
		
		
		String uploadPath = request.getServletContext().getRealPath("/resources");
		String folderName = "community";
		logger.info("uploadFolder : "+uploadPath);
		
		return new ResponseEntity<String>(UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes(), folderName), HttpStatus.OK);
	}
    
    // ê²Œì‹œê¸€ ìž‘ì„± ì‹œ ì�´ë¯¸ì§€ ì‚­ì œ(ì„œë²„) 
    @ResponseBody // viewê°€ ì•„ë‹Œ ë�°ì�´í„° ë¦¬í„´
    @RequestMapping(value = "/upload/deleteWriteFile", method = RequestMethod.POST)
    public ResponseEntity<String> deleteWriteFile(String fileName, ServletRequest request) throws Exception {
    	logger.info("deleteWriteFile");
    	String uploadPath = request.getServletContext().getRealPath("/resources");
    	
        // ì›�ë³¸ íŒŒì�¼ ì‚­ì œ
        new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();
        
        // ë ˆì½”ë“œ ì‚­ì œ
        postService.deleteFile(fileName);
        
        // ë�°ì�´í„°ì™€ http ìƒ�íƒœ ì½”ë“œ ì „ì†¡
        return new ResponseEntity<String>("deleted", HttpStatus.OK);
    }
    
    // ê²Œì‹œê¸€ ìž‘ì„± ì‹œ ì�´ë¯¸ì§€ ì‚­ì œ(ì„œë²„, db) 
    @ResponseBody // viewê°€ ì•„ë‹Œ ë�°ì�´í„° ë¦¬í„´
    @RequestMapping(value = "/upload/deleteUpdateFile", method = RequestMethod.POST)
    public ResponseEntity<String> deleteUpdateFile(String fileName, ServletRequest request) throws Exception {
    	logger.info("file: "+ fileName);
    	String uploadPath = request.getServletContext().getRealPath("/resources");
    	
       // ì›�ë³¸ íŒŒì�¼ ì‚­ì œ
        new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();
        
        // ë ˆì½”ë“œ ì‚­ì œ
        postService.deleteFile(fileName);
        
        // ë�°ì�´í„°ì™€ http ìƒ�íƒœ ì½”ë“œ ì „ì†¡
        return new ResponseEntity<String>("deleted", HttpStatus.OK);
    }
    
    /****************************** # ajax ë°©ì‹�ì�˜ ì—…ë¡œë“œ ì²˜ë¦¬  *********************************/

}
