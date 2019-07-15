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
	 * Exception { logger.info("파일이름: "+ file.getOriginalFilename()); String
	 * savedName = file.getOriginalFilename(); logger.info("파일크기: "+
	 * file.getSize()); logger.info("컨텐트 타입: "+ file.getContentType()); savedName =
	 * uploadFile(savedName, file.getBytes());
	 * mav.setViewName("upload/uploadResult"); mav.addObject("savedName",
	 * savedName); return mav; }
	 */

 	/*
	 * private String uploadFile(String originalName, byte[] fileData) throws
	 * Exception { //uuid 생성 (Universal Unique IDentifier, 범용 고유 식별자) UUID uid =
	 * UUID.randomUUID(); String savedName = uid.toString() + "_" + originalName;
	 * File target = new File(uploadPath, savedName); //파일을 실제로 저장 //임시 디렉토리에 저장된
	 * 업로드 파일을 지정된 디렉토리로 복사 //FilecopyUtiles.copy(바이트배열, 파일객체)
	 * FileCopyUtils.copy(fileData, target); return savedName; }
	 */

 	/****************************** # ajax 방식의 업로드 처리  *********************************/

 	// 4. Ajax업로드 페이지 매핑
	@RequestMapping(value="/upload/uploadAjax", method=RequestMethod.GET)
	public void uploadAjax(){
		// uploadAjax.jsp로 포워딩
	}

 	// 5. Ajax업로드 처리 매핑
	// 파일의 한글처리 : produces="text/plain;charset=utf-8"
	@ResponseBody // view가 아닌 data리턴
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

     // 게시글 작성 시 이미지 삭제(서버) 
    @ResponseBody // view가 아닌 데이터 리턴
    @RequestMapping(value = "/upload/deleteWriteFile", method = RequestMethod.POST)
    public ResponseEntity<String> deleteWriteFile(String fileName, ServletRequest request) throws Exception {
    	String uploadPath = request.getServletContext().getRealPath("/resources");

         // 원본 파일 삭제
        new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();

         // 레코드 삭제
        postService.deleteFile(fileName);

         // 데이터와 http 상태 코드 전송
        return new ResponseEntity<String>("deleted", HttpStatus.OK);
    }

     // 게시글 작성 시 이미지 삭제(서버, db) 
    @ResponseBody // view가 아닌 데이터 리턴
    @RequestMapping(value = "/upload/deleteUpdateFile", method = RequestMethod.POST)
    public ResponseEntity<String> deleteUpdateFile(String fileName, ServletRequest request) throws Exception {
    	logger.info("file: "+ fileName);
    	String uploadPath = request.getServletContext().getRealPath("/resources");

        // 원본 파일 삭제
        new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();

         // 레코드 삭제
        postService.deleteFile(fileName);

         // 데이터와 http 상태 코드 전송
        return new ResponseEntity<String>("deleted", HttpStatus.OK);
    }

     /****************************** # ajax 방식의 업로드 처리  *********************************/

 }