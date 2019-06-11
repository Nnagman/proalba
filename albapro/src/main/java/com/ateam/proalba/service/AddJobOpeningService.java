package com.ateam.proalba.service;

import java.util.List;

import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.NoticeVO;

public interface AddJobOpeningService {
	public void addJobOpening(NoticeVO noticeVO) throws Exception;
	public List<NoticeVO> jobOpeningManage(LoginDTO loginDTO) throws Exception;
	public void addJobOpenAttach(NoticeVO noticeVO) throws Exception;
}
