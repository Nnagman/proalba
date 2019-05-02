package com.ateam.proalba.service;

import java.util.List;

import com.ateam.proalba.domain.WorkManageVO;

public interface WorkManageService {
	List<WorkManageVO> listAll(String id) throws Exception;
}
