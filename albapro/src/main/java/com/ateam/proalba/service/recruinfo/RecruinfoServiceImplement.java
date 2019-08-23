package com.ateam.proalba.service.recruinfo;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ateam.proalba.domain.NoticeVO;
import com.ateam.proalba.persistence.recruinfo.RecruinfoDAO;

@Service
public class RecruinfoServiceImplement implements RecruinfoService {
	
	private static final Logger logger = LoggerFactory.getLogger(RecruinfoServiceImplement.class);

	@Autowired
	RecruinfoDAO recruinfoDAO;

	@Override
	public List<NoticeVO> get_notice_list() throws Exception {
		return recruinfoDAO.get_notice_list();
	}

	
	 
	public List<NoticeVO> get_noticeDe_list(String n_code) throws Exception { 
		return recruinfoDAO.get_noticeDe_list(n_code); 
		}



	@Override
	public List<NoticeVO> get_addjobopening_free_manage_list(String id) throws Exception {
		
		return recruinfoDAO.get_addjobopening_free_manage_list(id);
	}



	@Override
	public List<NoticeVO> get_addjobopening_free_manage_delete(String delete_n_code) throws Exception {
	
		return recruinfoDAO.get_addjobopening_free_manage_delete(delete_n_code);
	}



	@Override
	public int nCount() {
		return recruinfoDAO.nCount();
	} 
}
