package com.ateam.proalba.service.recruinfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ateam.proalba.domain.NoticeVO;
import com.ateam.proalba.persistence.recruinfo.RecruinfoDAO;

@Service
public class RecruinfoServiceImplement implements RecruinfoService {
	@Autowired
	RecruinfoDAO recruinfoDAO;

	@Override
	public List<NoticeVO> get_notice_list() throws Exception {
		return recruinfoDAO.get_notice_list();
	}

	
	 
	public List<NoticeVO> get_noticeDe_list(String n_code) throws Exception { 
		return recruinfoDAO.get_noticeDe_list(n_code); 
		}
	 
}