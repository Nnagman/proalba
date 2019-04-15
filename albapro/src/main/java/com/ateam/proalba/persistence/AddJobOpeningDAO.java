package com.ateam.proalba.persistence;

import com.ateam.proalba.domain.NoticeVO;

public interface AddJobOpeningDAO {
	public void addJobOpening(NoticeVO noticeVO) throws Exception;
}
