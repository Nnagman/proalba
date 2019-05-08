package com.ateam.proalba.service;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.ServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ateam.proalba.domain.WcontractVO;
import com.ateam.proalba.persistence.ContractDAO;

@Service
public class PdfFileService {
	
	private static final Logger logger = LoggerFactory.getLogger(PdfFileService.class);
	private final ContractDAO contractDAO;
	
	@Inject
	public PdfFileService(ContractDAO contractDAO) {
		this.contractDAO = contractDAO;
	}
	
	public String restore(MultipartFile multipartFile,ServletRequest request) {
		String url = null;
		
		try {
			// ���� ����
			String originFilename = multipartFile.getOriginalFilename();
			Long size = multipartFile.getSize();
			logger.info("originFilename: "+originFilename);
			// DB ������ ���� ��ο� �̸� ���ϱ�
			int idx = originFilename.indexOf("_")+1;
			String str1 = originFilename.substring(idx, originFilename.length());
			logger.info("str1: "+str1);
			// 0��°���� c_id 1��°���� p_id�� �ִ�.
			String[] id = str1.split("-");
			logger.info("id[0]: "+ id[0]);
			Map<String, String[]> map = new HashMap<>();
			map.put("id",id);
			String[] getMap = map.get("id");
			logger.info(getMap[0]);
			try {
				WcontractVO wcontractVO = contractDAO.select_contract2(map);
				if(wcontractVO.getFileName()==null) {return null;}
				originFilename = request.getServletContext().getRealPath("/resources") + wcontractVO.getFileName();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			// �������� ���� �� ���� �̸�
			
			String saveFileName = originFilename.substring(0, originFilename.length()-4)+".pdf";
			
			System.out.println("originFilename : " + originFilename);
			System.out.println("size : " + size);
			System.out.println("saveFileName : " + saveFileName);
			
			writeFile(multipartFile, saveFileName);
			url = saveFileName;
		}
		catch (IOException e) {
			// ������� RuntimeException �� ��ӹ��� ���ܰ� ó���Ǿ�� ������
			// ���ǻ� RuntimeException�� ������.
			// throw new FileUploadException();	
			throw new RuntimeException(e);
		}
		return url;
	}
	
	// ������ ������ write �ϴ� �޼���
	private boolean writeFile(MultipartFile multipartFile, String saveFileName)
								throws IOException{
		boolean result = false;

		byte[] data = multipartFile.getBytes();
		FileOutputStream fos = new FileOutputStream(saveFileName);
		fos.write(data);
		fos.close();
		
		return result;
	}
}
