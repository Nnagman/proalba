package com.ateam.proalba.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ateam.proalba.domain.ResumeVO;
import com.ateam.proalba.persistence.ResumeDAO;

@Service
public class ResumeServiceImplement implements ResumeService {
	
	@Autowired
	ResumeDAO resumeDAO;

	@Override
	public void write_resume(Map<String, String> map) throws Exception {
		resumeDAO.write_resume(map);
	}

	@Override
	public List<ResumeVO> list_resume(String id) throws Exception {
		return resumeDAO.list_resume(id);
	}

	@Override
	public ResumeVO view_resume(String r_code) throws Exception {
		return resumeDAO.view_resume(r_code);
	}

	@Override
	public void delete_resume(String r_code) throws Exception {
		resumeDAO.delete_resume(r_code);
	}

	@Override
	public void update_resume(Map<String, String> map) throws Exception {
		resumeDAO.update_resume(map);
	}

	@Override
	public void apply_resume(Map<String, String> map) throws Exception {
		resumeDAO.apply_resume(map);
	}

}
