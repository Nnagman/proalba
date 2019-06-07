package com.ateam.proalba.service;

import java.util.List;

import com.ateam.proalba.domain.WorkManageVO;
import com.ateam.proalba.domain.mobile.MobileSalaryInfoVO;

public interface WorkManageService {
	List<WorkManageVO> listAll(String id) throws Exception;
	
	List<MobileSalaryInfoVO> csalary(String id) throws Exception;
}
