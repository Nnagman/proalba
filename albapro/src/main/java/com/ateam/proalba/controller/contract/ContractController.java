package com.ateam.proalba.controller.contract;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Properties;

import javax.inject.Inject;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ateam.proalba.controller.cservice.CserviceController;
import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.MemberVO;
import com.ateam.proalba.domain.PageMaker;
import com.ateam.proalba.domain.WcontractVO;
import com.ateam.proalba.service.ContractService;
import com.ateam.proalba.service.MemberService;
import com.ateam.proalba.service.PdfFileService;
import com.ateam.proalba.util.UploadFileUtils;

@Controller
public class ContractController {
	private static final Logger logger = LoggerFactory.getLogger(CserviceController.class);
	private final ContractService contractService;
	private final MemberService memberService;
	private final PdfFileService pdfFileService;
	
	@Inject
	public ContractController(ContractService contractService, MemberService memberService, PdfFileService pdfFileService) {
		this.contractService = contractService;
		this.memberService = memberService;
		this.pdfFileService = pdfFileService;
	}
	
	@RequestMapping(value = "/contract", method = RequestMethod.GET)
	public String pcontractGET(HttpServletRequest request,@ModelAttribute("criteria") Criteria criteria, LoginDTO loginDTO) throws Exception {
		PageMaker pageMaker = new PageMaker();
		criteria.setM_code("p"+loginDTO.getId()); // m_code�ϱ� �տ� p�ٿ������.
	    pageMaker.setCriteria(criteria);
	    pageMaker.setTotalCount(contractService.count_contract(loginDTO));
	    
	    String id = criteria.getId();
	    criteria.setId("p"+id);
	    
	    request.setAttribute("message", "contractPage");
	    request.setAttribute("contracts", contractService.listCriteria(criteria));
	    request.setAttribute("pageMaker", pageMaker);
		logger.info(Integer.toString(criteria.getPageStart()));
		logger.info(Integer.toString(criteria.getPerPageNum()));
		logger.info(Integer.toString(criteria.getPerPageNum()));
		criteria.setPage(20);
		
		return "servicepage/pserContract";
	}
	
	@RequestMapping(value = "/ccontract", method = RequestMethod.GET)
	public String ccontractGET(HttpServletRequest request,@ModelAttribute("criteria") Criteria criteria, LoginDTO loginDTO) throws Exception {
		PageMaker pageMaker = new PageMaker();
		criteria.setM_code(loginDTO.getId());
	    pageMaker.setCriteria(criteria);
	    pageMaker.setTotalCount(contractService.count_contract(loginDTO));
	    
	    String id = criteria.getId();
	    criteria.setId("c"+id);
	    
	    request.setAttribute("message", "contractPage");
	    request.setAttribute("contracts", contractService.listCriteria(criteria));
	    request.setAttribute("pageMaker", pageMaker);
		logger.info(Integer.toString(criteria.getPageStart()));
		logger.info(Integer.toString(criteria.getPerPageNum()));
		return "contract/ccontract";
	}
	
	@RequestMapping(value = "/cserWcontract", method = RequestMethod.GET)
	public String wcontractGET() throws Exception {
		return "cservicepage/cserWcontract";
	}

	@RequestMapping(value = "/cserWcontract", method = RequestMethod.POST)
	public String wcontractPOST(ServletRequest request, WcontractVO wcontractVO) throws Exception {
		wcontractVO.setC_id("c" + wcontractVO.getC_id());
		wcontractVO.setP_id("p" + wcontractVO.getP_id());
		contractService.add_contract(wcontractVO);
		String p_id = wcontractVO.getP_id().replace("p","");
		logger.info(wcontractVO.toString());
		MemberVO memberVO = memberService.getList(p_id);
		logger.info("getList success");
		int mail = mailSender(memberVO.getEmail(), wcontractVO.getFileName());
		String originalFilePath = request.getServletContext().getRealPath("/resources") + wcontractVO.getFileName();
		String outFilePath = request.getServletContext().getRealPath("/resources")+wcontractVO.getFileName();
		boolean fileMove = nioFileCopy(originalFilePath, outFilePath);
		if(fileMove == true) logger.info("fileMoveSuccess to" + outFilePath);
		if(mail==0) { return "cservicepage/cserWcontract"; }
		else { return "/"; }
	}
	
