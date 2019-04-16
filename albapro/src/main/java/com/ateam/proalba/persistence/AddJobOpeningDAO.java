package com.ateam.proalba.persistence;

import java.util.List;

import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.NoticeVO;

public interface AddJobOpeningDAO {
	public void addJobOpening(NoticeVO noticeVO) throws Exception;
	public List<NoticeVO> jobOpeningManage(LoginDTO loginDTO) throws Exception;
}
