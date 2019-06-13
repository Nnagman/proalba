package com.ateam.proalba.service.recruinfo;

import java.util.List;

import com.ateam.proalba.domain.NoticeVO;

public interface RecruinfoService {
	public List<NoticeVO> get_notice_list() throws Exception;
	
	public List<NoticeVO> get_noticeDe_list(String n_code) throws Exception;
}