	@ResponseBody
	@RequestMapping(value="/wcontract/upload", method=RequestMethod.POST, consumes="multipart/form-data", produces="text/plain;charset=utf-8")
	public ResponseEntity<String> uploadContract(MultipartFile file,ServletRequest request, HttpServletRequest request2) throws Exception {
		logger.info("uploadAjax Cont");
		String folderName = "contract";	//ȸ��ΰ� ���� �̸� ���� 
		
		String uploadPath = request.getServletContext().getRealPath("/resources");
		
		HttpSession httpSession = request2.getSession();
		Object path = uploadPath+'\\'+folderName+file.getOriginalFilename();
		httpSession.setAttribute("fileName",file.getOriginalFilename());
		logger.info("realPath :" + path);
		
		return new ResponseEntity<String>(UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes(), folderName), HttpStatus.OK);
	}
	
	@RequestMapping(value = "/psercheckContract", method = RequestMethod.GET)
	public String checkContractGET(String link, HttpServletRequest request) throws Exception {
		HttpSession httpSession = request.getSession();
		String contractPath = link;
		httpSession.setAttribute("contractPath", contractPath);
		return "servicepage/psercheckContract";
	}
	
	@ResponseBody
	@RequestMapping(value = "/wcontract/checkContract", method = RequestMethod.POST, consumes="multipart/form-data", produces="text/plain;charset=utf-8")
	public String checkContractPOST(MultipartFile file,ServletRequest request) throws Exception {
		return pdfFileService.restore(file,request);
	}
	
	@RequestMapping(value = "/removeFile", method = RequestMethod.GET)
	public String removeFileGET(@RequestParam("fileName") String fileName,HttpServletRequest request) throws Exception {
		File deleteFile = new File(fileName.substring(0, fileName.length()-4)+".png");
		logger.info(fileName.substring(0, fileName.length()-4)+".png");
		
		if(deleteFile.exists()) {
			deleteFile.delete();
			logger.info("Done delete");
		}else {
			logger.info("Fail delete");
			return null;
		}
		String[] splitStr = fileName.split("resources");
		String updateFileName = splitStr[1].substring(0, splitStr[1].length()-4);
		contractService.update_contract(updateFileName);
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/displayContract", method = RequestMethod.GET)
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
	
	@RequestMapping(value = "/downloadContract", method = RequestMethod.GET)
	public void downloadContract(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        String path =  request.getServletContext().getRealPath("/resources");
        
        String filename = request.getParameter("fileName");
        String downname = request.getParameter("downName");
        String realPath = "";
        System.out.println("downname: "+downname);
        if (filename == null || "".equals(filename)) {
            filename = downname;
        }
         
        try {
            String browser = request.getHeader("User-Agent"); 
            //���� ���ڵ� 
            if (browser.contains("MSIE") || browser.contains("Trident") || browser.contains("Chrome")) {
                filename = URLEncoder.encode(filename, "UTF-8").replaceAll("\\+", "%20");
            } else {
                filename = new String(filename.getBytes("UTF-8"), "ISO-8859-1");
            }
        } catch (UnsupportedEncodingException ex) { System.out.println("UnsupportedEncodingException"); }
        realPath = path +downname;
        System.out.println(realPath);
        File file1 = new File(realPath);
        if (!file1.exists()) {
            return ;
        }
         
        // ���ϸ� ����        
        response.setContentType("application/octer-stream");
        response.setHeader("Content-Transfer-Encoding", "binary;");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");
        try {
            OutputStream os = response.getOutputStream();
            FileInputStream fis = new FileInputStream(realPath);
 
            int ncount = 0;
            byte[] bytes = new byte[512];
 
            while ((ncount = fis.read(bytes)) != -1 ) {
                os.write(bytes, 0, ncount);
            }
            fis.close();
            os.close();
        } catch (FileNotFoundException ex) {
            System.out.println("FileNotFoundException");
        } catch (IOException ex) {
            System.out.println("IOException");
        }
	}
	
	public int mailSender(String mail, String link) {
		//0�� ����
		//-1 = �̸��� �� ��
		//-2 = ���� ���� ������ ���ų� ��Ʈ�� �ȿ��� �ִ°���   
		if(mail == null) return -1;
	    
		
		// ���̹��� ��� smtp.naver.com �� �Է��մϴ�.
		// Google�� ��� smtp.gmail.com �� �Է��մϴ�.
		String host = "smtp.gmail.com";

		final String username = ""; // ���� ���̵� @gmail.com ����
		final String password = ""; // ��й�ȣ
		int port = 465; // ��Ʈ��ȣ

		// ���� ����
		String recipient = mail; // �޴� ����� �����ּҸ� �Է����ּ���.
		String subject = "��༭�� �������ּ���."; // ���� ���� �Է����ּ���.
		String Roll = "";	//������
		for (int i = 0; i < 8; i++) {
			int rndVal = (int) (Math.random() * 62);
			if (rndVal < 10) {
				Roll += rndVal;
			} else if (rndVal > 35) {
				Roll += (char) (rndVal + 61);
			} else {
				Roll += (char) (rndVal + 55);
			}
		}

		String body = "��༭��ũ : "+ link; // ���� ���� �Է����ּ���.

		Properties props = System.getProperties(); // ������ ��� ���� ��ü ����

		// SMTP ���� ���� ����
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", host);

		// Session ����
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			String un = username;
			String pw = password;

			protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
				return new javax.mail.PasswordAuthentication(un, pw);
			}
		});
		session.setDebug(true); // for debug

		Message mimeMessage = new MimeMessage(session); // MimeMessage ����
		try {
			mimeMessage.setFrom(new InternetAddress(mail));  // �߽��� ���� , ������ ����� �̸����ּҸ� �ѹ� �� �Է��մϴ�. �̶��� �̸��� Ǯ �ּҸ� �� �ۼ����ּ���.
			mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient)); // �����ڼ��� //.TO �ܿ� .CC(����)
			mimeMessage.setSubject(subject);// �������
			mimeMessage.setText(body); // �������
			Transport.send(mimeMessage); // javax.mail.Transport.send() �̿�
			// .BCC(��������) �� ����
		} catch (MessagingException e) {
			e.printStackTrace();
			return -2;
		}
		return 0; 


	}
	
	// ���� �����ϴ� �޼ҵ�
	public boolean nioFileCopy(String inFileName, String outFileName) {
		Path source = Paths.get(inFileName);
		Path target = Paths.get(outFileName);

		// ����üũ
		if (source == null) {
			throw new IllegalArgumentException("source must be specified");
		}
		if (target == null) {
			throw new IllegalArgumentException("target must be specified");
		}

		// �ҽ������� ������ �����ϴ��� üũ
		if (!Files.exists(source, new LinkOption[] {})) {
			throw new IllegalArgumentException("Source file doesn't exist: "
					+ source.toString());
		}

		
		try {
			Files.copy(source, target, StandardCopyOption.REPLACE_EXISTING); // ���Ϻ���

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

		if (Files.exists(target, new LinkOption[] {})) { // ������ ���������� ������ �Ǿ��ٸ�
			// System.out.println("File Copied");
			return true; // true ����
		} else {
			logger.info("File Copy Failed");
			return false; // ���н� false
		}
	}
}
