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
	 * Exception { logger.info("�����̸�: "+ file.getOriginalFilename()); String
	 * savedName = file.getOriginalFilename(); logger.info("����ũ��: "+
	 * file.getSize()); logger.info("����Ʈ Ÿ��: "+ file.getContentType()); savedName =
	 * uploadFile(savedName, file.getBytes());
	 * mav.setViewName("upload/uploadResult"); mav.addObject("savedName",
	 * savedName); return mav; }
	 */

 	/*
	 * private String uploadFile(String originalName, byte[] fileData) throws
	 * Exception { //uuid ���� (Universal Unique IDentifier, ���� ���� �ĺ���) UUID uid =
	 * UUID.randomUUID(); String savedName = uid.toString() + "_" + originalName;
	 * File target = new File(uploadPath, savedName); //������ ������ ���� //�ӽ� ���丮�� �����
	 * ���ε� ������ ������ ���丮�� ���� //FilecopyUtiles.copy(����Ʈ�迭, ���ϰ�ü)
	 * FileCopyUtils.copy(fileData, target); return savedName; }
	 */

 	/****************************** # ajax ����� ���ε� ó��  *********************************/

 	// 4. Ajax���ε� ������ ����
	@RequestMapping(value="/upload/uploadAjax", method=RequestMethod.GET)
	public void uploadAjax(){
		// uploadAjax.jsp�� ������
	}

 	// 5. Ajax���ε� ó�� ����
	// ������ �ѱ�ó�� : produces="text/plain;charset=utf-8"
	@ResponseBody // view�� �ƴ� data����
	@RequestMapping(value="/upload/uploadAjax", method=RequestMethod.POST, produces="text/plain;charset=utf-8")
	public ResponseEntity<String> uploadAjax(MultipartFile file, ServletRequest request) throws Exception {
		logger.info("uploadAjax Cont");
		logger.info("originalName : "+file.getOriginalFilename());
		logger.info("size : "+file.getSize());
		logger.info("contentType : "+file.getContentType());


 		String uploadPath = request.getServletContext().getRealPath("/resources");
		logger.info(" ServletContext "+request.getServletContext());

		String folderName = "community";
		logger.info("uploadFolder : "+uploadPath);

 		return new ResponseEntity<String>(UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes(), folderName), HttpStatus.OK);
	}

     // �Խñ� �ۼ� �� �̹��� ����(����) 
    @ResponseBody // view�� �ƴ� ������ ����
    @RequestMapping(value = "/upload/deleteWriteFile", method = RequestMethod.POST)
    public ResponseEntity<String> deleteWriteFile(String fileName, ServletRequest request) throws Exception {
    	String uploadPath = request.getServletContext().getRealPath("/resources");

         // ���� ���� ����
        new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();

         // ���ڵ� ����
        postService.deleteFile(fileName);

         // �����Ϳ� http ���� �ڵ� ����
        return new ResponseEntity<String>("deleted", HttpStatus.OK);
    }

     // �Խñ� �ۼ� �� �̹��� ����(����, db) 
    @ResponseBody // view�� �ƴ� ������ ����
    @RequestMapping(value = "/upload/deleteUpdateFile", method = RequestMethod.POST)
    public ResponseEntity<String> deleteUpdateFile(String fileName, ServletRequest request) throws Exception {
    	logger.info("file: "+ fileName);
    	String uploadPath = request.getServletContext().getRealPath("/resources");

        // ���� ���� ����
        new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();

         // ���ڵ� ����
        postService.deleteFile(fileName);

         // �����Ϳ� http ���� �ڵ� ����
        return new ResponseEntity<String>("deleted", HttpStatus.OK);
    }

     /****************************** # ajax ����� ���ε� ó��  *********************************/

 }